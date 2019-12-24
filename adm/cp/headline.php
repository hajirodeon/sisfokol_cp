<?php
session_start();

require("../../inc/config.php");
require("../../inc/fungsi.php");
require("../../inc/koneksi.php");
require("../../inc/cek/adm.php");
$tpl = LoadTpl("../../template/admin.html");

nocache;

//nilai
$filenya = "headline.php";
$filenyax = "i_headline.php";
$judul = "[ARTIKEL]. Headline";
$judulku = "$judul  [$adm_session]";
$judulx = $judul;






//isi *START
ob_start();


//js
require("../../inc/js/swap.js");



//view //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
?>

<script type="text/javascript">
$(document).ready(function() {
	$("#fdata").load("<?php echo $filenyax;?>?aksi=daftar");
	

//hapus
$("#btnHPS").on('click', function(){
	$("#formx3").submit(function(){
		$.ajax({
			url: "<?php echo $filenyax;?>?aksi=hapus",
			type: "POST",
			data:$(this).serialize(),
			success:function(data){
				$("#fdata").load("<?php echo $filenyax;?>?aksi=daftar");
				$("#result").html(data);
				setTimeout('$("#result").hide()',5000);
			}
		});
		return false;
	});

});








$('.checkAll').on('change', function() {
	$('.cb-element').attr('checked', $(this).is(':checked') ? 'checked' : '');
});



});
</script>




<?php
echo '<div id="result"></div>

<div id="fdata"></div>';
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



//isi
$isi = ob_get_contents();
ob_end_clean();

require("../../inc/niltpl.php");



//diskonek
xfree($qbw);
xclose($koneksi);
exit();
?>