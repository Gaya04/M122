#!/bin/bash
#Überprüft existenz der files
if [[ -f "$1" && -f "$2" ]]; then
  #Anzahl Zeilen des files.
  file1Rows=$(("$(wc -l < "$1")"+1))
  echo "$file1Rows"

  i=1
  differentRows=0
  #Solange nicht über Anzahl der Zeilen
  while [[ "$i" -le "$file1Rows" ]]; do

    #Aktuelle Zeile im ersten file
    rowFile1=$(sed -n ${i}p "$1")
    #Aktuelle Zeile im zweiten file
    rowFile2=$(sed -n ${i}p "$2")

    echo "$i: $rowFile1"
    echo "$i: $rowFile2"

    #Vergleich der Zeilen
    if [ "$rowFile1" != "$rowFile2" ];
    then
       differentRows=$((differentRows+1))
       echo "Nicht gleich"
       printf '\n'
    fi
    i=$((i+1))
    echo "$i"
  done
  echo "$differentRows Zeilen sind nicht gleich"
fi
