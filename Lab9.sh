#!/bin/bash

# №9 Записать в текстовый файл строку из файла /var/log/syslog, содержащую общее
# имя OC (команда uname) и 3 строки вокруг неё

# Путь к файлу syslog
syslog_file="/var/log/syslog"

# Находим строку с общем именем OC (результат команды uname)
search_string=$(uname)

# Ищем три строки вокруг строки с общем именем OC
context=$(grep -C 3 "$search_string" "$syslog_file")

# Записываем результаты в текстовый файл
echo "$context" > result.txt

