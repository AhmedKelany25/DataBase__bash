
function renameDB {
  echo -e "Enter Current Database Name: \c"
  read dbName
  echo -e "Enter New Database Name: \c"
  read newName
  mv ./DBMS/$dbName ./DBMS/$newName 2>>./.error.log
  if [[ $? == 0 ]]; then
    echo "Database Renamed Successfully"
  else
    echo "Error Renaming Database"
  fi
  source /home/akelany/Database_project/mainMenu.sh
}
renameDB

