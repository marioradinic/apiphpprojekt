<?php

$MySQL = mysqli_connect("localhost","root","marior","phpprojekt") or die('Error connecting to MySQL server.');

$product_id = 0;
if(isset($_POST['product_id'])) { $product_id = $_POST['product_id']; }
print $product_id;
print $_POST['score'];

if ($product_id != 0)
{
	$query  = "INSERT INTO product_scores (score, product_id)";
	$query .= " VALUES (" . $_POST['score'] . "," . $product_id . ")";
	$result = @mysqli_query($MySQL, $query);
}

header("Location: index.php?pg=2&act=2&id={$product_id}&vlt={$_POST['vlt']}");

?>
