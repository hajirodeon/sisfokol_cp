<?php
session_start();


//require("inc/config.php");
//require("inc/fungsi.php");
//require("inc/koneksi.php");



?>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<style>
table.calendar		{ border-left:1px solid #999; }
tr.calendar-row	{  }
td.calendar-day	{ min-height:80px; font-size:11px; position:relative; } * html div.calendar-day { height:80px; }
td.calendar-day:hover	{ background:#eceff5; }
td.calendar-day-np	{ background:#eee; min-height:80px; } * html div.calendar-day-np { height:80px; }
td.calendar-day-head { background:#ccc; font-weight:bold; text-align:center; width:120px; padding:5px; border-bottom:1px solid #999; border-top:1px solid #999; border-right:1px solid #999; }
div.day-number		{ background:#999; padding:5px; color:#fff; font-weight:bold; float:right; margin:-5px -5px 0 0; width:20px; text-align:center; }
/* shared */
td.calendar-day, td.calendar-day-np { width:120px; padding:5px; border-bottom:1px solid #999; border-right:1px solid #999; }

</style>





<?php
//bikin kalender event /////////////////////////////////////////////////////////////////////////////////
$month = round($bulan);
$year = round($tahun);



echo "<a href='#' id=\"xbln1\" title=\"Bulan Sebelumnya\" class=\"btn btn-danger\"><</a>
<a href='#' id=\"xbln2\" title=\"Bulan Setelahnya\" class=\"btn btn-danger\">></a>";
?>




<script>
$(document).ready(function(){

 $.ajax({
     type: 'GET', 
     url: 'i_kalender2.php?aksi=nyata', 
     data: 'blnku=<?php echo $month;?>&thnku=<?php echo $year;?>', 
     success: function(response) { 
          $('#ikalenderku').html(response);
        }
   });




  		$('#xbln1').click(function() {

		     $.ajax({
	             type: 'GET', 
		         url: 'i_kalender2.php', 
		         data: 'aksi=xbln1', 
		         success: function(response) { 
		              $('#ikalenderku').html(response);
		            }
		       });
              
              
		    });
		 







  		$('#xbln2').click(function() {

		     $.ajax({
	             type: 'GET', 
		         url: 'i_kalender2.php', 
		         data: 'aksi=xbln2', 
		         success: function(response) { 
		              $('#ikalenderku').html(response);
		            }
		       });
              
              
		    });




  
});
</script>




	<div id="ikalenderku"></div>