<?php
	class login{
		protected $user ;
		protected $pass ;
		
		public function __construct($user,$pass){
			$this->username = $user;
			$this->pass = $pass;
		}
		
		public function petugas(){
		if($this->username == "nadia" && $this->pass == nadia123)
			{
				header("location:manager/index.php");
			}
		else if($this->username == "admin" && $this->pass == admin123)
			{
				header("location:manager/index.php");
			}
		
		}
	}
?>