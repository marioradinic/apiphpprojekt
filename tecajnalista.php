<?php

include("provjerimain.php");	

$act = 1;
$url = 'https://api.hnb.hr/tecajn-eur/v3';
if(isset($_GET['act'])) { $act = $_GET['act']; }

$h2title = $title;

if ($act == 2 || $act == 4)
{
	$h2title = "Tečaj";
}
if ($act == 3 || $act == 4)
{
	$url = $url . "?format=xml";
	$h2title = $h2title . " XML";
}

?>
<h2><?php print $h2title ?></h2>
<hr />
<div class="admin">
	<ul>
		<li><a href="index.php?pg=14&act=1">JSON</a></li>
		<li><a href="index.php?pg=14&act=3">XML</a></li>
	</ul>
	<hr class="clear" />
<?php
if ($act == 1)
{
	?>	
		<table class="table table-striped">
			<thead>
			  <tr>
				<th scope="col">Valuta</th>
				<th scope="col">Drzava</th>
				<th scope="col">Srednji tečaj</th>     
			  </tr>
			</thead>
			<tbody>
	<?php
	$src = file_get_contents($url);
	$data = json_decode($src);

	foreach($data as $query){
		?>
          <tr>
			<td><a href="index.php?pg=<?php print $pg ?>&act=2&id=<?php print $query->valuta ?>"><?php print $query->valuta ?></a></td>
            <td><?php print $query->drzava ?></td>
			<td><?php print number_format(str_replace(',', '.', $query->srednji_tecaj), 2, ',', ' '); ?></td>
          </tr>
<?php
	  }
?>
        </tbody>
      </table>
<?php
}
else if ($act == 2)
{
	$id = "USD";
	if(isset($_GET['id'])) { $id = $_GET['id']; }
	$url = $url . "?valuta=" . $id;
	$src = file_get_contents($url);
	$data = json_decode($src);
	if (isset($data) && isset(($data)[0]))
	{
		$arrfirst = array_values($data)[0];
		?>
         <div class="details"> 
		  <label>Valuta: </label>
		  <div><?php print $arrfirst->valuta ?></div>
		  <label>Šifra valute: </label>
		  <div><?php print $arrfirst->sifra_valute ?></div>
		  <label>Država: </label>
		  <div><?php print $arrfirst->drzava ?></div>
		  <label>Država ISO: </label>
		  <div><?php print $arrfirst->drzava_iso ?></div>
		  <label>Kupovni tečaj: </label>
		  <div><?php print number_format(str_replace(',', '.', $arrfirst->kupovni_tecaj), 2, ',', ' '); ?></div>
		  <label>Srednji tečaj: </label>
		  <div><?php print number_format(str_replace(',', '.', $arrfirst->srednji_tecaj), 2, ',', ' '); ?></div>
		  <label>Prodajni tečaj: </label>
		  <div><?php print number_format(str_replace(',', '.', $arrfirst->prodajni_tecaj), 2, ',', ' '); ?></div>
		  </div>
<?php
	}
}
else if ($act == 3)
{
	?>	
		<table class="table table-striped">
			<thead>
			  <tr>
				<th scope="col">Valuta</th>
				<th scope="col">Drzava</th>
				<th scope="col">Srednji tečaj</th>     
			  </tr>
			</thead>
			<tbody>
	<?php
	$src = file_get_contents($url);
	$data  = new SimpleXMLElement($src);

	foreach($data->item as $query){
		?>
          <tr>
			<td><a href="index.php?pg=<?php print $pg ?>&act=4&id=<?php print $query->valuta ?>"><?php print $query->valuta ?></a></td>
            <td><?php print $query->drzava ?></td>
			<td><?php print number_format(str_replace(',', '.', $query->srednji_tecaj), 2, ',', ' '); ?></td>
          </tr>
<?php
	  }
?>
        </tbody>
      </table>
<?php
}
else if ($act == 4)
{
	$id = "USD";
	if(isset($_GET['id'])) { $id = $_GET['id']; }
	$url = $url . "&valuta=" . $id;
	$src = file_get_contents($url);
	$data = new SimpleXMLElement($src);

	if (isset($data) && isset(($data->item)))
	{
		$arrfirst = $data->item;
		?>
         <div class="details"> 
		  <label>Valuta: </label>
		  <div><?php print $arrfirst->valuta ?></div>
		  <label>Šifra valute: </label>
		  <div><?php print $arrfirst->sifra_valute ?></div>
		  <label>Država: </label>
		  <div><?php print $arrfirst->drzava ?></div>
		  <label>Država ISO: </label>
		  <div><?php print $arrfirst->drzava_iso ?></div>
		  <label>Kupovni tečaj: </label>
		  <div><?php print number_format(str_replace(',', '.', $arrfirst->kupovni_tecaj), 2, ',', ' '); ?></div>
		  <label>Srednji tečaj: </label>
		  <div><?php print number_format(str_replace(',', '.', $arrfirst->srednji_tecaj), 2, ',', ' '); ?></div>
		  <label>Prodajni tečaj: </label>
		  <div><?php print number_format(str_replace(',', '.', $arrfirst->prodajni_tecaj), 2, ',', ' '); ?></div>
		  </div>
<?php
	}
}
?>
<hr />
<ul>
	<li><a href="<?php print$url ?>" target="_blank">Izvor podataka</a></li>
</ul>
</div>