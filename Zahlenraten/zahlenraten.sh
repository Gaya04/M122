#!/bin/bash
# Programm: zahlenraten.sh
# Aufruf: . zahlenraten.sh
# Demoprogramm für das Erstellen von Shell-Skripten
# Autor: Seiya Brüllhardt
# Version: 1.1
# Datum: 09.11.2021

randomNumber=$((1 + $RANDOM % 10))
tries=3

echo "Die gesuchte Zahl liegt zwischen 1 und 10."
echo ""
until [[ $randomNumber -eq $input ]]; do
  if [[ $tries -gt 0 ]]; then
    echo "Anzahl Versuche: $tries"
    read input
      if [[ $randomNumber -eq $input ]]; then
          echo "Zahl wurde erraten"
       elif [[ $input -gt $randomNumber ]]; then
         ((tries=tries-1))
         echo "Zahl kleiner als $input"
       else
         ((tries=tries-1))
         echo "Zahl grösser als $input"
       fi
  else
    echo "Zahl wurde nicht erraten"
    return
  fi
done
