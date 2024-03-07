OPTION DOTNAME

option casemap:none

include \masm64\include\temphls.inc
include \masm64\include\win64.inc
include \masm64\include\kernel32.inc
include \masm64\include\user32.inc

includelib \masm64\lib\kernel32.lib
includelib \masm64\lib\user32.lib

OPTION PROLOGUE:rbpFramePrologue
OPTION EPILOGUE:none

.data
my_title_of_message db "Laboratorna #1", 0
my_personal_data db "ПІБ: Рабійчук Дар'я Олександрівна", 13, 10
                 db "Дата народження: 09.12.2004", 13, 10
                 db "Номер залікової книжки: 8915", 13, 10, 0

.code
WinMain proc 
    sub rsp, 28h
    invoke MessageBox, 0, ADDR my_personal_data, ADDR my_title_of_message, MB_OK
    invoke ExitProcess, 0

WinMain endp
end
