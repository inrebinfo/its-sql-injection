<?php

$host = 'localhost';
$user = 'root';
$pass = '';
$data = 'its';

$con = mysql_connect($host, $user, $pass) or die('error connecting to db server');
mysql_select_db($data, $con) or die ('db not found');

