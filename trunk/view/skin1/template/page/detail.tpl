<div class="ben-two-columns">
	<div class="ben-sidebar ben-left">
    	<?php foreach($leftsitebar as $item){ ?>
        <?php echo $item?>
        <?php } ?>
    </div>
    
	<div class="ben-left" id="ben-maincontent">
    	<div class="ben-section">
        	<div class=" ben-section-title">
            	<?php echo $this->document->breadcrumb?>
            </div>
            <div class=" ben-section-content">
            	<?php echo $module?>
            </div>
        	
            
            
        	
        </div>
    </div>
    
    <div class="clearer">&nbsp;</div>

</div>
<script language="javascript">
$(document).ready(function(e) {
    $(this).scrollTop(500);
	ctop = $(window).height() - 300 + $(this).scrollTop();
	$('.ben-sroll-bar').css('top', ctop + 'px');
	sitebarMove();
});
</script>