<?php
session_start();

require("inc/config.php");
require("inc/fungsi.php");
require("inc/koneksi.php");
	






//PROSES ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//jika bln sebelumnya
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'xbln1'))
	{
	//nilai
	$blnkus = nosql($_SESSION['blnkus']);
	$thnkus = nosql($_SESSION['thnkus']);



	//jika null
	if (empty($blnkus))
		{
		$month = round($bulan);
		$year = round($tahun);
		}
		
	else
		{
		//jika diatas 1
		if ($blnkus > 1)
			{
			$blnkusx = $blnkus - 1;
			$thnkusx = $thnkus;
			}
		
		//jika 1	
		if ($blnkus == 1)
			{
			$blnkusx = 12;
			$thnkusx = $thnkus - 1; 
			}
		
		
		
		
				
		$month = round($blnkusx);
		$year = round($thnkusx);
		}
	
	
	
	//buat sesi
	$_SESSION['blnkus'] = $month;
	$_SESSION['thnkus'] = $year;



	

	$x_bulan = $arrbln[$month];
	$x_tahun = $year;
	
	
	echo "<h3>$x_bulan $x_tahun</h3>";
	
	/* draw table */
	$calendar = '<table cellpadding="0" cellspacing="0" class="calendar">';
	
	/* table headings */
	$headings = array('Minggu','Senin','Selasa','Rabu','Kamis','Jumat','Sabtu');
	$calendar.= '<tr class="calendar-row"><td class="calendar-day-head">'.implode('</td><td class="calendar-day-head">',$headings).'</td></tr>';
	
	/* days and weeks vars now ... */
	$running_day = date('w',mktime(0,0,0,$month,1,$year));
	$days_in_month = date('t',mktime(0,0,0,$month,1,$year));
	$days_in_this_week = 1;
	$day_counter = 0;
	$dates_array = array();
	
	/* row for week one */
	$calendar.= '<tr class="calendar-row">';
	
	/* print "blank" days until the first of the current week */
	for($x = 0; $x < $running_day; $x++):
		$calendar.= '<td class="calendar-day-np"> </td>';
		$days_in_this_week++;
	endfor;
	
	/* keep going with days.... */
	for($list_day = 1; $list_day <= $days_in_month; $list_day++):
		$calendar.= '<td class="calendar-day">';
	
			/* add in the day number */
			$calendar.= '<div class="day-number">'.$list_day.'</div>';
	
			/** QUERY THE DATABASE FOR AN ENTRY FOR THIS DAY !!  IF MATCHES FOUND, PRINT THEM !! **/
			$calendar.= str_repeat('<p> </p>',2);
			
			
			
			//cek event
			$qku = mysql_query("SELECT * FROM cp_kalender_detail ".
									"WHERE round(DATE_FORMAT(tgli, '%d')) = '$list_day' ".
									"AND round(DATE_FORMAT(tgli, '%m')) = '$month' ".
									"AND round(DATE_FORMAT(tgli, '%Y')) = '$year'");
			$rku = mysql_fetch_assoc($qku);
			$tku = mysql_num_rows($qku);
			
			//jika ada agenda
			if (!empty($tku))
				{
				$ku_tanda = "<a id=\"tglx$list_day\" title=\"$tku Agenda\" class=\"btn btn-warning\"><font color=red><b>$tku</b></font></a>";
				}
			else
				{
				$ku_tanda = "";			
				}
									
			$xtglku = "$ku_tanda";
			
			
			
		$calendar.= ''.$xtglku.'</td>';
		if($running_day == 6):
			$calendar.= '</tr>';
			if(($day_counter+1) != $days_in_month):
				$calendar.= '<tr class="calendar-row">';
			endif;
			$running_day = -1;
			$days_in_this_week = 0;
		endif;
		$days_in_this_week++; $running_day++; $day_counter++;
	endfor;
	
	/* finish the rest of the days in the week */
	if($days_in_this_week < 8):
		for($x = 1; $x <= (8 - $days_in_this_week); $x++):
			$calendar.= '<td class="calendar-day-np"> </td>';
		endfor;
	endif;
	
	/* final row */
	$calendar.= '</tr>';
	
	/* end the table */
	$calendar.= '</table>';
	
	/* all done, return result */
	//return $calendar;
	
	
	
	
	
	
	
	
	
	
	
	?>
	
	
	<script>
	$(document).ready(function(){
	
	
	<?php
	for($list_day = 1; $list_day <= $days_in_month; $list_day++):
	?>
	
	  		$('#tglx<?php echo $list_day;?>').click(function() {
			     
			     $.ajax({
		             type: 'GET', 
			         url: 'i_kalender2.php?aksi=lihat', 
			         data: 'tglku=<?php echo $list_day;?>&blnku=<?php echo $month;?>&thnku=<?php echo $year;?>', 
			         success: function(response) { 
			              $('#ikalenderevent').html(response);
			            }
			       });
	              
	              
			    });
			 
	
	
	<?php
		$days_in_this_week++; $running_day++; $day_counter++;
	endfor;
	?>
	
	 
			
	
	
	
	
	  
	});
	</script>
	
	
	
	
	
	
	<?php
	echo $calendar;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//bikin kalender event /////////////////////////////////////////////////////////////////////////////////
	?>
	
	
	<div id="ikalenderevent"></div>


	<?php
	exit();
	}















//jika bln setelahnya
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'xbln2'))
	{
	//nilai
	$blnkus = nosql($_SESSION['blnkus']);
	$thnkus = nosql($_SESSION['thnkus']);



	//jika null
	if (empty($blnkus))
		{
		$month = round($bulan);
		$year = round($tahun);
		}
		
	else
		{
		//jika kurang 1
		if ($blnkus < 1)
			{
			$blnkusx = $blnkus + 1;
			$thnkusx = $thnkus;
			}
		
		//jika diatas 1
		if ($blnkus >= 1)
			{
			$blnkusx = $blnkus + 1;
			$thnkusx = $thnkus;
			}
		
		//jika 1	
		if ($blnkus == 12)
			{
			$blnkusx = 1;
			$thnkusx = $thnkus + 1; 
			}
		
		
		
		
				
		$month = round($blnkusx);
		$year = round($thnkusx);
		}
	
	
	
	//buat sesi
	$_SESSION['blnkus'] = $month;
	$_SESSION['thnkus'] = $year;



	

	$x_bulan = $arrbln[$month];
	$x_tahun = $year;
	

	$blnkus = nosql($_SESSION['blnkus']);
	$thnkus = nosql($_SESSION['thnkus']);

	
	echo "<h3>$x_bulan $x_tahun</h3>";
	
	/* draw table */
	$calendar = '<table cellpadding="0" cellspacing="0" class="calendar">';
	
	/* table headings */
	$headings = array('Minggu','Senin','Selasa','Rabu','Kamis','Jumat','Sabtu');
	$calendar.= '<tr class="calendar-row"><td class="calendar-day-head">'.implode('</td><td class="calendar-day-head">',$headings).'</td></tr>';
	
	/* days and weeks vars now ... */
	$running_day = date('w',mktime(0,0,0,$month,1,$year));
	$days_in_month = date('t',mktime(0,0,0,$month,1,$year));
	$days_in_this_week = 1;
	$day_counter = 0;
	$dates_array = array();
	
	/* row for week one */
	$calendar.= '<tr class="calendar-row">';
	
	/* print "blank" days until the first of the current week */
	for($x = 0; $x < $running_day; $x++):
		$calendar.= '<td class="calendar-day-np"> </td>';
		$days_in_this_week++;
	endfor;
	
	/* keep going with days.... */
	for($list_day = 1; $list_day <= $days_in_month; $list_day++):
		$calendar.= '<td class="calendar-day">';
	
			/* add in the day number */
			$calendar.= '<div class="day-number">'.$list_day.'</div>';
	
			/** QUERY THE DATABASE FOR AN ENTRY FOR THIS DAY !!  IF MATCHES FOUND, PRINT THEM !! **/
			$calendar.= str_repeat('<p> </p>',2);
			
			
			
			//cek event
			$qku = mysql_query("SELECT * FROM cp_kalender_detail ".
									"WHERE round(DATE_FORMAT(tgli, '%d')) = '$list_day' ".
									"AND round(DATE_FORMAT(tgli, '%m')) = '$month' ".
									"AND round(DATE_FORMAT(tgli, '%Y')) = '$year'");
			$rku = mysql_fetch_assoc($qku);
			$tku = mysql_num_rows($qku);
			
			//jika ada agenda
			if (!empty($tku))
				{
				$ku_tanda = "<a id=\"tglx$list_day\" title=\"$tku Agenda\" class=\"btn btn-warning\"><font color=red><b>$tku</b></font></a>";
				}
			else
				{
				$ku_tanda = "";			
				}
									
			$xtglku = "$ku_tanda";
			
			
			
		$calendar.= ''.$xtglku.'</td>';
		if($running_day == 6):
			$calendar.= '</tr>';
			if(($day_counter+1) != $days_in_month):
				$calendar.= '<tr class="calendar-row">';
			endif;
			$running_day = -1;
			$days_in_this_week = 0;
		endif;
		$days_in_this_week++; $running_day++; $day_counter++;
	endfor;
	
	/* finish the rest of the days in the week */
	if($days_in_this_week < 8):
		for($x = 1; $x <= (8 - $days_in_this_week); $x++):
			$calendar.= '<td class="calendar-day-np"> </td>';
		endfor;
	endif;
	
	/* final row */
	$calendar.= '</tr>';
	
	/* end the table */
	$calendar.= '</table>';
	
	/* all done, return result */
	//return $calendar;
	
	
	
	
	
	
	
	
	
	
	
	?>
	
	
	<script>
	$(document).ready(function(){
	
	
	<?php
	for($list_day = 1; $list_day <= $days_in_month; $list_day++):
	?>
	
	  		$('#tglx<?php echo $list_day;?>').click(function() {
			     
			     $.ajax({
		             type: 'GET', 
			         url: 'i_kalender2.php?aksi=lihat', 
			         data: 'tglku=<?php echo $list_day;?>&blnku=<?php echo $month;?>&thnku=<?php echo $year;?>', 
			         success: function(response) { 
			              $('#ikalenderevent').html(response);
			            }
			       });
	              
	              
			    });
			 
	
	
	<?php
		$days_in_this_week++; $running_day++; $day_counter++;
	endfor;
	?>
	
	 
			
	
	
	
	
	  
	});
	</script>
	
	
	
	
	
	
	<?php
	echo $calendar;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//bikin kalender event /////////////////////////////////////////////////////////////////////////////////
	?>
	
	
	<div id="ikalenderevent"></div>


	<?php
	exit();
	}












//jika nyata
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'nyata'))
	{
	$month = round($bulan);
	$year = round($tahun);



	$x_bulan = $arrbln[$month];
	$x_tahun = $year;
	


	//buat sesi
	$_SESSION['blnkus'] = $month;
	$_SESSION['thnkus'] = $year;


	
	echo "<h3>$x_bulan $x_tahun</h3>";
	
	/* draw table */
	$calendar = '<table cellpadding="0" cellspacing="0" class="calendar">';
	
	/* table headings */
	$headings = array('Minggu','Senin','Selasa','Rabu','Kamis','Jumat','Sabtu');
	$calendar.= '<tr class="calendar-row"><td class="calendar-day-head">'.implode('</td><td class="calendar-day-head">',$headings).'</td></tr>';
	
	/* days and weeks vars now ... */
	$running_day = date('w',mktime(0,0,0,$month,1,$year));
	$days_in_month = date('t',mktime(0,0,0,$month,1,$year));
	$days_in_this_week = 1;
	$day_counter = 0;
	$dates_array = array();
	
	/* row for week one */
	$calendar.= '<tr class="calendar-row">';
	
	/* print "blank" days until the first of the current week */
	for($x = 0; $x < $running_day; $x++):
		$calendar.= '<td class="calendar-day-np"> </td>';
		$days_in_this_week++;
	endfor;
	
	/* keep going with days.... */
	for($list_day = 1; $list_day <= $days_in_month; $list_day++):
		$calendar.= '<td class="calendar-day">';
	
			/* add in the day number */
			$calendar.= '<div class="day-number">'.$list_day.'</div>';
	
			/** QUERY THE DATABASE FOR AN ENTRY FOR THIS DAY !!  IF MATCHES FOUND, PRINT THEM !! **/
			$calendar.= str_repeat('<p> </p>',2);
			
			
			
			//cek event
			$qku = mysql_query("SELECT * FROM cp_kalender_detail ".
									"WHERE round(DATE_FORMAT(tgli, '%d')) = '$list_day' ".
									"AND round(DATE_FORMAT(tgli, '%m')) = '$month' ".
									"AND round(DATE_FORMAT(tgli, '%Y')) = '$year'");
			$rku = mysql_fetch_assoc($qku);
			$tku = mysql_num_rows($qku);
			
			//jika ada agenda
			if (!empty($tku))
				{
				$ku_tanda = "<a id=\"tglx$list_day\" title=\"$tku Agenda\" class=\"btn btn-warning\"><font color=red><b>$tku</b></font></a>";
				}
			else
				{
				$ku_tanda = "";			
				}
									
			$xtglku = "$ku_tanda";
			
			
			
		$calendar.= ''.$xtglku.'</td>';
		if($running_day == 6):
			$calendar.= '</tr>';
			if(($day_counter+1) != $days_in_month):
				$calendar.= '<tr class="calendar-row">';
			endif;
			$running_day = -1;
			$days_in_this_week = 0;
		endif;
		$days_in_this_week++; $running_day++; $day_counter++;
	endfor;
	
	/* finish the rest of the days in the week */
	if($days_in_this_week < 8):
		for($x = 1; $x <= (8 - $days_in_this_week); $x++):
			$calendar.= '<td class="calendar-day-np"> </td>';
		endfor;
	endif;
	
	/* final row */
	$calendar.= '</tr>';
	
	/* end the table */
	$calendar.= '</table>';
	
	/* all done, return result */
	//return $calendar;
	
	
	
	
	
	
	
	
	
	
	
	?>
	
	
	<script>
	$(document).ready(function(){
	
	
	<?php
	for($list_day = 1; $list_day <= $days_in_month; $list_day++):
	?>
	
	  		$('#tglx<?php echo $list_day;?>').click(function() {
			     
			     $.ajax({
		             type: 'GET', 
			         url: 'i_kalender2.php?aksi=lihat', 
			         data: 'tglku=<?php echo $list_day;?>&blnku=<?php echo $month;?>&thnku=<?php echo $year;?>', 
			         success: function(response) { 
			              $('#ikalenderevent').html(response);
			            }
			       });
	              
	              
			    });
			 
	
	
	<?php
		$days_in_this_week++; $running_day++; $day_counter++;
	endfor;
	?>
	
	 
			
	
	
	
	
	  
	});
	</script>
	
	
	
	
	
	
	<?php
	echo $calendar;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//bikin kalender event /////////////////////////////////////////////////////////////////////////////////
	?>
	
	
	<div id="ikalenderevent"></div>


	<?php
	exit();
	}
















//jika simpan
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'lihat'))
	{
	//ambil nilai
	$tglku = cegah($_GET['tglku']);
	$blnku = cegah($_GET['blnku']);
	$thnku = cegah($_GET['thnku']);



	echo '<br>
	<div class="info-box">
        <span class="info-box-icon bg-orange">'.$tglku.'</span>

        <div class="info-box-content">';
		
			//cek event
			$qku = mysql_query("SELECT * FROM cp_kalender_detail ".
									"WHERE round(DATE_FORMAT(tgli, '%d')) = '$tglku' ".
									"AND round(DATE_FORMAT(tgli, '%m')) = '$blnku' ".
									"AND round(DATE_FORMAT(tgli, '%Y')) = '$thnku'");
			$rku = mysql_fetch_assoc($qku);
			$tku = mysql_num_rows($qku);
			
			do
				{
				//nilai
				$ku_judul = balikin($rku['judul']);
		
				
				echo "<p>$ku_judul</p>
				<hr>";	
				}
			while ($rku = mysql_fetch_assoc($qku));
		


        echo '</div>
      </div>';
	

	
	exit();
	}





exit();
?>