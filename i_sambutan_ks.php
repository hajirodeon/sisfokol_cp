<?php
//ambil nilai
//require("inc/config.php");
//require("inc/fungsi.php");
//require("inc/koneksi.php");

//$id = "ks123";
?>



<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
<link rel="stylesheet" href="<?php echo $sumber;?>/template/readmore/demo/css/demo.css">





<?php
$qx = mysqli_query($koneksi, "SELECT * FROM cp_sambutan_ks");
$rowx = mysqli_fetch_assoc($qx);
$e_nama = balikin($rowx['nama']);
$e_isi = balikin2($rowx['isi']);
$e_filex1 = balikin($rowx['filex1']);


$nil_foto = "$sumber/filebox/sambutan_ks/ks.jpg";



//ambil seratus saja
$e_isi2 = substr($e_isi,0,500);



echo '<div class="row"> 
	<div class="col-md-2">
		<p>
		<img src="'.$nil_foto.'" class="img-rounded" alt="'.$e_nama.'" width="150" height="150" align="left">
		</p>


		<p>
		<b>'.$e_nama.'</b>
		</p>
		
	</div>
	
	 
	<div class="col-md-10">



				<div class="example" data-mrc>
						<p>'.$e_isi.'</p>
				</div>







		<br>
		
	</div>
	
</div>';


?>




	<script src="<?php echo $sumber;?>/template/readmore/demo/js/jquery.morecontent.js"></script>
	<script src="<?php echo $sumber;?>/template/readmore/demo/js/demo.js"></script>
	

<script>

$('.example').moreContent({	 
	event: 'mouseover', 
	textClose: 'Selengkapnya >> ',
	textOpen: '<< Keluar '
});
	
</script>
