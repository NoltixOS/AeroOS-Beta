@echo off
title Clock
color 

:loop
color A
:loop
echo                                                                              ��������������
echo                                                                              � %time% �
echo                                                                              ��������������

for /l %%I in (1,1,2) do ping -n 01 127.0.0.1 > nul

cls
goto loop