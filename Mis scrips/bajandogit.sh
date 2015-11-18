#! /bin/bash
cd /home/git
git config --global user.name "SEGULL"
git config --global user.email "alejandro.canahuire.hilari.github.com"
git init
git add .
git commit -m "subiendo iterativo"
git remote add origin git@github.com:SEGULL/practica.git
git pull -u origin master
