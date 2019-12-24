<?php
echo '<ul>
    <li class="active"><a href="'.$sumber.'">BERANDA</a></li>';
    
	
	//list menu
	$qyuk = mysql_query("SELECT * FROM cp_m_menu ".
							"ORDER BY round(no) ASC");
	$ryuk = mysql_fetch_assoc($qyuk);
	
	do
		{
		//nilai
		$yuk_kd = nosql($ryuk['kd']);
		$yuk_nama = balikin($ryuk['nama']);
		
		
	    echo '<li><a href="#">'.$yuk_nama.'</a>
		<ul class="dropdown">';
		
		
		//rincian submenu
		$qyuk2 = mysql_query("SELECT * FROM cp_m_submenu ".
								"WHERE kd_menu = '$yuk_kd' ".
								"ORDER BY round(no) ASC");
		$ryuk2 = mysql_fetch_assoc($qyuk2);
		
		do
			{
			//nilai
			$yuk2_kd = nosql($ryuk2['kd']);
			$yuk2_artkd = nosql($ryuk2['kd_artikel']);
			$yuk2_nama = balikin($ryuk2['nama']);
			$yuk2_nama2 = seo_friendly_url($yuk2_nama);
			
	        echo '<li><a href="artikel.php?artkd='.$yuk2_artkd.'&'.$yuk2_nama2.'">'.$yuk2_nama.'</a></li>';
			}
		while ($ryuk2 = mysql_fetch_assoc($qyuk2));
			
			
	    echo '</ul>
	    </li>';
		}
	while ($ryuk = mysql_fetch_assoc($qyuk));

    echo '<li><a href="hubungi_kami.php">HUBUNGI KAMI</a></li>
</ul>';
?>
                                