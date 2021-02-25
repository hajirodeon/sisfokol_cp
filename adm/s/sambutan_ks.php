<?php
session_start();

require("../../inc/config.php");
require("../../inc/fungsi.php");
require("../../inc/koneksi.php");
require("../../inc/cek/adm.php");
require("../../inc/class/paging.php");
$tpl = LoadTpl("../../template/admin.html");

nocache;

//nilai
$filenya = "sambutan_ks.php";
$judul = "[SETTING] Sambutan Kepala Sekolah";
$judulku = "$judul";
$judulx = $judul;


//PROSES ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//jika simpan
if ($_POST['btnSMP'])
	{
	$s = nosql($_POST['s']);
	$kd = nosql($_POST['kd']);
	$page = nosql($_POST['page']);
	$e_nama = cegah($_POST['e_nama']);
	$e_isi = cegah2($_POST['editor']);

	$namabaru = "ks.jpg";



	//nek null
	if ((empty($e_nama)) OR (empty($e_isi)))
		{
		//re-direct
		$pesan = "Belum Ditulis. Harap Diulangi...!!";
		pekem($pesan,$filenya);
		exit();
		}
	else
		{
		mysqli_query($koneksi, "UPDATE cp_sambutan_ks SET nama = '$e_nama', ".
						"isi = '$e_isi', ".
						"filex1 = '$namabaru', ".
						"postdate = '$today'");

		//re-direct
		xloc($filenya);
		exit();
		}
	}




/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



//isi *START
ob_start();


//require
require("../../template/js/jumpmenu.js");
require("../../template/js/checkall.js");
require("../../template/js/swap.js");


?>



<script type="text/javascript" src="<?php echo $sumber;?>/inc/class/ckeditor/ckeditor.js"></script>




<?php
//view //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
$qx = mysqli_query($koneksi, "SELECT * FROM cp_sambutan_ks");
$rowx = mysqli_fetch_assoc($qx);
$e_nama = balikin($rowx['nama']);
$e_isi = balikin($rowx['isi']);
$e_filex1 = balikin($rowx['filex1']);


//jika edit / baru
//nek null foto
if (empty($e_filex1))
	{
	$nil_foto = "$sumber/template/img/bg-black.png";
	}
else
	{
	$nil_foto = "$sumber/filebox/sambutan_ks/$e_filex1";
	}
		
?>
	
	





<div class="row">

<div class="col-md-6">
	
<?php
echo '<form action="'.$filenya.'" method="post" name="formx2">

<p>
Nama Kepala Sekolah: 
<br>
<input name="e_nama" type="text" value="'.$e_nama.'" size="30" class="btn btn-warning">
</p>


<p>
Isi Sambutan : 
<br>


<textarea id="editor" name="editor" rows="20" cols="80" style="width: 100%">'.$e_isi.'</textarea>
</p>


<p>
<input name="jml" type="hidden" value="'.$count.'">
<input name="s" type="hidden" value="'.$s.'">
<input name="kd" type="hidden" value="'.$kdx.'">
<input name="page" type="hidden" value="'.$page.'">

<input name="btnSMP" type="submit" value="SIMPAN" class="btn btn-danger">
<input name="btnBTL" type="submit" value="BATAL" class="btn btn-info">
</p>


</form>';

?>
	

	
	
		
	<script type="text/javascript">
	//<![CDATA[
	var roxyFileman = '<?php echo $sumber;?>/inc/class/ckeditor/plugins/fileman/index.html';
	 
	$(function(){
    CKEDITOR.replace( 'editor',{filebrowserBrowseUrl:roxyFileman,
                         filebrowserImageBrowseUrl:roxyFileman+'?type=image',
                         removeDialogTabs: 'link:upload;image:upload'}); 
	});


	//]]>
	</script>
	



</div>

<div class="col-md-6">
	

	
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  


<style type="text/css">
.thumb-image{
 float:left;
 width:150px;
 height:150px;
 position:relative;
 padding:5px;
}
</style>



<p>
Foto Kepala Sekolah :
</p>
	<table border="0" cellspacing="0" cellpadding="3">
	<tr valign="top">
	<td width="100">
		<div id="image-holder"></div>
	</td>
	

	</tr>
	</table>

<script>
$(document).ready(function() {
	
	
        $("#image_upload").on('change', function() {
          //Get count of selected files
          var countFiles = $(this)[0].files.length;
          var imgPath = $(this)[0].value;
          var extn = imgPath.substring(imgPath.lastIndexOf('.') + 1).toLowerCase();
          var image_holder = $("#image-holder");
          image_holder.empty();
          if (extn == "gif" || extn == "png" || extn == "jpg" || extn == "jpeg") {
            if (typeof(FileReader) != "undefined") {
              //loop for each file selected for uploaded.
              for (var i = 0; i < countFiles; i++) 
              {
                var reader = new FileReader();
                reader.onload = function(e) {
                  $("<img />", {
                    "src": e.target.result,
                    "class": "thumb-image"
                  }).appendTo(image_holder);
                }
                image_holder.show();
                reader.readAsDataURL($(this)[0].files[i]);
              }
              

	    
            } else {
              alert("This browser does not support FileReader.");
            }
          } else {
            alert("Pls select only images");
          }
        });
        
        


        
        
        
      });
</script>

<?php
echo '<div id="loading" style="display:none">
<img src="'.$sumber.'/template/img/progress-bar.gif" width="100" height="16">
	</div>
	
	
   <form method="post" id="upload_image" enctype="multipart/form-data">
	<input type="file" name="image_upload" id="image_upload" class="btn btn-warning" />

   </form>
   
   <hr>';

?>


<script>  
$(document).ready(function(){
	
	
	
       $('#image-holder').load("<?php echo $sumber;?>/adm/s/i_sambutan_ks.php?aksi=lihat1");



        
    $('#upload_image').on('change', function(event){
     event.preventDefault();
     
		$('#loading').show();


	
	     $.ajax({
	      url:"i_sambutan_ks_upload.php",
	      method:"POST",
	      data:new FormData(this),
	      contentType:false,
	      cache:false,
	      processData:false,
	      success:function(data){
			$('#loading').hide();
	       $('#preview').load("<?php echo $sumber;?>/adm/s/i_sambutan_ks.php?aksi=lihat");
	       	
	      }
	     })
	    });
	    
	    
});  
</script>




</div>

</div>


<?php




//isi
$isi = ob_get_contents();
ob_end_clean();

require("../../inc/niltpl.php");


//null-kan
xclose($koneksi);
exit();
?>