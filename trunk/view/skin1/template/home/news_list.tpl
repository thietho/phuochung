				<div class="ben-home-news">
                    <table>
                    	<tr>
                        	<td width="62%">
                            	<p class="ben-home-news-main">
                            	 <strong><a href="<?php echo $medias[0]['link']?>"><?php echo $medias[0]['title']?></a></strong></p>
                            	<a href="<?php echo $medias[0]['link']?>"><img src="<?php echo $medias[0]['imagethumbnail']?>" class="ben-left"/></a>
                                <?php echo $medias[0]['summary']?>
                                <br />
                                <a href="<?php echo $medias[0]['link']?>" class="ben-readmore ben-right">Đọc thêm</a>
                                <div class="clearer">&nbsp;</div>
                                <div class="ben-hline"></div>
                                <div class="ben-left ben-home-news-left">
                                	<table>
                                    	<tr>
                                        	<td class="news-title" style="vertical-align:central !important"><a href="<?php echo $medias[1]['link']?>"><?php echo $medias[1]['title']?></a></td>
                                        </tr>
                                        <tr>
                                        	<td><a href="<?php echo $medias[1]['link']?>"><img src="<?php echo $medias[1]['imagethumbnail']?>"/></a></td>
                                        </tr>
                                    </table>
                                    	
                                        
                                    
                                </div>
                                <div class="ben-left ben-vline"></div>
                                <div class="ben-left ben-home-news-left">
                                	<table>
                                    	<tr>
                                        	<td class="news-title"><a href="<?php echo $medias[2]['link']?>"><?php echo $medias[2]['title']?></a></td>
                                        </tr>
                                        <tr>
                                        	<td><a href="<?php echo $medias[2]['link']?>"><img src="<?php echo $medias[2]['imagethumbnail']?>"/></a></td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="ben-left ben-vline"></div>
                                <div class="ben-left ben-home-news-left">
                                	<table>
                                    	<tr>
                                        	<td class="news-title"><a href="<?php echo $medias[3]['link']?>"><?php echo $medias[3]['title']?></a></td>
                                        </tr>
                                        <tr>
                                        	<td><a href="<?php echo $medias[3]['link']?>"><img src="<?php echo $medias[3]['imagethumbnail']?>"/></a></td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="clearer">&nbsp;</div>
                            </td>
                            <td style="border-left:thin solid #e0dfdf;vertical-align:top;">
                            	<ul>
                            	<?php for($i=4;$i<count($medias);$i++){ ?>
                                	<li>
                                		<a href="<?php echo $medias[$i]['link']?>"><?php echo $medias[$i]['title']?></a>
                                	</li>
                                <?php } ?>
                                </ul>
                                <div class="ben-home-view-all-news">
                                <a href="#"><strong>Xem tất cả</strong></a>
                                </div>
                            </td>
                        </tr>
                    </table>
				</div>
                   
                        

							