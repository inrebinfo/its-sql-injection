<?php
set_time_limit(0);
session_start();
include('inc/config.php');
if (isset($_GET['do']) && $_GET['do'] == 'login') {
    if (isset($_POST['dologin'])) {
        $sql = mysql_query("SELECT * FROM user WHERE username = '" . $_POST['username'] . "' AND password = '" . $_POST['password'] . "'");
        $user = mysql_fetch_array($sql);

        $_SESSION['itsuser'] = $user['username'];
        $_SESSION['itsrank'] = $user['rank'];
        header('Location: login.php');
    }
} elseif (isset($_GET['do']) && $_GET['do'] == 'logout') {
    session_destroy();
    unset($_SESSION);
    header('Location: login.php');
}

if (isset($_SESSION['itsuser']) && isset($_SESSION['itsrank'])) {
    $rank = mysql_fetch_array(mysql_query("SELECT * FROM ranks WHERE rid = '" . $_SESSION['itsrank'] . "'"));

    echo 'You are logged in as <strong>' . $_SESSION['itsuser'] . '</strong> and your rank is <strong>' . $rank['name'] . '</strong>.<br>
    <a href="login.php?do=logout">Logout</a><br>';
}
?>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>SQL Injection</title>
</head>
<body>
<a href="index.php">Homepage</a><br>

<h1>Admin Login</h1>

<form method="post" action="login.php?do=login">
    <table>
        <tr>
            <td>Username</td>
            <td><input type="text" name="username"></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Login" name="dologin"></td>
        </tr>
    </table>
</form>
</body>
</html>
