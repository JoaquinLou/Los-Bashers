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

$(diff 001.out ./ref_repo/001.out > ./$folder2/dif_001.txt)
if [ $? -eq 0 ]
      then 
          echo "Los archivos 001 son iguales!"
      else
          echo "Los archivos 001 son diferentes!"
      fi
$(diff 002.out ./ref_repo/002.out > ./$folder2/dif_002.txt)
if [ $? -eq 0 ]
      then 
          echo "Los archivos 002 son iguales!"
      else
          echo "Los archivos 002 son diferentes!"
      fi
$(diff 003.out ./ref_repo/003.out > ./$folder2/dif_003.txt)
if [ $? -eq 0 ]
      then 
          echo "Los archivos 003 son iguales!"
      else
          echo "Los archivos 003 son diferentes!"
      fi
$(diff 004.out ./ref_repo/004.out > ./$folder2/dif_004.txt)
if [ $? -eq 0 ]
      then 
          echo "Los archivos 004 son iguales!"
      else
          echo "Los archivos 004 son diferentes!"
      fi
$(diff 005.out ./ref_repo/005.out > ./$folder2/dif_005.txt)
if [ $? -eq 0 ]
      then 
          echo "Los archivos 005 son iguales!"
      else
          echo "Los archivos 005 son diferentes!"
      fi
$(diff 006.out ./ref_repo/006.out > ./$folder2/dif_006.txt)
if [ $? -eq 0 ]
      then 
          echo "Los archivos 006 son iguales!"
      else
          echo "Los archivos 006 son diferentes!"
      fi

rm -r -f $folder
rm -r -f $folder2


