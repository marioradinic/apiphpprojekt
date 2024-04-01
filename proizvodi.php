<?php

include("provjerimain.php");

$act = 1;
if(isset($_GET['act'])) { $act = $_GET['act']; }

$h2title = $title;
$divclass = "proizvodi";

if ($act == 2)
{
	$h2title = "Proizvod";
	$divclass = "";
}

$url = 'https://api.hnb.hr/tecajn-eur/v3';

$src = file_get_contents($url);
$dataall = json_decode($src);


$vlt = "USD";
if(isset($_GET['vlt'])) { 
	$vlt = $_GET['vlt']; 
}
$srednjitecaj = 1;
$url = $url . "?valuta=" . $vlt;
$src = file_get_contents($url);
$data = json_decode($src);
if (isset($data) && isset(($data)[0]))
{
	$arrfirst = array_values($data)[0];
	$srednjitecaj = number_format(str_replace(',', '.', $arrfirst->srednji_tecaj), 6);
	$srednjitecajprn = number_format($srednjitecaj, 2, ',', ' ');
}

?>
<script>
	function vltchange(elem){
		window.location = "index.php?pg=2&act=<?php print $act ?><?php if($act==2){print "&id=".$_GET['id'];} ?>&vlt=" + elem.value;
};
</script>
<h2><?php print $h2title ?></h2>
<hr />
<div class="admin">
<ul>
	<li><a href="proizvodidohvat.php?act=<?php if($act==1){print 1;}else{print "2&id=".$_GET['id'];} ?>" target="_blank">JSON</a></li>
	<li><a href="proizvodidohvat.php?act=<?php if($act==1){print 3;}else{print "4&id=".$_GET['id'];} ?>" target="_blank">XML</a></li>
</ul>
</div>
<hr class="clear" />
<select id="valute" onchange="vltchange(this);" name="valute" style="min-width:50px">
         <?php 
		 foreach($dataall as $query){
		 $selected='';
		 if ($query->valuta == $vlt)
		 {
			 $selected='selected';
		 }
		 print '<option ' . $selected . ' value="' . $query->valuta . '">' . $query->valuta . '</option>';
		 }
		 ?>
      </select>
<hr />
<div class="<?php print $divclass ?>">
<?php
if ($act == 1)
{
$query  = "SELECT * FROM products";
$query .= " WHERE active='Y'";
$query .= " ORDER BY created_at DESC";
$result = @mysqli_query($MySQL, $query);

while($row = @mysqli_fetch_array($result)) {
	
$product_id = $row['id'];
$product_img = $row['img'];
$product_title = $row['title'];
$product_url = "index.php?pg={$pg}&act=2&id={$product_id}&vlt={$vlt}";
$product_price = number_format($row['price'], 2, ',', ' ');
$product_pricevlt = number_format($row['price']*$srednjitecaj, 2, ',', ' ');
?>
	<div class="pr">
		<div class="prin">
			<div class="thumb">
				<a href="<?php print $product_url ?>"><img src="proizvodi/<?php print $product_img ?>" alt="" title=""></a>
			</div>
			<div class="title"><a href="<?php print $product_url ?>"><?php print $product_title ?></a></div>
			<div class="price"><?php print $product_price ?> EUR<br>
			<?php print $product_pricevlt ?> <?php print $vlt ?><br>
			Tečaj: <?php print $srednjitecajprn ?></div>
			<div class="basket"><a href="index.php?pg=10&act=2&id=<?php print $product_id ?>" class="btn btn-primary btn-block"><span class="glyphicon glyphicon-shopping-cart"></span> Kupi</a></div>
		</div>
	</div>
<?php
}
}
else
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
$product_id = $row['id'];
$product_img = $row['img'];
$product_title = $row['title'];
$product_description = $row['description'];
$product_price = number_format($row['price'], 2, ',', ' ');
$product_pricevlt = number_format($row['price']*$srednjitecaj, 2, ',', ' ');

$query  = "SELECT count(id) cnt,sum(score) scores FROM product_scores";
$query .= " WHERE product_id=" . $product_id;
$result = @mysqli_query($MySQL, $query);
$row = @mysqli_fetch_array($result);
$rowcount = mysqli_num_rows($result);
$score = number_format(0, 2, ',', ' ');
if ($rowcount > 0) 
{
	$scores = $row['scores'];
	$cnt = $row['cnt'];
	if ($cnt>0)
	{
		$score = number_format($scores/$cnt, 2, ',', ' ');
	}
}
?>
	<div class="proizvodvise">
		<h2><?php print $product_title ?></h2>
		<div class="img">
			<img src="proizvodi/<?php print $product_img ?>" alt="" title="">
		</div>
		<div class="txt">
			<p>
			<?php print $product_description ?>
			</p>
			<div class="price">Cijena:<br><?php print $product_price ?> EUR<br>
			<?php print $product_pricevlt ?> <?php print $vlt ?><br>
			Tečaj: <?php print $srednjitecajprn ?><br>
			Prosječna ocjena: <?php print $score ?> (<?php print $cnt ?>)
		</div>
			<div class="basket"><a href="index.php?pg=10&act=2&id=<?php print $product_id ?>" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span> Kupi&nbsp;&nbsp;&nbsp;</a></div>
		</div>
		<hr>
	</div>
<div class="proizvodvise">
		<h2>Ocijeni:</h2>
		<div>
   <form action="proizvodisetscore.php" id="comment_form" name="comment_form" method="POST">
      <input type="hidden" id="product_id" name="product_id" value="<?php print $product_id ?>">
      <input type="hidden" id="vlt" name="vlt" value="<?php print $vlt ?>">
      <select id="score" name="score" style="min-width:50px">
	  <option value="1">1</option>
	  <option value="2">2</option>
	  <option value="3">3</option>
	  <option value="4">4</option>
	  <option selected value="5">5</option>
      </select>
	  <input type="submit" class="btn btn-primary btn-lg" value="Pošalji">
   </form>
   <hr>
</div>
<?php
}
}
?>
</div>