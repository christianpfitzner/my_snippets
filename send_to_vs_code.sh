#!/bin/bash


echo "-------------------------------------------------------"
echo " Setting up the vs code snippets"
echo "-------------------------------------------------------"

vs_code_snippets_dir="$HOME/.config/Code/User/snippets/"

vs_code_snippets_dir=`dialog --inputbox "VS Code snippet Directory" 0 0 "${vs_code_snippets_dir}" \
  3>&1 1>&2 2>&3`
# Dialog-Bildschirm löschen
dialog --clear
# Bildschirm löschen
clear

echo " Directory for the snippets is ${vs_code_snippets_dir}" 

target="${vs_code_snippets_dir}latex.json"

cp latex.json ${target} 
echo " Coppied ${target}" 




echo "-------------------------------------------------------"
echo " Setting up the vs code snippets"
echo "-------------------------------------------------------"