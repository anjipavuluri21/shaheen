
<div class="col-md-12 col-sm-12">
    <div class="panel">
		<?php 
            $about_text =  $this->db->get_where('general_settings',array('type' => 'about_text'))->row()->value;
            $about_text_ar =  $this->db->get_where('general_settings',array('type' => 'about_text_ar'))->row()->value;
//            print_r($about_text_ar);exit;
        ?>
        <div class="panel-heading">
            <h3 class="panel-title"><?php echo translate('about_us_settings');?></h3>
        </div>
        <?php
            echo form_open(base_url() . 'admin/general_settings/about', array(
                'class' => 'form-horizontal',
                'method' => 'post',
                'id' => '',
                'enctype' => 'multipart/form-data'
            ));
        ?>
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="demo-hor-inputemail">
                        <?php echo translate('about_text'); ?>
                    </label>
                    <div class="col-sm-8">
                        <div class="col-sm-">
                            <textarea class="summernotes" data-height='400' data-name='about_text'><?php echo $about_text; ?></textarea>
                        </div>
                    </div>
                </div>
                
            </div>
        <div class="panel-body">
               
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="demo-hor-inputemail">
                        <?php echo translate('about_text_ar'); ?>
                    </label>
                    <div class="col-sm-8">
                        <div class="col-sm-">
                            <textarea class="summernotes" data-height='400' data-name='about_text_ar'><?php echo $about_text_ar; ?></textarea>
                        </div>
                    </div>
                </div>
                
            </div>
            <div class="panel-footer text-right">
                <span class="btn btn-success btn-labeled fa fa-check submitter"  data-ing='<?php echo translate('saving'); ?>' data-msg='<?php echo translate('settings_updated!'); ?>'>
                    <?php echo translate('save');?>
                </span>
            </div>
        </form>
    </div>
</div>
<script>
$(document).ready(function() {
	$('.demo-cs-multiselect').chosen({width:'100%'});
	
	$('.summernotes').each(function() {
		var now = $(this);
		var h = now.data('height');
		var n = now.data('name');
		now.closest('div').append('<input type="hidden" class="val" name="'+n+'">');
		now.summernote({
            toolbar: [
                ['style', ['style']],
                ['font', ['bold', 'underline', 'clear']],
                ['fontname', ['fontname']],
                ['color', ['color']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['view', ['codeview', 'help']],
            ],
			height: h,
			onChange: function() {
				now.closest('div').find('.val').val(now.code());
			}
		});
		now.closest('div').find('.val').val(now.code());
		now.focus();
	});
});
</script>