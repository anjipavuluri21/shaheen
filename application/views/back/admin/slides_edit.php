<?php
	foreach($slides_data as $row){
?>
    <div>
        <?php
			echo form_open(base_url() . 'admin/slides/update/' . $row['slides_id'], array(
				'class' => 'form-horizontal',
				'method' => 'post',
				'id' => 'slides_edit',
				'enctype' => 'multipart/form-data'
			));
		?>
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="demo-hor-2"><?php echo translate('slides_logo');?></label>
                    <div class="col-sm-6">
                        <span class="pull-left btn btn-default btn-file">
                            <?php echo translate('select_slide_banner');?>
                            <input type="file" name="img" id='imgInp' accept="image">
                        </span>
                        <br><br>
                        <span id='wrap' class="pull-left" >
                            <img src="<?php echo $this->crud_model->file_view('slides',$row['slides_id'],'','','no','src','','','.jpg') ?>" width="100%" id='blah' > 
                        </span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="demo-hor-3"><?php echo translate('text 1');?></label>
                    <div class="col-sm-6">
                        <input type="text" name="text1" id="demo-hor-3" value="<?php echo $row['text1']; ?>"
                            placeholder="<?php echo translate('text 1'); ?>" class="form-control">
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="demo-hor-3"><?php echo translate('text 1_ar');?></label>
                    <div class="col-sm-6">
                        <input type="text" name="text1_ar" id="demo-hor-3" value="<?php echo $row['text1_ar'];?>"
                            placeholder="<?php echo translate('text 1_ar'); ?>" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="demo-hor-3"><?php echo translate('text 2');?></label>
                    <div class="col-sm-6">
                        <input type="text" name="text2" id="demo-hor-3" value="<?php echo $row['text2']; ?>"
                            placeholder="<?php echo translate('text 2'); ?>" class="form-control">
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="demo-hor-3"><?php echo translate('text 2_ar');?></label>
                    <div class="col-sm-6">
                        <input type="text" name="text2_ar" id="demo-hor-3" value="<?php echo $row['text2_ar'];?>"
                            placeholder="<?php echo translate('text 2_ar'); ?>" class="form-control">
                    </div>
                </div>
                 <div class="form-group">
                    <label class="col-sm-4 control-label" for="demo-hor-3"><?php echo translate('text 3');?></label>
                    <div class="col-sm-6">
                        <input type="text" name="text3" id="demo-hor-3" value="<?php echo $row['text3']; ?>"
                            placeholder="<?php echo translate('text 3'); ?>" class="form-control">
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="demo-hor-3"><?php echo translate('text 3_ar');?></label>
                    <div class="col-sm-6">
                        <input type="text" name="text3_ar" id="demo-hor-3" value="<?php echo $row['text3_ar'];?>"
                            placeholder="<?php echo translate('text 3_ar'); ?>" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="demo-hor-4"><?php echo translate('button_link');?></label>
                    <div class="col-sm-6">
                        <input type="text" name="button_link" id="demo-hor-4" value="<?php echo $row['button_link'];?>"
                            placeholder="<?php echo translate('button_link'); ?>" class="form-control">
                    </div>
                </div>
            </div>
        </form>
    </div>

<?php
	}
?>

<script src="<?php echo base_url(); ?>template/back/js/custom/brand_form.js"></script>
<script>
$(document).ready(function() {
	createColorpickers();
});

function createColorpickers(){

	$('.demo2').colorpicker({
		format: 'rgba'
	});
	
}
</script>

