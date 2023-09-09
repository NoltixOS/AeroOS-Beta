import pygame
from pygame.locals import *
import time
import math
import random
import requests
import io
from urllib.request import urlopen

pygame.init()


# create the game window
game_width = 500
game_height = 500
size = (game_width, game_height)
game = pygame.display.set_mode(size)
pygame.display.set_caption('Python - Pokémon XO server')

# define colors
black = (0, 0, 0)
gold = (218, 165, 32)
grey = (200, 200, 200)
green = (0, 200, 0)
red = (200, 0, 0)
white = (255, 255, 255)

# base url of the API
base_url = 'https://pokeapi.co/api/v2'

class Move():
    
    def __init__(self, url):
        
        # call the moves API endpoint
        req = requests.get(url)
        self.json = req.json()
        
        self.name = self.json['name']
        self.power = self.json['power']
        self.type = self.json['type']['name']

class Pokemon(pygame.sprite.Sprite):
    
    def __init__(self, name, level, x, y):
        
        pygame.sprite.Sprite.__init__(self)
        
        # call the pokemon API endpoint
        req = requests.get(f'{base_url}/pokemon/{name.lower()}')
        self.json = req.json()
        
        # set the pokemon's name and level
        self.name = name
        self.level = level
        
        # set the sprite position on the screen
        self.x = x
        self.y = y
        
        # number of potions left
        self.num_potions = 3
        
        # get the pokemon's stats from the API
        stats = self.json['stats']
        for stat in stats:
            if stat['stat']['name'] == 'hp':
                self.current_hp = stat['base_stat'] + self.level
                self.max_hp = stat['base_stat'] + self.level
            elif stat['stat']['name'] == 'attack':
                self.attack = stat['base_stat']
            elif stat['stat']['name'] == 'defense':
                self.defense = stat['base_stat']
            elif stat['stat']['name'] == 'speed':
                self.speed = stat['base_stat']
                
        # set the pokemon's types
        self.types = []
        for i in range(len(self.json['types'])):
            type = self.json['types'][i]
            self.types.append(type['type']['name'])
            
        # set the sprite's width
        self.size = 150
        
        # set the sprite to the front facing sprite
        self.set_sprite('front_default')
    
    def perform_attack(self, other, move):
        
        display_message(f'{self.name}, {move.name}!')
        
        # pause for 2 seconds
        time.sleep(2)
        
        # calculate the damage
        damage = (2 * self.level + 10) / 250 * self.attack / other.defense * move.power
        
        # same type attack bonus (STAB)
        if move.type in self.types:
            damage *= 1.5
            
        # critical hit (6.25% chance)
        random_num = random.randint(1, 10000)
        if random_num <= 625:
            damage *= 1.5
            
        # round down the damage
        damage = math.floor(damage)
        
        other.take_damage(damage)
        
    def take_damage(self, damage):
        
        self.current_hp -= damage
        
        # hp should not go below 0
        if self.current_hp < 0:
            self.current_hp = 0
    
    def use_potion(self):
        
        # check if there are potions left
        if self.num_potions > 0:
            
            # add 30 hp (but don't go over the max hp)
            self.current_hp += 30
            if self.current_hp > self.max_hp:
                self.current_hp = self.max_hp
                
            # decrease the number of potions left
            self.num_potions -= 1
        
    def set_sprite(self, side):
        
        # set the pokemon's sprite
        image = self.json['sprites'][side]
        image_stream = urlopen(image).read()
        image_file = io.BytesIO(image_stream)
        self.image = pygame.image.load(image_file).convert_alpha()
        
        # scale the image
        scale = self.size / self.image.get_width()
        new_width = self.image.get_width() * scale
        new_height = self.image.get_height() * scale
        self.image = pygame.transform.scale(self.image, (new_width, new_height))
        
    def set_moves(self):
        
        self.moves = []
        
        # go through all moves from the api
        for i in range(len(self.json['moves'])):
            
            # get the move from different game versions
            versions = self.json['moves'][i]['version_group_details']
            for j in range(len(versions)):
                
                version = versions[j]
                
                # only get moves from red-blue version
                if version['version_group']['name'] != 'red-blue':
                    continue
                    
                # only get moves that can be learned from leveling up (ie. exclude TM moves)
                learn_method = version['move_learn_method']['name']
                if learn_method != 'level-up':
                    continue
                    
                # add move if pokemon level is high enough
                level_learned = version['level_learned_at']
                if self.level >= level_learned:
                    move = Move(self.json['moves'][i]['move']['url'])
                    
                    # only include attack moves
                    if move.power is not None:
                        self.moves.append(move)
                        
        # select up to 4 random moves
        if len(self.moves) > 4:
            self.moves = random.sample(self.moves, 4)
        
    def draw(self, alpha=255):
        
        sprite = self.image.copy()
        transparency = (255, 255, 255, alpha)
        sprite.fill(transparency, None, pygame.BLEND_RGBA_MULT)
        game.blit(sprite, (self.x, self.y))
        
    def draw_hp(self):
        
        # display the health bar
        bar_scale = 200 // self.max_hp
        for i in range(self.max_hp):
            bar = (self.hp_x + bar_scale * i, self.hp_y, bar_scale, 20)
            pygame.draw.rect(game, red, bar)
            
        for i in range(self.current_hp):
            bar = (self.hp_x + bar_scale * i, self.hp_y, bar_scale, 20)
            pygame.draw.rect(game, green, bar)
            
        # display "HP" text
        font = pygame.font.Font(pygame.font.get_default_font(), 16)
        text = font.render(f'HP: {self.current_hp} / {self.max_hp}', True, black)
        text_rect = text.get_rect()
        text_rect.x = self.hp_x
        text_rect.y = self.hp_y + 30
        game.blit(text, text_rect)
        
    def get_rect(self):
        
        return Rect(self.x, self.y, self.image.get_width(), self.image.get_height())

def display_message(message):
    
    # draw a white box with black border
    pygame.draw.rect(game, white, (10, 350, 480, 140))
    pygame.draw.rect(game, black, (10, 350, 480, 140), 3)
    
    # display the message
    font = pygame.font.Font(pygame.font.get_default_font(), 20)
    text = font.render(message, True, black)
    text_rect = text.get_rect()
    text_rect.x = 30
    text_rect.y = 410
    game.blit(text, text_rect)
    
    pygame.display.update()
    
def create_button(width, height, left, top, text_cx, text_cy, label):
    
    # position of the mouse cursor
    mouse_cursor = pygame.mouse.get_pos()
    
    button = Rect(left, top, width, height)
    
    # highlight the button if mouse is pointing to it
    if button.collidepoint(mouse_cursor):
        pygame.draw.rect(game, gold, button)
    else:
        pygame.draw.rect(game, white, button)
        
    # add the label to the button
    font = pygame.font.Font(pygame.font.get_default_font(), 16)
    text = font.render(f'{label}', True, black)
    text_rect = text.get_rect(center=(text_cx, text_cy))
    game.blit(text, text_rect)
    
    return button
        
# create the starter pokemons
level = 30
ekans = Pokemon('Ekans', level, 833, 121)
pikachu = Pokemon('Pikachu', level, 175, 150)
pokemons = [ekans, pikachu]

# the YOU's and JESSIE's selected pokemon
YOU_pokemon = None
JESSIE_pokemon = None

# game loop
game_status = 'select pokemon'
while game_status != 'quit':
    
    for event in pygame.event.get():
        if event.type == QUIT:
            game_status = 'quit'
            
        # detect keypress
        if event.type == KEYDOWN:
            
            # play again
            if event.key == K_y:
                # reset the pokemons
                ekans = Pokemon('Ekans', level, 833, 150)
                pikachu = Pokemon('Pikachu', level, 175, 150)
                pokemons = [ekans, pikachu]
                game_status = 'select pokemon'
                
            # quit
            elif event.key == K_n:
                game_status = 'quit'
            
        # detect mouse click
        if event.type == MOUSEBUTTONDOWN:
            
            # coordinates of the mouse click
            mouse_click = event.pos
            
            # for selecting a pokemon
            if game_status == 'select pokemon':
                
                # check which pokemon was clicked on
                for i in range(len(pokemons)):
                    
                    if pokemons[i].get_rect().collidepoint(mouse_click):
                        
                        # assign the YOU's and JESSIE's pokemon
                        YOU_pokemon = pokemons[i]
                        JESSIE_pokemon = pokemons[(i + 1) % len(pokemons)]
                        
                        # lower the JESSIE pokemon's level to make the battle easier
                        JESSIE_pokemon.level = int(JESSIE_pokemon.level * .75)
                        
                        # set the coordinates of the hp bars
                        YOU_pokemon.hp_x = 275
                        YOU_pokemon.hp_y = 250
                        JESSIE_pokemon.hp_x = 50
                        JESSIE_pokemon.hp_y = 50
                        
                        game_status = 'prebattle'
            
            # for selecting fight or use potion
            elif game_status == 'YOU turn':
                
                # check if fight button was clicked
                if fight_button.collidepoint(mouse_click):
                    game_status = 'YOU move'
                    
                # check if potion button was clicked
                if potion_button.collidepoint(mouse_click):
                    
                    # force to attack if there are no more potions
                    if YOU_pokemon.num_potions == 0:
                        display_message('No more potions left')
                        time.sleep(1)
                        game_status = 'YOU move'
                    else:
                        YOU_pokemon.use_potion()
                        display_message(f'YOU used potion for {YOU_pokemon.name}')
                        time.sleep(2)
                        game_status = 'JESSIE turn'
                        
            # for selecting a move
            elif game_status == 'YOU move':
                
                # check which move button was clicked
                for i in range(len(move_buttons)):
                    button = move_buttons[i]
                    
                    if button.collidepoint(mouse_click):
                        move = YOU_pokemon.moves[i]
                        YOU_pokemon.perform_attack(JESSIE_pokemon, move)
                        
                        # check if the pisoi's pokemon fainted
                        if JESSIE_pokemon.current_hp == 0:
                            game_status = 'fainted'
                        else:
                            game_status = 'JESSIE turn'
            
    # pokemon select screen
    if game_status == 'select pokemon':
        
        game.fill(white)
        
        # draw the starter pokemons
        ekans.draw()
        pikachu.draw()
        
        # draw box around pokemon the mouse is pointing to
        mouse_cursor = pygame.mouse.get_pos()
        for pokemon in pokemons:
            
            if pokemon.get_rect().collidepoint(mouse_cursor):
                pygame.draw.rect(game, black, pokemon.get_rect(), 2)
        
        pygame.display.update()
        
    # get moves from the API and reposition the pokemons
    if game_status == 'prebattle':
        
        # draw the selected pokemon
        game.fill(white)
        YOU_pokemon.draw()
        pygame.display.update()
        
        YOU_pokemon.set_moves()
        JESSIE_pokemon.set_moves()
        
        # reposition the pokemons
        YOU_pokemon.x = -50
        YOU_pokemon.y = 100
        JESSIE_pokemon.x = 250
        JESSIE_pokemon.y = -50
        
        # resize the sprites
        YOU_pokemon.size = 300
        JESSIE_pokemon.size = 300
        YOU_pokemon.set_sprite('back_default')
        JESSIE_pokemon.set_sprite('front_default')
        
        game_status = 'start battle'
        
    # start battle animation
    if game_status == 'start battle':
        
        # JESSIE sends out their pokemon
        alpha = 0
        while alpha < 255:
            
            game.fill(white)
            JESSIE_pokemon.draw(alpha)
            display_message(f'JESSIE: {JESSIE_pokemon.name}, i choose you!')
            alpha += .4
            
            pygame.display.update()
            
        # pause for 1 second
        time.sleep(1)
        
        # YOU sends out their pokemon
        alpha = 0
        while alpha < 255:
            
            game.fill(white)
            JESSIE_pokemon.draw()
            YOU_pokemon.draw(alpha)
            display_message(f'YOU: {YOU_pokemon.name}, i choose you!')
            alpha += .4
            
            pygame.display.update()
        
        # draw the hp bars
        YOU_pokemon.draw_hp()
        JESSIE_pokemon.draw_hp()
        
        # determine who goes first
        if JESSIE_pokemon.speed > YOU_pokemon.speed:
            game_status = 'JESSIE turn'
        else:
            game_status = 'YOU turn'
            
        pygame.display.update()
        
        # pause for 1 second
        time.sleep(1)
        
    # display the fight and use potion buttons
    if game_status == 'YOU turn':
        
        game.fill(white)
        YOU_pokemon.draw()
        JESSIE_pokemon.draw()
        YOU_pokemon.draw_hp()
        JESSIE_pokemon.draw_hp()
        
        # create the fight and use potion buttons
        fight_button = create_button(240, 140, 10, 350, 130, 412, 'Fight')
        potion_button = create_button(240, 140, 250, 350, 370, 412, f'Use Potion ({YOU_pokemon.num_potions})')

        # draw the black border
        pygame.draw.rect(game, black, (10, 350, 480, 140), 3)
        
        pygame.display.update()
        
    # display the move buttons
    if game_status == 'YOU move':
        
        game.fill(white)
        YOU_pokemon.draw()
        JESSIE_pokemon.draw()
        YOU_pokemon.draw_hp()
        JESSIE_pokemon.draw_hp()
        
        # create a button for each move
        move_buttons = []
        for i in range(len(YOU_pokemon.moves)):
            move = YOU_pokemon.moves[i]
            button_width = 240
            button_height = 70
            left = 10 + i % 2 * button_width
            top = 350 + i // 2 * button_height
            text_center_x = left + 120
            text_center_y = top + 35
            button = create_button(button_width, button_height, left, top, text_center_x, text_center_y, move.name.capitalize())
            move_buttons.append(button)
            
        # draw the black border
        pygame.draw.rect(game, black, (10, 350, 480, 140), 3)
        
        pygame.display.update()
        
    # JESSIE selects a random move to attack with
    if game_status == 'JESSIE turn':
        
        game.fill(white)
        YOU_pokemon.draw()
        JESSIE_pokemon.draw()
        YOU_pokemon.draw_hp()
        JESSIE_pokemon.draw_hp()
        
        # empty the display box and pause for 2 seconds before attacking
        display_message('')
        time.sleep(2)
        
        # select a random move
        move = random.choice(JESSIE_pokemon.moves)
        JESSIE_pokemon.perform_attack(YOU_pokemon, move)
        
        # check if the YOU's pokemon fainted
        if YOU_pokemon.current_hp == 0:
            game_status = 'fainted'
        else:
            game_status = 'YOU turn'
            
        pygame.display.update()
        
    # one of the pokemons fainted
    if game_status == 'fainted':
        
        alpha = 255
        while alpha > 0:
            
            game.fill(white)
            YOU_pokemon.draw_hp()
            JESSIE_pokemon.draw_hp()
            
            # determine which pokemon fainted
            if JESSIE_pokemon.current_hp == 0:
                YOU_pokemon.draw()
                JESSIE_pokemon.draw(alpha)
                display_message(f'JESSIE has lost the battle!')
            else:
                YOU_pokemon.draw(alpha)
                JESSIE_pokemon.draw()
                display_message(f'YOU has lost the battle!')
            alpha -= .4
            
            pygame.display.update()
            
        game_status = 'gameover'
        
    # gameover screen
    if game_status == 'gameover':
        
        display_message('Play again (Y/N)?')
        
pygame.quit()