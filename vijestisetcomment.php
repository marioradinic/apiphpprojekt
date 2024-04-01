<?php

$MySQL = mysqli_connect("localhost","root","marior","phpprojekt") or die('Error connecting to MySQL server.');

$news_id = 0;
if(isset($_POST['news_id'])) { $news_id = $_POST['news_id']; }

if ($news_id != 0)
{
	$query  = "INSERT INTO news_comments (note, news_id)";
	$query .= " VALUES ('" . htmlspecialchars($_POST['note'], ENT_QUOTES) . "', " . $news_id . ")";
	$result = @mysqli_query($MySQL, $query);
}

header("Location: index.php?pg=3&act=2&id={$news_id}");

?>
