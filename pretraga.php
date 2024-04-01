<?php

include("provjerimain.php");

$act = 2;

if(isset($_POST['act'])) { $act = $_POST['act']; }
?>
<h2><?php print $title ?></h2>
<hr />
<div>
   <form action="" id="contact_form" name="contact_form" method="POST">
      <input type="hidden" id="act" name="act" value="1">
      <label for="fname">Autor: *</label>
      <input type="text" id="fname" name="fname" placeholder="Autor.." required>
      <input type="submit" class="btn btn-primary btn-lg" value="Traži">
   </form>
</div>
<?php
if ($act == 1)
{
   $fname;
	if(isset($_POST['fname'])) { $fname = $_POST['fname']; }
   $url = 'https://openlibrary.org/search.json?lang=hr&page=1&author=' .urlencode($fname);
   $src = file_get_contents($url);
	$data = json_decode($src,true);
   ?>	
      <hr />
      <div><label>Broj rezultata: <?php print  $data['numFound']; ?></label></div>
      <hr />
      <table class="table table-striped">
			<thead>
			  <tr>
				<th scope="col">Broj</th>
				<th scope="col">Naslov</th>
				<th scope="col">Godina izdanja</th> 
            <th scope="col">Izdavač</th>    
			  </tr>
			</thead>
			<tbody>
	<?php
	for ($x = 0; $x < $data['numFound']; $x++){
		?>
        <tr>
			<td><?php print  $x+1; ?></td>
         <td><?php print $data['docs'][$x]['title'] ?></td>
			<td><?php print implode("<br>",$data['docs'][$x]['publish_year']); ?></td>
         <td><?php print implode("<br>",$data['docs'][$x]['publisher']); ?></td>
         </tr>
<?php
   }
     ?>
        </tbody>
      </table>
<?php
}
?>
<hr />
<div class="admin">
<ul>
	<li><a href="<?php print$url ?>" target="_blank">Izvor podataka</a></li>
</ul>
</div>