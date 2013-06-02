<div class="ben-section">

	<div class="ben-section-title">Sản phẩm tiêu biểu</div>
    
    <div class="ben-section-content">
    	<div class="marquee" id="mycrawler">

        <?php foreach($medias as $media) {?>
            <?php if($media['imagethumbnail']){ ?>
            
            <a href="<?php echo $media['link']?>" title="<?php echo $media['title']?>">
                <img src="<?php echo $media['imagethumbnail']?>" />
            </a>
            <?php } ?>
        <?php } ?>
        </div>
    	
    	
    </div>

</div>


<script type='text/javascript' language='javascript' src='<?php echo HTTP_SERVER.DIR_JS?>crawler.js'></script>




<script type="text/javascript">
$(document).ready(function(e) {
	
    setTimeout('runbanner()',1000);
	
});

function runbanner()
{
	marqueeInit({
		uniqueid: 'mycrawler',
		style: {
			'padding': '2px',
			
			'height': '180px',
			'width': '100%',
		},
		inc: 5, //speed - pixel increment for each iteration of this marquee's movement
		mouse: 'cursor driven', //mouseover behavior ('pause' 'cursor driven' or false)
		moveatleast: 2,
		neutral: 150,
		savedirection: true,
		random: true,
		direction: 'left',
	});
	
}
</script>