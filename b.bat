@echo off
title Calendar
color 4

:loop
echo                                                                              ��������������
echo                                                                              �  %date% �
echo                                                                              ��������������

for /l %%I in (1,1,2) do ping -n 01 127.0.0.1 > nul

cls
goto loop