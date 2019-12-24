<?php
//headline
$qyuk2 = mysql_query("SELECT * FROM cp_m_posisi ".
						"ORDER BY nama ASC");
$ryuk2 = mysql_fetch_assoc($qyuk2);

do
	{
	//nilai
	$yuk2_kd = nosql($ryuk2['kd']);
	$yuk2_artkd = nosql($ryuk2['kd_artikel']);



	//artikel e
	$qyuk = mysql_query("SELECT * FROM cp_artikel ".
							"WHERE kd_posisi = '$yuk2_kd'");
	$ryuk = mysql_fetch_assoc($qyuk);
	$yuk_kd = nosql($ryuk['kd']);
	$yuk_judul = balikin($ryuk['judul']);
	$yuk_filex = balikin($ryuk['filex']);
	$yuk_judul2 = seo_friendly_url($yuk_judul);
	
	
	

    echo '<div class="single-trending-post">
            <img src="'.$sumber.'/filebox/artikel/'.$yuk_kd.'/'.$yuk_filex.'" alt="'.$yuk_judul.'">
            <div class="post-content">
                <a href="artikel.php?artkd='.$yuk_kd.'&'.$yuk_judul2.'" class="post-cata">HEADLINE</a>
                <a href="artikel.php?artkd='.$yuk_kd.'&'.$yuk_judul2.'" class="post-title">'.$yuk_judul.'</a>
            </div>
      </div>';

	}
while ($ryuk2 = mysql_fetch_assoc($qyuk2));

?>





