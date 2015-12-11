<?php
set_time_limit(0);
session_start();
include('inc/config.php');
if (isset($_GET['do']) && $_GET['do'] == 'comment') {
    echo 'do get<br>';
    if (isset($_POST['sendcomment'])) {
        echo 'do post<br>';
        if (!$addsql = mysql_query("INSERT INTO comments (name, text) VALUES ('" . $_POST['name'] . "', '" . $_POST['comment'] . "')")) {
//        if (!$addsql = mysql_query("INSERT INTO comments (name, text) VALUES ('" . mysql_real_escape_string($_POST['name']) . "', '" . mysql_real_escape_string($_POST['comment']) . "')")) {
            echo mysql_errno() . ' - ' . mysql_error();
        }

        $sql = mysql_fetch_array(mysql_query("SELECT * FROM comments ORDER BY cid DESC LIMIT 1"));
        echo '<h2>Last Comment</h2></h2><table>
            <tr><th>Name</th><td>' . $sql['name'] . '</td></tr>
            <tr><th>Comment</th><td>' . $sql['text'] . '</td></tr>
        </table>';
    }
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

<h1>Comments</h1>

<form method="post" action="comments.php?do=comment">
    <table>
        <tr>
            <td>Name</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td colspan="2"><textarea name="comment"></textarea></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Add Comment" name="sendcomment"></td>
        </tr>
    </table>
</form>
</body>
</html>
