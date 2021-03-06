<link rel="stylesheet" type="text/css" href="<?php echo HTTP_SERVER.DIR_VIEW?>css/jquery.ad-gallery.css" media="screen" />
<script type="text/javascript" src="<?php echo HTTP_SERVER.DIR_VIEW?>js/jquery.ad-gallery.js"></script>
<script type="text/javascript">
  $(function() {
   
    var galleries = $('.ad-gallery').adGallery();
    $('#switch-effect').change(
      function() {
        galleries[0].settings.effect = $(this).val();
        return false;
      }
    );
    $('#toggle-slideshow').click(
      function() {
        galleries[0].slideshow.toggle();
        return false;
      }
    );
    $('#toggle-description').click(
      function() {
        if(!galleries[0].settings.description_wrapper) {
          galleries[0].settings.description_wrapper = $('#descriptions');
        } else {
          galleries[0].settings.description_wrapper = false;
        }
        return false;
      }
    );
  });
  </script>

  <style type="text/css">
  

  #gallery {
   
    background: #FFFFFF;
	margin:10px;
  }
  #descriptions {
    position: relative;
    height: 50px;
    background: #EEE;
    margin-top: 10px;
    width: 640px;
    padding: 10px;
    overflow: hidden;
  }
    #descriptions .ad-image-description {
      position: absolute;
    }
      #descriptions .ad-image-description .ad-description-title {
        display: block;
      }
  </style>

<div id="gallery" class="ad-gallery">
    <div class="ad-image-wrapper"></div>
    
    <div class="ad-nav">
        <div class="ad-thumbs">
            <ul class="ad-thumb-list">
            	<?php foreach($medias as $media) {?>
                <li>
                    <a href="<?php echo $media['imagethumbnail']?>">
                    	<img src="<?php echo $media['imagethumbnail']?>" title="<?php echo $media['title']?>" alt="" height="60px">
                    </a>
                </li>
               <?php } ?>
            </ul>
        </div>
    </div>
</div>
