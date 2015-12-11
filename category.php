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

<h1>Categories</h1>
<?php
if (isset($_GET['id'])) {
    $sql = mysql_query("SELECT * FROM logos WHERE category = '" . $_GET['id'] . "'");

    echo '<table border="1"><tr><th>#</th><th>Name</th></tr>';
    while ($res = mysql_fetch_array($sql)) {
        echo '<tr><td>' . $res['pid'] . '</td><td><a href="imgview.php?id=' . $res['pid'] . '">' . $res['name'] . '</a></td></tr>';
    }
    echo '</table>';

} else {
    $sql = mysql_query("SELECT * FROM categories");
    echo '<table border="1"><tr><th>#</th><th>Name</th></tr>';
    while ($res = mysql_fetch_array($sql)) {
        echo '<tr><td>' . $res['cid'] . '</td><td><a href="?id=' . $res['cid'] . '">' . $res['name'] . '</a></td></tr>';
    }
    echo '</table>';
}
?>
<br>
<a href="login.php">User Login</a><br>
</body>
</html>
