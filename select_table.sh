
function selectMenu {
  echo -e "\n\n+---------------Select Menu--------------------+"
  echo "| 1. Select All Columns of a Table              |"
  echo "| 2. Back To Tables Menu                        |"
  echo "| 3. Back To Main Menu                          |"
  echo "| 4. Exit                                       |"
  echo "+----------------------------------------------+"
  echo -e "Enter Choice: \c"
  read ch
  case $ch in
    1) selectAll ;;
    2) clear; source /home/akelany/Database_project/table.sh ;;
    3) clear; cd ../.. 2>>./.error.log; source /home/akelany/Database_project/mainMenu.sh ;;
    4) exit ;;
    *) echo " Wrong Choice " ; selectMenu;
  esac
}

function selectAll {
  echo -e "Enter Table Name: \c"
  read tName
  column -t -s '|' $tName 2>>./.error.log
  if [[ $? != 0 ]]
  then
    echo "Error Displaying Table $tName"
  fi
  selectMenu
}
selectMenu
