<script type='text/javascript' language='javascript' src='<?php echo HTTP_SERVER.DIR_VIEW?>js/menu-collapsed.js'></script>
                    <div id="left-menu">
                    	<div id="left-menu-header"><div>SẢN PHẨM</div></div>
                        <div id="left-menu-body">
                        	<ul id="menu">
                                <?php echo $menu?>
                            </ul>
                        </div>
                        <div id="left-menu-footer"></div>
                    </div>
<script language="javascript">
$(document).ready(function(){
	<?php foreach($path as $item){ ?>
	$("#<?php echo $item['sitemapid']?>").show();
	<?php } ?>
});
</script>