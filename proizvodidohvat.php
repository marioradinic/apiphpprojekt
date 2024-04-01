<?php

$MySQL = mysqli_connect("localhost","root","marior","phpprojekt") or die('Error connecting to MySQL server.');
header('Access-Control-Allow-Origin: *');
$response = array();
$responsexml;
$num = 0;
$act = 1;
if(isset($_GET['act'])) { $act = $_GET['act']; }

if ($act == 1 || $act == 2)
{
	header('Content-Type: application/json; charset=utf-8');
}
else if ($act == 3 || $act == 4)
{
	header('Content-Type: application/xml; charset=utf-8');
	$responsexml = '<?xml version="1.0" encoding="utf-8"?>';
	$responsexml = $responsexml . '<items>';
}

?>
<?php
if ($act == 1)
{
$query  = "SELECT * FROM products";
$query .= " WHERE active='Y'";
$query .= " ORDER BY created_at DESC";
$result = @mysqli_query($MySQL, $query);
while($row = @mysqli_fetch_array($result)) {
$response[$num++] = array(
	'id' => $row['id'],
	'title'=> $row['title'],
	'price'=> $row['price']
);
}
}
else if ($act == 2)
{
$id = 1;
if(isset($_GET['id']) && is_numeric($_GET['id'])) { $id = $_GET['id']; }
	
$query  = "SELECT * FROM products";
$query .= " WHERE active='Y' and id=" . $id;
$result = @mysqli_query($MySQL, $query);
$row = @mysqli_fetch_array($result);
$rowcount = mysqli_num_rows($result);

if ($rowcount > 0) 
{
	$response[$num] = array(
		'id' => $row['id'],
		'title'=> $row['title'],
		'price'=> $row['price']
	);
}
}
if ($act == 3)
{
$query  = "SELECT * FROM products";
$query .= " WHERE active='Y'";
$query .= " ORDER BY created_at DESC";
$result = @mysqli_query($MySQL, $query);
while($row = @mysqli_fetch_array($result)) {
	$responsexml = $responsexml.'<item>';
	$responsexml = $responsexml.'<id>'.$row['id'].'</id>';
	$responsexml = $responsexml.'<title>'.$row['title'].'</title>';
	$responsexml = $responsexml.'<price>'.$row['price'].'</price>';
	$responsexml = $responsexml.'</item>';
}
}
else if ($act == 4)
{
$id = 1;
if(isset($_GET['id']) && is_numeric($_GET['id'])) { $id = $_GET['id']; }
	
$query  = "SELECT * FROM products";
$query .= " WHERE active='Y' and id=" . $id;
$result = @mysqli_query($MySQL, $query);
$row = @mysqli_fetch_array($result);
$rowcount = mysqli_num_rows($result);

if ($rowcount > 0) 
{
	$responsexml = $responsexml.'<item>';
	$responsexml = $responsexml.'<id>'.$row['id'].'</id>';
	$responsexml = $responsexml.'<title>'.$row['title'].'</title>';
	$responsexml = $responsexml.'<price>'.$row['price'].'</price>';
	$responsexml = $responsexml.'</item>';
}
}
if ($act == 1 || $act == 2)
{
	echo json_encode($response);
}
else if ($act == 3 || $act == 4)
{
	$responsexml = $responsexml . '</items>';
	echo $responsexml;
}
?>