function selectDB {
  echo -e "Enter Database Name: \c"
  read dbName
  cd ./DBMS/$dbName 2>>./.error.log
  if [[ $? == 0 ]]; then
    echo "Database $dbName was Successfully Selected"
    source /home/akelany/Database_project/table.sh
  else
    echo "Database $dbName wasn't found"
    source /home/akelany/Database_project/mainMenu.sh
  fi
}
selectDB
