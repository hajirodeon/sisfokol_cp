<?php
session_start();


//ambil nilai
require("inc/config.php");
require("inc/fungsi.php");
require("inc/koneksi.php");
require("inc/class/paging.php");
$tpl = LoadTpl("template/cp_artikel.html");



nocache;

//nilai
$artkd = nosql($_REQUEST['artkd']);
$filenya = "artikel.php?artkd=$artkd";
$filenyax = "i_index.php";
$filenya_ke = $sumber;






//update
mysqli_query($koneksi, "UPDATE cp_artikel SET jml_dilihat = jml_dilihat + 1 ".
				"WHERE kd = '$artkd'");

		

//rincian
$qku = mysqli_query($koneksi, "SELECT * FROM cp_artikel ".
						"WHERE kd = '$artkd'");
$rku = mysqli_fetch_assoc($qku);
$ku_judul = balikin($rku['judul']);
$ku_isi = balikin($rku['isi']);
$ku_filex = balikin($rku['filex']);
$ku_katkd = nosql($rku['kd_kategori']);
$ku_jml_dilihat = nosql($rku['jml_dilihat']);
$ku_jml_suka = nosql($rku['jml_suka']);
$ku_jml_komentar = nosql($rku['jml_komentar']);
$ku_postdate = balikin($rku['postdate']);
$judul = $ku_judul;
$judulku = $judul;
$ku_filex2 = "$sumber/filebox/artikel/$artkd/$ku_filex";
$ku_filex21 = "filebox/artikel/$artkd/$ku_filex";



//kategori
$qku2 = mysqli_query($koneksi, "SELECT * FROM cp_m_kategori ".
						"WHERE kd = '$ku_katkd'");
$rku2 = mysqli_fetch_assoc($qku2);
$ku2_kategori = balikin($rku2['nama']);










//detail artikel ////////////////////////////////////////////////////////////////////////////////////////
ob_start();


?>



<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    
<?php
if (file_exists('filebox/artikel/'.$artkd.'/'.$ku_filex.'')) 
	{
	echo '<p>
	<img src="'.$ku_filex2.'" width="100%">
	</p>';
	}

?>

<!-- Go to www.addthis.com/dashboard to customize your tools --> <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-571986952eef2a24"></script> 





	<script language='javascript'>
	//membuat document jquery
	$(document).ready(function(){


		$("#btnSUKA").on('click', function(){

				$.ajax({
					url: "i_index.php?artkd=<?php echo $artkd;?>&aksi=artikelsuka",
					type:$(this).attr("method"),
					data:$(this).serialize(),
					success:function(data){					
						$("#ihasilnya3").html(data);
						}
					});
				return false;

		});	








		$("#btnGAKSUKA").on('click', function(){

				$.ajax({
					url: "i_index.php?artkd=<?php echo $artkd;?>&aksi=artikelgaksuka",
					type:$(this).attr("method"),
					data:$(this).serialize(),
					success:function(data){					
						$("#ihasilnya3").html(data);
						}
					});
				return false;

		});	






	
				
	});
	
	</script>
		



<?php
echo '<div class="post-meta">
    <a href="#">'.$ku_postdate.'</a>
    <a href="kategori.php?katkd='.$ku_katkd.'">'.$ku2_kategori.'</a>
</div>
<h4 class="post-title">'.$judul.'</h4>

<div class="post-meta-2">
    <a href="#"><i class="fa fa-eye" aria-hidden="true"></i> '.$ku_jml_dilihat.'</a>
    <a href="#"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> '.$ku_jml_suka.'</a>
    <a href="#"><i class="fa fa-comments-o" aria-hidden="true"></i> '.$ku_jml_komentar.'</a>
</div>



<p>
'.$ku_isi.'
</p>


<hr>



<form id="formx3">

<p>
<button type="button" class="btn btn-default btn-lg" id="btnSUKA">
  <span class="glyphicon glyphicon-thumbs-up"></span> Suka
</button>


<button type="button" class="btn btn-default btn-lg" id="btnGAKSUKA">
  <span class="glyphicon glyphicon-thumbs-down"></span> Tidak Suka
</button>

<div id="ihasilnya3"></div>
</p>


</form>';

//isi
$i_artikel_detail = ob_get_contents();
ob_end_clean();














//brcrumb ////////////////////////////////////////////////////////////////////////////////////////
ob_start();


echo '<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="'.$sumber.'"><i class="fa fa-home" aria-hidden="true"></i> BERANDA</a></li>
        <li class="breadcrumb-item"><a href="kategori.php?katkd='.$ku_katkd.'">'.$ku2_kategori.'</a></li>
        <li class="breadcrumb-item active" aria-current="page">'.$ku_judul.'</li>
    </ol>
</nav>';

					
					
//isi
$i_artikel_bcrumb = ob_get_contents();
ob_end_clean();



















//artikel image ////////////////////////////////////////////////////////////////////////////////////////
ob_start();



//kasi random
$qyuk2 = mysqli_query($koneksi, "SELECT * FROM cp_g_foto ".
						"ORDER BY RAND()");
$ryuk2 = mysqli_fetch_assoc($qyuk2);
$yuk2_kd = nosql($ryuk2['kd']);
$yuk2_nama = balikin($ryuk2['nama']);
$yuk2_filex = balikin($ryuk2['filex']);

if (!file_exists('filebox/artikel/'.$artkd.'/'.$ku_filex.'')) 
	{
	$ku_filex2 = "$sumber/filebox/foto/$yuk2_kd/$yuk2_filex";
	}


echo $ku_filex2;

//isi
$i_artikel_image = ob_get_contents();
ob_end_clean();

















//artikel image ////////////////////////////////////////////////////////////////////////////////////////
ob_start();


//cari yang mirip
$katamirip = explode(" ", $ku_judul);
$mirip1 = balikin($katamirip[0]); 
$mirip2 = balikin($katamirip[1]);
$mirip2 = balikin($katamirip[2]);
$mirip3 = balikin($katamirip[3]);
$mirip4 = balikin($katamirip[4]);
$mirip5 = balikin($katamirip[5]);
$mirip6 = balikin($katamirip[6]);
$mirip7 = balikin($katamirip[7]);

$kata1 = "$mirip1 $mirip2";
$kata2 = "$mirip2 $mirip3";
$kata3 = "$mirip3 $mirip4";
$kata4 = "$mirip4 $mirip5";
$kata5 = "$mirip5 $mirip6";
$kata6 = "$mirip6 $mirip7";     


//jika ada
if (!empty($kata1))
	{
	$q_kata1 = "OR judul LIKE '%$kata1%'";
	}
	
if (!empty($kata2))
	{
	$q_kata2 = "OR judul LIKE '%$kata2%'";
	}
	
if (!empty($kata3))
	{
	$q_kata3 = "OR judul LIKE '%$kata3%'";
	}
	
if (!empty($kata4))
	{
	$q_kata4 = "OR judul LIKE '%$kata4%'";
	}
	
if (!empty($kata5))
	{
	$q_kata5 = "OR judul LIKE '%$kata5%'";
	}



//daftar artikel terkait
$qku = mysqli_query($koneksi, "SELECT * FROM cp_artikel ".
						"WHERE $q_kata1 ".
						"$q_kata2 ".	
						"$q_kata2 ".	
						"$q_kata3 ".	
						"$q_kata4 ".	
						"$q_kata5 ".	
						"ORDER BY postdate DESC LIMIT 0,3");
$rku = mysqli_fetch_assoc($qku);
$tku = mysqli_num_rows($qku);

//jika gak ada, kasi terbaru
if (empty($tku))
	{
	$qku = mysqli_query($koneksi, "SELECT * FROM cp_artikel ".
							"ORDER BY postdate DESC LIMIT 0,3");
	$rku = mysqli_fetch_assoc($qku);		
	}

	
	
	
do
	{
	//nilai
	$ku_kd = nosql($rku['kd']);
	$ku_judul = balikin($rku['judul']);
	$ku_isi = balikin($rku['isi']);
	$ku_filex = balikin($rku['filex']);
	$ku_katkd = nosql($rku['kd_kategori']);
	$ku_postdate = balikin($rku['postdate']);
	$ku_filex2 = "$sumber/filebox/artikel/$ku_kd/$ku_filex";
	$ku_jml_dilihat = nosql($rku['jml_dilihat']);
	$ku_jml_suka = nosql($rku['jml_suka']);
	$ku_jml_komentar = nosql($rku['jml_komentar']);
	

	echo '<div class="col-12 col-md-6 col-lg-4">
	<div class="single-blog-post style-4 mb-30">
	    <div class="post-thumbnail">
	        <img src="'.$ku_filex2.'" alt="'.$ku_judul.'">
	    </div>
	    <div class="post-content">
	        <a href="'.$filenya.'?artkd='.$ku_kd.'" class="post-title">'.$ku_judul.'</a>
	        <div class="post-meta d-flex">
	            <a href="'.$filenya.'?artkd='.$ku_kd.'"><i class="fa fa-eye" aria-hidden="true"></i> '.$ku_jml_dilihat.'</a>
	            <a href="'.$filenya.'?artkd='.$ku_kd.'"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> '.$ku_jml_suka.'</a>
	            <a href="'.$filenya.'?artkd='.$ku_kd.'"><i class="fa fa-comments-o" aria-hidden="true"></i> '.$ku_jml_komentar.'</a>
	       </div>
		</div>
	</div>
	</div>';
	}
while ($rku = mysqli_fetch_assoc($qku));

//isi
$i_artikel_terkait = ob_get_contents();
ob_end_clean();










//artikel daftar komentar ////////////////////////////////////////////////////////////////////////////////////////
ob_start();



echo '<ol>';


$qku = mysqli_query($koneksi, "SELECT * FROM cp_artikel_komentar ".
						"WHERE kd_artikel = '$artkd' ".
						"AND aktif = 'true' ".
						"ORDER BY postdate DESC");
$rku = mysqli_fetch_assoc($qku);		
$tku = mysqli_num_rows($qku);


//jika ada
if (!empty($tku))
	{
	do
		{
		//nilai
		$ku_kd = nosql($rku['kd']);
		$ku_nama = balikin($rku['nama']);
		$ku_isi = balikin($rku['isi']);
		$ku_filex = balikin($rku['filex']);
		$ku_katkd = nosql($rku['kd_kategori']);
		$ku_postdate = balikin($rku['postdate']);
	
		
	
	
	
	    echo '<li class="single_comment_area">
	
	        <div class="comment-content d-flex">
	
	            <div class="comment-author">
	                <img src="'.$sumber.'/template/img/user.png" alt="'.$ku_nama.'">
	            </div>
	
	            <div class="comment-meta">
	                <a href="#" class="comment-date">'.$ku_postdate.'</a>
	                <h6>'.$ku_nama.'</h6>
	                <p>'.$ku_isi.'</p>
	
	            </div>
	        </div>
	        
			<hr>
	    </li>';
	
		}
	while ($rku = mysqli_fetch_assoc($qku));
	}

else
	{
	echo '<p><font color="red">BELUM ADA KOMENTAR</font></p>';
	}    
    
echo '</ol>';






//isi
$i_artikel_komentar = ob_get_contents();
ob_end_clean();
















//artikel beri komentar ////////////////////////////////////////////////////////////////////////////////////////
ob_start();

?>


	<script language='javascript'>
	//membuat document jquery
	$(document).ready(function(){


		$("#btnKRM").on('click', function(){
			
			$("#formx2").submit(function(){

				$.ajax({
					url: "i_index.php?artkd=<?php echo $artkd;?>&aksi=artikelkomentar",
					type:$(this).attr("method"),
					data:$(this).serialize(),
					success:function(data){					
						$("#ihasilnya").html(data);
						}
					});
				return false;
			});
		
		
		});	

	
				
	});
	
	</script>
		


<?php
$nil1 = rand(1,9);
$nil2 = rand(1,9);


echo '<div class="contact-form-area">

<div id="iformnya">

    <form id="formx2">
        <div class="row">
            <div class="col-12 col-lg-6">
                <input type="text" class="form-control" id="e_nama" name="e_nama" placeholder="Nama Kamu" required>
            </div>
            <div class="col-12 col-lg-6">
                <input type="email" class="form-control" id="e_email" name="e_email" placeholder="E-Mail Kamu" required>
            </div>
            <div class="col-12">
                <textarea class="form-control" id="e_isi" name="e_isi" cols="30" rows="10" placeholder="Isi Komentar" required></textarea>
            </div>
            
			
            <div class="col-12">
            	'.$nil1.' + '.$nil2.' = 
            	
				
                <input type="hidden" id="e_nil1" name="e_nil1" value="'.$nil1.'">
                <input type="hidden" id="e_nil2" name="e_nil2" value="'.$nil2.'">
            </div>
            
            <div class="col-12 col-lg-2">            
                <input type="text" class="form-control" id="e_ongko" name="e_ongko" placeholder="" required>
            </div>
            
			
            <div class="col-12">

                <button class="btn mag-btn mt-30" type="submit" id="btnKRM">KIRIM KOMENTAR</button>
            </div>
        </div>
    </form>


	</div>    
	
	<div id="ihasilnya"></div>
</div>';


//isi
$i_artikel_komentar_beri = ob_get_contents();
ob_end_clean();


















//isi *START
ob_start();

require("i_menu.php");

//isi
$i_menu = ob_get_contents();
ob_end_clean();











//isi *START
ob_start();

require("i_footer.php");

//isi
$i_footer = ob_get_contents();
ob_end_clean();










//isi *START
ob_start();

require("i_populer.php");

//isi
$i_populer = ob_get_contents();
ob_end_clean();





//isi *START
ob_start();

require("i_terbaru.php");

//isi
$i_terbaru = ob_get_contents();
ob_end_clean();














require("inc/niltpl.php");


//diskonek
xclose($koneksi);
exit();
?>
