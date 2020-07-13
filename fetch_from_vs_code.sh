#!/bin/bash
#
# Script Name: fetch_from_vs_code.sh
#
# Author: Prof. Dr. Christian Pfitzner
# Date : 2020-07-10
#
# Description: This is a script to move all snippets from the repo 
#              to vs code. 
# *****************************************************************



echo "-------------------------------------------------------"
echo " Setting up the vs code snippets"
echo "-------------------------------------------------------"

# getting the default folder form vs code snippets
vs_code_snippets_dir="$HOME/.config/Code/User/snippets/"
vs_code_snippets_dir=`dialog --inputbox "VS Code snippet Directory" 0 0 "${vs_code_snippets_dir}" \
  3>&1 1>&2 2>&3`
dialog --clear
clear

echo " Directory for the snippets is ${vs_code_snippets_dir}" 

target_latex="${vs_code_snippets_dir}latex.json"
target_shell="${vs_code_snippets_dir}shellscript.json"
target_shell="${vs_code_snippets_dir}cpp.json"


# copying the latex file
cp ${target_latex} latex.json
echo " Coppied ${target_latex}" 

# copying the shell script file
cp ${target_shell} shellscript.json 
echo " Coppied ${target_shell}" 

# copying the shell script file
cp ${target_shell} cpp.json 
echo " Coppied ${target_cpp}" 


# fetch the current installed extension
code --list-extensions > extensions.list


echo "-------------------------------------------------------"
echo " Copied vs code snippets to repo. "
echo "-------------------------------------------------------"