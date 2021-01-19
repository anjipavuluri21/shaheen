<div class="col-md-12 col-sm-12">
    <div class="panel">
		<?php 
            $contact_address =  $this->db->get_where('general_settings',array('type' => 'contact_address'))->row()->value;
            $contact_phone =  $this->db->get_where('general_settings',array('type' => 'contact_phone'))->row()->value;
            $contact_email =  $this->db->get_where('general_settings',array('type' => 'contact_email'))->row()->value;
            $contact_telephone =  $this->db->get_where('general_settings',array('type' => 'contact_telephone'))->row()->value;
            $contact_fax =  $this->db->get_where('general_settings',array('type' => 'contact_fax'))->row()->value;
            $contact_wholesale_divison =  $this->db->get_where('general_settings',array('type' => 'contact_wholesale_divison'))->row()->value;
            
            $lat_lang =  $this->db->get_where('general_settings',array('type' => 'contact_lat_lang'))->row()->value;
        ?>
        <script>
             $("a[href='#demo-contact']").on('shown.bs.tab', function(e) {
                  //set_cart_map();
             });
        </script>
        <div class="panel-heading">
            <h3 class="panel-title"><?php echo translate('contact_page');?></h3>
        </div>
        <?php
            echo form_open(base_url() . 'admin/general_settings/contact', array(
                'class' => 'form-horizontal',
                'method' => 'post',
                'id' => '',
                'enctype' => 'multipart/form-data'
            ));
        ?>
            <div class="panel-body">
                
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="demo-hor-inputemail">
                        <?php echo translate('contact_address'); ?>
                    </label>
                    <div class="col-sm-8">
                        <div class="col-sm-">
                            <input type="text" name="contact_address" value="<?php echo $contact_address; ?>" class="form-control" >
                        </div>
                    </div>
                </div>
            
                
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="demo-hor-inputemail">
                        <?php echo translate('contact_phone'); ?>
                    </label>
                    <div class="col-sm-8">
                        <div class="col-sm-">
                            <input type="text" name="contact_phone" value="<?php echo $contact_phone; ?>" class="form-control" >
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="demo-hor-inputemail">
                        <?php echo translate('contact_email'); ?>
                    </label>
                    <div class="col-sm-8">
                        <div class="col-sm-">
                            <input type="text" name="contact_email" value="<?php echo $contact_email; ?>" class="form-control" >
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="demo-hor-inputemail">
                        <?php echo translate('contact_telephone'); ?>
                    </label>
                    <div class="col-sm-8">
                        <div class="col-sm-">
                            <input type="text" name="contact_telephone" value="<?php echo $contact_telephone; ?>" class="form-control" >
                        </div>
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="demo-hor-inputemail">
                        <?php echo translate('contact_fax'); ?>
                    </label>
                    <div class="col-sm-8">
                        <div class="col-sm-">
                            <input type="text" name="contact_fax" value="<?php echo $contact_fax; ?>" class="form-control" >
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="demo-hor-inputemail">
                        <?php echo translate('contact_wholesale_divison'); ?>
                    </label>
                    <div class="col-sm-8">
                        <div class="col-sm-">
                            <input type="text" name="contact_wholesale_divison" value="<?php echo $contact_wholesale_divison; ?>" class="form-control" >
                        </div>
                    </div>
                </div>
                
                
                
                
            </div>
            <div class="panel-footer text-right">
                <span class="btn btn-success btn-labeled fa fa-check submitter enterer"  data-ing='<?php echo translate('saving'); ?>' data-msg='<?php echo translate('settings_updated!'); ?>'>
                    <?php echo translate('save');?>
                </span>
            </div>
        </form>
    </div>
</div>
<script>
$(document).ready(function() {
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