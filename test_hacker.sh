#!/bin/bash
echo "¿A qué equipo quieres hackear?"
read team_name

rm -r -f ref_repo

folder="ref_repo"
mkdir $folder


declare -A repos

repos["campechano"]='https://github.com/rgomezh/campechano.git'
repos["goodshellers"]='https:github.com/ruizber23/goodshellers.git'
repos["fantasticos"]='https://github.com/hxn241/Fantasticos.git'
repos["equipo_confinados"]='https://github.com/danielgarciasanchez/Equipo_confinados'
repos["team5"]='https://github.com/rbarlaam/Team5'

echo "Hackeando..... su repositorio es " ${repos[$team_name]}

git clone ${repos[$team_name]} ./ref_repo

folder2="diff"
mkdir $folder2

for i in 001 002 003 004 005 006
do
$(diff $i.out ./ref_repo/$i.out > ./$folder2/dif_$i.txt)
if [ $? -eq 0 ]
      then 
          echo "Los archivos $i son iguales!"
      else
          echo "Los archivos $i son diferentes!"
      fi
done

rm -r -f $folder
rm -r -f $folder2


