<?php

//detail
$qku = mysql_query("SELECT * FROM cp_profil");
$rku = mysql_fetch_assoc($qku);
$ku_nama = balikin($rku['judul']);
$ku_isi = balikin($rku['isi']);
$ku_telp = balikin($rku['telp']);
$ku_fax = balikin($rku['fax']);
$ku_email = balikin($rku['email']);
$ku_fb = balikin($rku['fb']);
$ku_twitter = balikin($rku['twitter']);
$ku_instagram = balikin($rku['instagram']);
$ku_youtube = balikin($rku['youtube']);
$ku_wa = balikin($rku['wa']);
$ku_alamat = balikin($rku['alamat']);
$ku_alamat_googlemap = balikin($rku['alamat_googlemap']);




?>
        <div class="container">
            <div class="row">
                <!-- Footer Widget Area -->
                <div class="col-12 col-sm-6 col-md-3">

                    <div class="footer-widget">
                        <h6 class="widget-title"><?php echo $ku_nama;?></h6>
						
						<p>
							<?php echo $ku_isi;?>
						</p>
						
						
                            
		                        <ul class="list">
		                            <li>
		                            	<p>
		                            		<a href="http://<?php echo $ku_fb;?>" target="_blank"><img src="<?php echo $sumber;?>/template/sosmed/036-facebook.png" width="32"></a> 
		
		                            		<a href="http://<?php echo $ku_twitter;?>" target="_blank"><img src="<?php echo $sumber;?>/template/sosmed/008-twitter.png" width="32"></a>
		
		                            		<a href="http://<?php echo $ku_instagram;?>" target="_blank"><img src="<?php echo $sumber;?>/template/sosmed/029-instagram.png" width="32"></a>
		
		                            		<a href="http://<?php echo $ku_youtube;?>" target="_blank"><img src="<?php echo $sumber;?>/template/sosmed/001-youtube.png" width="32"></a>		
		
		                            		<a href="http://wa.me//<?php echo $ku_wa;?>" target="_blank"><img src="<?php echo $sumber;?>/template/sosmed/005-whatsapp.png" width="32"></a>
		                            	</p>
									</li>
									
		                        </ul>
						</div>
                    
                </div>

                <!-- Footer Widget Area -->
                <div class="col-12 col-sm-6 col-lg-2">
                    <div class="footer-widget">
                        <h6 class="widget-title">KATEGORI</h6>

                        	
                        	<?php
                        	echo "<ul>";

							//keahlian
							$qyuk2 = mysql_query("SELECT * FROM cp_m_kategori ".
													"ORDER BY nama ASC");
							$ryuk2 = mysql_fetch_assoc($qyuk2);
							
							do
								{
								//nilai
								$yuk2_kd = nosql($ryuk2['kd']);
								$yuk2_kode = balikin($ryuk2['kode']);
								$yuk2_nama = balikin($ryuk2['nama']);
								$yuk2_filex = balikin($ryuk2['filex1']);
								
								
								$yuk2_postdate = balikin($ryuk2['postdate']);
								$yuk2_nama2 = seo_friendly_url($yuk2_nama);
								
								
								echo '<li><a href="kategori.php?katkd='.$yuk2_kd.'&'.$yuk2_nama2.'"><i class="fa fa-angle-double-right" class="footer-widget-nav" aria-hidden="true"></i> '.$yuk2_nama.'</a></li>';
								}
							while ($ryuk2 = mysql_fetch_assoc($qyuk2));
							
							echo '</ul>';
							?>                            
                            
                    </div>
                </div>




                <!-- Footer Widget Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="footer-widget">
                        <h6 class="widget-title">TERBARU</h6>

                        	
                        	<?php
							//terbaru
							$qyuk2 = mysql_query("SELECT * FROM cp_artikel ".
													"ORDER BY postdate DESC LIMIT 0,5");
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
								$yuk_judul2 = seo_friendly_url($yuk_judul);
								
								echo '<div class="single-blog-post d-flex">
							        <div class="post-thumbnail">
							            <img src="'.$sumber.'/filebox/artikel/'.$yuk2_kd.'/'.$yuk2_filex.'" alt="'.$yuk2_judul.'">
							        </div>
							        <div class="post-content">
							            <a href="artikel.php?artkd='.$yuk2_kd.'&'.$yuk_judul2.'" class="post-title">'.$yuk2_judul.'</a>
							            <div class="post-meta d-flex">
							                <a href="artikel.php?artkd='.$yuk2_kd.'&'.$yuk_judul2.'"><i class="fa fa-eye" aria-hidden="true"></i> '.$yuk2_jml_dilihat.'</a>
							                &nbsp;&nbsp;
							                <a href="artikel.php?artkd='.$yuk2_kd.'&'.$yuk_judul2.'"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> '.$yuk2_jml_suka.'</a>
							                &nbsp;&nbsp;
							                <a href="artikel.php?artkd='.$yuk2_kd.'&'.$yuk_judul2.'"><i class="fa fa-comments-o" aria-hidden="true"></i> '.$yuk2_jml_komentar.'</a>
							                &nbsp;&nbsp;
							
											
							            </div>
							        </div>
							    </div>';
							
								}
							while ($ryuk2 = mysql_fetch_assoc($qyuk2));
							                        	
							?>                            
                            
                    </div>
                </div>







                <!-- Footer Widget Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="footer-widget">
                        <h6 class="widget-title">VISITOR</h6>
						
						
						<?php
							//ketahui ip
							function get_client_ip_env() {
								$ipaddress = '';
							if (getenv('HTTP_CLIENT_IP'))
								$ipaddress = getenv('HTTP_CLIENT_IP');
							else if(getenv('HTTP_X_FORWARDED_FOR'))
								$ipaddress = getenv('HTTP_X_FORWARDED_FOR');
							else if(getenv('HTTP_X_FORWARDED'))
								$ipaddress = getenv('HTTP_X_FORWARDED');
							else if(getenv('HTTP_FORWARDED_FOR'))
								$ipaddress = getenv('HTTP_FORWARDED_FOR');
							else if(getenv('HTTP_FORWARDED'))
								$ipaddress = getenv('HTTP_FORWARDED');
							else if(getenv('REMOTE_ADDR'))
								$ipaddress = getenv('REMOTE_ADDR');
							else
								$ipaddress = 'UNKNOWN';
							
								return $ipaddress;
							}
							
							
							$ipku = get_client_ip_env();
							
							
							
							
							
							
							
							//netralkan semua, jam sebelumnya
							mysql_query("UPDATE cp_visitor SET online = 'false' ".
										"WHERE round(DATE_FORMAT(postdate, '%H')) < '$jam' ".
										"AND round(DATE_FORMAT(postdate, '%d')) = '$tanggal' ".
										"AND round(DATE_FORMAT(postdate, '%m')) = '$bulan' ".
										"AND round(DATE_FORMAT(postdate, '%Y')) = '$tahun'");
							
							
							
							
							
							
							
							//masukin ke database, yang online... dan statusnya...
							mysql_query("INSERT INTO cp_visitor(kd, ipnya, online, postdate) VALUES ".
										"('$x', '$ipku', 'true', '$today')");
							
							
							
							
							
							
							
							
							//detailnya, online
							$qkun = mysql_query("SELECT DISTINCT(ipnya) AS ipya ".
												"FROM cp_visitor ".
												"WHERE online = 'true' ".
												"AND round(DATE_FORMAT(postdate, '%d')) = '$tanggal' ".
												"AND round(DATE_FORMAT(postdate, '%m')) = '$bulan' ".
												"AND round(DATE_FORMAT(postdate, '%Y')) = '$tahun'");
							$tkun = mysql_num_rows($qkun);
							$nilx = $tkun;
							
							
							
							
							
							//detailnya, hari ini
							$qkun = mysql_query("SELECT * FROM cp_visitor ".
												"WHERE round(DATE_FORMAT(postdate, '%d')) = '$tanggal' ".
												"AND round(DATE_FORMAT(postdate, '%m')) = '$bulan' ".
												"AND round(DATE_FORMAT(postdate, '%Y')) = '$tahun'");
							$tkun = mysql_num_rows($qkun);
							$nil1 = $tkun;
							
							
							
							
							
							//detailnya, bulan ini
							$qkun = mysql_query("SELECT * FROM cp_visitor ".
												"WHERE round(DATE_FORMAT(postdate, '%m')) = '$bulan' ".
												"AND round(DATE_FORMAT(postdate, '%Y')) = '$tahun'");
							$tkun = mysql_num_rows($qkun);
							$nil2 = $tkun;
							
							
							
							//detailnya, total
							$qkun = mysql_query("SELECT * FROM cp_visitor");
							$tkun = mysql_num_rows($qkun);
							$nil3 = $tkun;
							
							?>
							
							
							<!-- Stylesheet -->
							<link rel="stylesheet" type="text/css" href="<?php echo $sumber;?>/template/counter/css/styles.css">
							
							<!-- Fonts -->
							<link href="https://fonts.googleapis.com/css?family=Press+Start+2P|Roboto+Condensed" rel="stylesheet">
							
							
							
							<div class="counting-container">
								<div class="counting-box" id="encounter">
									<h4><font color="orange"><?php echo $nilx;?></font></h4>
									<p>Online</p>
								</div>
								
								<div class="counting-box" id="encounter">
									<h4><font color="orange"><?php echo $nil1;?></font></h4>
									<p>Hari ini</p>
								</div>
							</div>
							
							
							<div class="counting-container">
								
								<div class="counting-box" id="battles">
									<h4><font color="orange"><?php echo $nil2;?></font></h4>
									<p>Bulan ini</p>
								</div>
								<div class="counting-box" id="locations">
									<h4><font color="orange"><?php echo $nil3;?></font></h4>
									<p>Total</p>
								</div>
							</div>
							
							
							
							Your IP : <b><?php echo $ipku;?></b> 
							
							
							<!-- JavaScript -->
							<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
							<script type="text/javascript" src="<?php echo $sumber;?>/template/counter/js/counter.js"></script>
							
												
						



                    </div>
                </div>
            </div>
        </div>

        <!-- Copywrite Area -->
        <div class="copywrite-area">
            <div class="container">
                <div class="row">
                    <!-- Copywrite Text -->
                    <div class="col-12 col-sm-12">
                    	2019. {versi}
                    </div>
                </div>
            </div>
        </div>
