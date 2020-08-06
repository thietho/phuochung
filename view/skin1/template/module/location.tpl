<div id="desscription" style="display:none">
	<strong><?php echo $item['title']?></strong><br><?php echo html_entity_decode($item['description'])?>
</div>
<div style="display:none">
<?php foreach($chinhanhs as $key => $chinhanh){ ?>
	<div class="chinhanh" id="ch-<?php echo $key?>" x="<?php echo $chinhanh['x']?>" y="<?php echo $chinhanh['y']?>"><?php echo $chinhanh['description']?></div>
<?php } ?>
</div>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script type="text/javascript">

var pos = 0;
var flagedit=false;
var x = parseFloat("<?php echo $location['x']?>");
var y = parseFloat("<?php echo $location['y']?>");
//var zoom = parseInt("<?php echo $location['zoom']?>");
var zoom = 14;	


function initialize(x,y,zoom) 
{
	
	geocoder = new google.maps.Geocoder();
	var latlng = new google.maps.LatLng(x, y);
	var myOptions = 
	{
	  zoom: zoom,
	  center: latlng,
	  mapTypeId: google.maps.MapTypeId.ROADMAP
	}
	map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
	
	markerobj = new google.maps.Marker({
			map: map, 
			position: latlng,
			animation: google.maps.Animation.DROP,
			draggable:false
					});
	 var contentString = $("#desscription").html();
        
    var infowindow = new google.maps.InfoWindow({
        content: contentString,
        maxWidth: 200
    });
	google.maps.event.addListener(markerobj, 'click', function() {
      infowindow.open(map,markerobj);
	  toggleBounce(markerobj);
    });
	
	$('.chinhanh').each(function(index, element) {
        var xy = new google.maps.LatLng(parseFloat(Number($(this).attr('x'))), parseFloat(Number($(this).attr('y'))));
		var marker = new google.maps.Marker({
			map: map, 
			position: xy,
			animation: google.maps.Animation.DROP,
			draggable:false
					});
		var contentString = $(this).html();
        
		var infowindow = new google.maps.InfoWindow({
			content: contentString,
			maxWidth: 200
		});
		google.maps.event.addListener(marker, 'click', function() {
		  infowindow.open(map,marker);
		  toggleBounce(marker);
		});
    });
}
function toggleBounce(marker) {

  if (marker.getAnimation() != null) {
    marker.setAnimation(null);
  } else {
    marker.setAnimation(google.maps.Animation.BOUNCE);
  }
}

</script>
<div id="map_canvas" style="width: 100%; height: 500px;"></div>
<script language="javascript">

	initialize(x,y,zoom);
	
</script>
 