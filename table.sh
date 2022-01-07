function tablesMenu {
  echo -e "\n+--------Tables Menu------------+"
  echo "| 1. Show Existing Tables       |"
  echo "| 2. Create New Table           |"
  echo "| 3. Insert Into Table          |"
  echo "| 4. Select From Table          |"
  echo "| 5. Update Table               |"
  echo "| 6. Delete From Table          |"
  echo "| 7. Drop Table                 |"
  echo "| 8. Back To Main Menu          |"
  echo "| 9. Exit                       |"
  echo "+-------------------------------+"
  echo -e "Enter Choice: \c"
  read ch
  case $ch in
    1)  ls .;source /home/akelany/Database_project/table.sh ;;
    2)  source /home/akelany/Database_project/create_table.sh ;;
    3)  source /home/akelany/Database_project/insert_table.sh;;
    4)  clear; source /home/akelany/Database_project/select_table.sh ;;
    5)  source /home/akelany/Database_project/update_table.sh;;
    6)  source /home/akelany/Database_project/delete_table.sh;;
    7)  source /home/akelany/Database_project/drop_table.sh;;
    8) clear; cd ../.. 2>>./.error.log; source /home/akelany/Database_project/mainMenu.sh ;;
    9) exit ;;
    *) echo " Wrong Choice " ; tablesMenu;
  esac

}
tablesMenu
