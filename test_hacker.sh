#!/bin/bash
echo "¿A qué equipo quieres hackear?"
read team_name

rm -r ref_repo

mkdir ref_repo

declare -A repos

repos["campechano"]='https://github.com/rgomezh/campechano.git'
repos["goodshellers"]='https:github.com/ruizber23/goodshellers.git'
repos["fantasticos"]='https://github.com/hxn241/Fantasticos.git'
repos["equipo_confinados"]='https://github.com/danielgarciasanchez/Equipo_confinados'
repos["team5"]='https://github.com/rbarlaam/Team5'

echo "Hackeando..... su repositorio es " ${repos[$team_name]}

git clone ${repos[$team_name]} ./ref_repo


