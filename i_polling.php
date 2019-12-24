<?php
//form
$qcc = mysql_query("SELECT * FROM cp_polling");
$rcc = mysql_fetch_assoc($qcc);
$tcc = mysql_num_rows($qcc);
$cc_topik = balikin($rcc['topik']);
$cc_opsi1 = balikin($rcc['opsi1']);
$cc_opsi2 = balikin($rcc['opsi2']);
$cc_opsi3 = balikin($rcc['opsi3']);
$cc_opsi4 = balikin($rcc['opsi4']);
$cc_opsi5 = balikin($rcc['opsi5']);
$cc_nil_opsi1 = nosql($rcc['nil_opsi1']);
$cc_nil_opsi2 = nosql($rcc['nil_opsi2']);
$cc_nil_opsi3 = nosql($rcc['nil_opsi3']);
$cc_nil_opsi4 = nosql($rcc['nil_opsi4']);
$cc_nil_opsi5 = nosql($rcc['nil_opsi5']);
$cc_total = round($cc_nil_opsi1 + $cc_nil_opsi2 + $cc_nil_opsi3 + $cc_nil_opsi4 + $cc_nil_opsi5);

//jika nol
if ((empty($cc_nil_opsi1)) AND (empty($cc_nil_opsi2)) AND (empty($cc_nil_opsi3)) AND (empty($cc_nil_opsi4))
	AND (empty($cc_nil_opsi5)))
	{
	$cc_nil_opsi1 = 1;
	$cc_nil_opsi2 = 1;
	$cc_nil_opsi3 = 1;
	$cc_nil_opsi4 = 1;
	$cc_nil_opsi5 = 1;
	}


?>


<script language='javascript'>
//membuat document jquery
$(document).ready(function(){


	$("#btnPOL").on('click', function(){
		
		$("#fpoll").submit(function(){
			$.ajax({
				url: "<?php echo $filenyax;?>?aksi=pollsimpan",
				type:$(this).attr("method"),
				data:$(this).serialize(),
				success:function(data){					
					$("#ihasilpoll").html(data);
					}
				});
			return false;
		});
	
	
	});	



			

});

</script>


<?php
echo '<div class="row"> 
<div class="col-md-12">
	
<form name="fpoll" id="fpoll">
<p>
<strong>'.$cc_topik.'</strong>
</p>


<p>
<input name="v_opsi" type="radio" value="nopsi1">
<strong>'.$cc_opsi1.'</strong>
</p>


<p>
<input name="v_opsi" type="radio" value="nopsi2">
<strong>'.$cc_opsi2.'</strong>
</p>


<p>
<input name="v_opsi" type="radio" value="nopsi3">
<strong>'.$cc_opsi3.'</strong>
</p>


<p>
<input name="v_opsi" type="radio" value="nopsi4">
<strong>'.$cc_opsi4.'</strong>

</p>


<p>
<input name="v_opsi" type="radio" value="nopsi5">
<strong>'.$cc_opsi5.'</strong>
</p>


<p>

<input name="btnPOL" id="btnPOL" type="submit" value="Vote">
[Total : <strong>'.$cc_total.'</strong> vote].



</p>

</form>


</div>

</div>';
?>