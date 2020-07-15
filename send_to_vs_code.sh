#!/bin/bash
#
# Script Name: send_to_vs_code.sh
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


vs_code_snippets_dir="$HOME/.config/Code/User/snippets/"
vs_code_snippets_dir=`dialog --inputbox "VS Code snippet Directory" 0 0 "${vs_code_snippets_dir}" \
  3>&1 1>&2 2>&3`
dialog --clear
clear

echo " Directory for the snippets is ${vs_code_snippets_dir}" 

target_latex="${vs_code_snippets_dir}latex.json"
target_shell="${vs_code_snippets_dir}shellscript.json"
target_cpp="${vs_code_snippets_dir}cpp.json"
target_octave="${vs_code_snippets_dir}octave.json"



# copying the latex file
cp latex.json ${target_latex} 
echo " Coppied ${target_latex}" 

# copying the shell script file
cp shellscript.json ${target_shell} 
echo " Coppied ${target_shell}" 

# copying the shell script file
cp cpp.json ${target_cpp} 
echo " Coppied ${target_cpp}" 

# copying the shell script file
cp octave.json ${target_octave} 
echo " Coppied ${target_octave}" 

echo "-------------------------------------------------------"
echo " Setting up the vs code snippets"
echo "-------------------------------------------------------"