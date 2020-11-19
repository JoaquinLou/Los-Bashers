#!bin/bash
echo "¿A qué equipo quieres hackear?"
read team_name

mkdir ref_repo

declare -A repos

repos[CAMPECHANO]='https://github.com/rgomezh/campechano.git'
repos[GOODSHELLERS]='https:github.com/ruizber23/goodshellers.git'
repos[FANTÁSTICOS]='https://github.com/hxn241/Fantasticos.git'
repos[EQUIPO_CONFINADOS]='https://github.com/danielgarciasanchez/Equipo_confinados'
repos[TEAM5]='https://github.com/rbarlaam/Team5'

echo ${repos[team_name]}
