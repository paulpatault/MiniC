cd src
make clean
make opt
clear

BLUE='\033[0;34m'
NC='\033[0m'

for file in ../tests/*
do
    echo "Fichier ${BLUE}\"${file}\"${NC}:"
    ./main.opt $file
    echo
done

