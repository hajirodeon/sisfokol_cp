<?php
//katamutiara
$qyuk2 = mysqli_query($koneksi, "SELECT * FROM cp_katamutiara ".
						"ORDER BY RAND()");
$ryuk2 = mysqli_fetch_assoc($qyuk2);
//nilai
$yuk2_kd = nosql($ryuk2['kd']);
$yuk2_isi = balikin($ryuk2['isi']);
$yuk2_oleh = balikin($ryuk2['oleh']);


echo '<blockquote class="quote-card">
<p>
"<i>'.$yuk2_isi.'</i>"
</p>


***'.$yuk2_oleh.'.


</blockquote>';


?>