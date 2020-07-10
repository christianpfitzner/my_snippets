#!/bin/bash


echo "-------------------------------------------------------"
echo " Setting up the vs code snippets"
echo "-------------------------------------------------------"

vs_code_snippets_dir="$HOME/.config/Code/User/snippets/"

echo " Directory for the snippets is ${vs_code_snippets_dir}" 

target="${vs_code_snippets_dir}latex.json"

cp latex.json ${target} 
echo " Coppied ${target}" 




echo "-------------------------------------------------------"
echo " Setting up the vs code snippets"
echo "-------------------------------------------------------"