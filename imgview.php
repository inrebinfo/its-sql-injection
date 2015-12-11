<?php
set_time_limit(0);
session_start();
include('inc/config.php');
?>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>SQL Injection</title>
</head>
<body>
<a href="index.php">Homepage</a><br>
<h1>Image Viewer</h1>
<?php

$sql = mysql_query("SELECT * FROM logos WHERE pid = '".$_GET['id']."'");
$res = mysql_fetch_array($sql);

echo '<table>
<tr><th>Image ID</th><td>'.$res['pid'].'</td></tr>
<tr><th>Image Name</th><td>'.$res['name'].'</td></tr>
<tr><th>Filename</th><td>'.$res['filename'].'</td></tr>
<tr><th>Category</th><td>'.$res['category'].'</td></tr>
</table>';

echo '<img src="img/'.$res['filename'].'" alt="'.$res['filename'].'">';

?>
<br>
<a href="login.php">User Login</a><br>
</body>
</html>
