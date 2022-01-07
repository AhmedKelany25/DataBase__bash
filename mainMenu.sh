#!/bin/bash
# A simple databases management system using Bash Shell scripting by @IslamWahid & @Sherifabdulmawla
mkdir DBMS 2>> ./.error.log
clear
echo "Welcome To DBMS"

function mainMenu {
  echo -e "\n+---------Main Menu-------------+"
  echo "| 1. Select DB                  |"
  echo "| 2. Create DB                  |"
  echo "| 3. Rename DB                  |"
  echo "| 4. Drop DB                    |"
  echo "| 5. Show DBs                   |"
  echo "| 6. Exit                       |"
  echo "+-------------------------------+"
  echo -e "Enter Choice: \c"
  read ch
  case $ch in
    1)  source /home/akelany/Database_project/select_db.sh ;;
    2)  source /home/akelany/Database_project/create_db.sh ;;
    3)  source /home/akelany/Database_project/rename_db.sh ;;
    4)  source /home/akelany/Database_project/drop_db.sh ;;
    5)  ls ./DBMS ; mainMenu;;
    6) exit ;;
    *) echo " Wrong Choice " ; mainMenu;
  esac
}
mainMenu
