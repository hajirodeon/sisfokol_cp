
<script language='javascript'>
//membuat document jquery
$(document).ready(function(){


	$("#btnNEWS").on('click', function(){
		
		$("#iformnewsletter").submit(function(){
			$.ajax({
				url: "<?php echo $filenyax;?>?aksi=newssimpan",
				type:$(this).attr("method"),
				data:$(this).serialize(),
				success:function(data){					
					$("#ihasilnews").html(data);
					setTimeout('$("#ihasilnews").hide()',5000);
					}
				});
			return false;
		});
	
	
	});	



			

});

</script>



<div class="newsletter-form">
    <p>Dapatkan informasi terbaru, dengan mendaftarkan alamat email kamu</p>
    <form id="iformnewsletter">
        <input type="text" name="emailku" id="emailku" placeholder="Alamat Email Kamu">
        <button type="submit" id="btnNEWS" class="btn mag-btn w-100">DAFTAR >></button>
    </form>
</div>
