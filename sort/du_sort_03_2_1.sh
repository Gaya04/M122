#!/bin/bash
# Programm: du_sort_03_2_1.sh
# Aufruf: . du_sort_03_2_1.sh
# Demoprogramm für das Erstellen von Shell-Skripten
# Autor: Seiya Brüllhardt
# Version: 1.1
# Datum: 09.10.2021

echo "du sort a)"
echo "-----------------------------------"
echo ""
du -sh -- * | sort -h
echo ""
echo "-----------------------------------"
echo ""

echo "du sort b)"
echo "-----------------------------------"
echo ""
du -a | sort $1
speicherplatz=$(du -ch | grep total | cut -f -1)
echo "$speicherplatz"
echo ""
echo "-----------------------------------"
