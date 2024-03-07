.386
.model flat, stdcall
option casemap :none

include \masm32\include\windows.inc
include \masm32\include\user32.inc
include \masm32\include\kernel32.inc

includelib \masm32\lib\user32.lib
includelib \masm32\lib\kernel32.lib

.data
my_title_of_message db "Laboratorna #1", 0
my_personal_data db "ПІБ: Рабійчук Дар'я Олександрівна", 13, 10
                 db "Дата народження: 09.12.2004", 13, 10
                 db "Номер залікової книжки: 8915", 13, 10

.code
start:
      invoke MessageBox, NULL, addr my_personal_data, addr my_title_of_message, MB_OK
      invoke ExitProcess, 0
end start 
    