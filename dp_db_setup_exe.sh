## FILE TO EXECUTE SQL FILE





## Base directory
DIR="$(cd "$(dirname "$0")" && pwd)"

## 
mysql -h localhost < $DIR/pkg_dir/sql/dp_db_setup.sql
