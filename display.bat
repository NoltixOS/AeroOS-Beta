@echo off
batbox /g %x% %y% /c 0x9f /d "File name:" /c 0x07
set /a xs=%y%+1
batbox /g %x% %xs% /c 0x9c /d "%1" /c 0x07