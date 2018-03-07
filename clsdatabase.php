<?php 
    class database{
        private $dbhost="localhost";
        private $dbuser="root";
        private $dbpassword="";
        private $dbname="proyek_uas";
        
        
        function connectMysql(){
            mysql_connect($this->dbhost,$this->dbuser,$this->dbpassword,$this->dbname);
            mysql_select_db($this->dbname) or die ("database not found");
        }
        
       
    }

?>