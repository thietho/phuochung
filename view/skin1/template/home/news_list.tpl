				<div class="ben-home-news">
                    <table>
                    	<tr>
                        	<td width="62%">
                            	<p class="ben-home-news-main">
                            	 <strong><a href="<?php echo $medias[0]['link']?>"><?php echo $medias[0]['title']?></a></strong></p>
                            	<a href="<?php echo $medias[0]['link']?>"><img src="<?php echo $medias[0]['imagethumbnail']?>" class="ben-left"/></a>
                                <?php echo $medias[0]['summary']?>
                                <div class="clearer">&nbsp;</div>
                                <div class="ben-left ben-home-news-left">
                                	<table>
                                    	<tr>
                                        	<td class="news-title"><a href="<?php echo $medias[1]['link']?>"><?php echo $medias[1]['title']?></a></td>
                                        </tr>
                                        <tr>
                                        	<td><a href="<?php echo $medias[1]['link']?>"><img src="<?php echo $medias[1]['imagethumbnail']?>"/></a></td>
                                        </tr>
                                    </table>
                                    	
                                        
                                    
                                </div>
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
                            <td>
                            </td>
                        </tr>
                    </table>
                    <div>
                        
<?php foreach($medias as $key => $media) {?>
	
                        <div class="ben-news-item ben-left">
                        	<table>
                            	<tr>
                                	<td>
                                    	<a href="<?php echo $media['link']?>"><img src="<?php echo $media['imagethumbnail']?>" /></a>
                                        
                                    </td>
                                    <td>
                                    	<p>
                                            <strong><a href="<?php echo $media['link']?>"><?php echo $media['title']?></a></strong><br/>
                                            <?php echo $this->string->getTextLength($media['summary'],0,15)?>...
                                        </p>
                                    	<p class="ben-right"><a class="ben-right do" href="<?php echo $media['link']?>">Chi tiết >></a></p>
                            			<div class="clearer"></div>
                                    </td>
                                </tr>
                            </table>                	
                            
                            
                        </div>
								
<?php } ?>                	
						<div class="clearer">&nbsp;</div>
                    </div>
                </div>
                <div class="clearer">&nbsp;</div>
							