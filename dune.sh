cd src
dune clean
dune build
clear

BLUE='\033[0;34m'  
NC='\033[0m'   

for file in ../tests/*
do
    echo "Fichier ${BLUE}\"${file}\"${NC}:"
    ./_build/default/main.exe $file
    echo
done