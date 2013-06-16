<div class="ben-section">
	<div class="ben-section-title">Tìm kiếm sản phẩm</div>
    <div id="ben-searchform" class="ben-section-content">
    	<table>
        	<tr>
            	<td>Tên sản phẩm:</td>
                <td><input type="text" class="ben-textbox" id="txt_search" name="txt_search" value="<?php echo $_GET['keyword']?>"></td>
            </tr>
        </table>
         
        <p>
            <select name="loaisp" id="loaisp">
                <option value="">Loại sản phẩm</option>
                <?php foreach($loaisp as $it){ ?>
                <option value="<?php echo $it['sitemapid']?>"><?php echo $this->string->getPrefix("&nbsp;&nbsp;&nbsp;&nbsp;",$it['level']) ?><?php echo $it['sitemapname']?></option>                        
                <?php } ?>
            </select>
        </p>
        <p>
            <select name="nhomsp" id="nhomsp">
                <option value="">Nhóm sản phẩm</option>
                <?php foreach($nhomsp as $it){ ?>
                <option value="<?php echo $it['categoryid']?>"><?php echo $this->string->getPrefix("&nbsp;&nbsp;&nbsp;&nbsp;",$it['level']) ?><?php echo $it['categoryname']?></option>                        
                <?php } ?>
            </select>
        </p>
        
    	<center>
        	<input type="button" class="ben-button" id="btnSearch" value="Tìm sản phẩm">
        </center>
    </div>
</div>
<script language="javascript">
$("#btnSearch").click(function(){
	var url =  HTTP_SERVER+"product/search/";
	var keyword = trim($("#txt_search").val()," ");
	
	if($("#loaisp").val() != "")
		url += "[loaisp=" + $("#loaisp").val()+"]";
	if($("#nhomsp").val() != "")
		url += "[nhomsp="+ $("#nhomsp").val()+"]";
	
	if($("#keyword").val() != "")
		url += "[keyword=" + keyword+"]";
	
	
	if("<?php echo $_GET['opendialog']?>" == "true")
	{
		url += "&opendialog=true";
	}
	
	window.location = url+".html";
});
$("#loaisp").val("<?php echo $_GET['loaisp']?>");
$("#nhomhuong").val("<?php echo $_GET['nhomhuong']?>");
$("#nhanhieu").val("<?php echo $_GET['nhanhieu']?>");
$("#gia").val("<?php echo $_GET['gia']?>");
$("#keyword").val("<?php echo $_GET['keyword']?>");
</script>