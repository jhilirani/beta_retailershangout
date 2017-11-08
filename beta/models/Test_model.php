<?php
class Test_model extends CI_Model {
	function __construct() {
	}
	
	function check($data=""){
		if($data==""){
			return 'empty';
		}else{
			return 'data';
		}
	}
}
?>