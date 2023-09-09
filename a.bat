@echo off
title Clock
color 

:loop
color A
:loop
echo                                                                              лллллллллллллл
echo                                                                              л %time% л
echo                                                                              лллллллллллллл

for /l %%I in (1,1,2) do ping -n 01 127.0.0.1 > nul

cls
goto loop