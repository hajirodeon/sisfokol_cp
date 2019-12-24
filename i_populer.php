<?php
//populer
$qyuk2 = mysql_query("SELECT * FROM cp_artikel ".
						"ORDER BY round(jml_dilihat) DESC LIMIT 0,5");
$ryuk2 = mysql_fetch_assoc($qyuk2);

do
	{
	//nilai
	$yuk2_kd = nosql($ryuk2['kd']);
	$yuk2_filex = balikin($ryuk2['filex']);
	$yuk2_judul = balikin($ryuk2['judul']);
	$yuk2_isi = balikin($ryuk2['isi']);
	$yuk2_jml_dilihat = nosql($ryuk2['jml_dilihat']);
	$yuk2_jml_suka = nosql($ryuk2['jml_suka']);
	$yuk2_jml_komentar = nosql($ryuk2['jml_komentar']);
	
	$yuk2_postdate = balikin($ryuk2['postdate']);
	$yuk2_judul2 = seo_friendly_url($yuk2_judul);
	
	echo '<div class="single-blog-post d-flex">
        <div class="post-thumbnail">
            <img src="'.$sumber.'/filebox/artikel/'.$yuk2_kd.'/'.$yuk2_filex.'" alt="'.$yuk2_judul.'">
        </div>
        <div class="post-content">
            <a href="artikel.php?artkd='.$yuk2_kd.'&'.$yuk2_judul2.'" class="post-title">'.$yuk2_judul.'</a>
            <div class="post-meta d-flex">
                <a href="artikel.php?artkd='.$yuk2_kd.'&'.$yuk2_judul2.'"><i class="fa fa-eye" aria-hidden="true"></i> '.$yuk2_jml_dilihat.'</a>
                &nbsp;&nbsp;
                <a href="artikel.php?artkd='.$yuk2_kd.'&'.$yuk2_judul2.'"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> '.$yuk2_jml_suka.'</a>
                &nbsp;&nbsp;
                <a href="artikel.php?artkd='.$yuk2_kd.'&'.$yuk2_judul2.'"><i class="fa fa-comments-o" aria-hidden="true"></i> '.$yuk2_jml_komentar.'</a>
                &nbsp;&nbsp;

				
            </div>
        </div>
    </div>';

	}
while ($ryuk2 = mysql_fetch_assoc($qyuk2));
?>