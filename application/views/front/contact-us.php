<?php 
    $this->load->view('front/includes/header');
    
    $contact_address =  $this->db->get_where('general_settings',array('type' => 'contact_address'))->row()->value;
    $contact_phone =  $this->db->get_where('general_settings',array('type' => 'contact_phone'))->row()->value;
    $contact_email =  $this->db->get_where('general_settings',array('type' => 'contact_email'))->row()->value;
    $contact_telephone =  $this->db->get_where('general_settings',array('type' => 'contact_telephone'))->row()->value;
    $contact_fax =  $this->db->get_where('general_settings',array('type' => 'contact_fax'))->row()->value;
    $contact_wholesale_divison =  $this->db->get_where('general_settings',array('type' => 'contact_wholesale_divison'))->row()->value;

?>
<div class="inner-banner-main parallaxcont wow fadeInUp">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="banner-img">
					<!--<nav aria-label="breadcrumb">
						<ol class="breadcrumb justify-content-center">
							<li class="breadcrumb-item"><a href="index.html">Home</a></li>
							<li class="breadcrumb-item"><a href="javascript:void(0);">Categories</a></li>
							<li class="breadcrumb-item active" aria-current="page">Indoor Plants</li>
						</ol>
					</nav>-->
				</div>
			</div>
	 	</div>
	</div>
</div>
<section class="section parallaxcont detail-page">
	<div class="breadcrumb-main wow fadeInUp" data-wow-duration="1.5s" data-wow-delay="0.2s">
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb justify-content-center">
				<li class="breadcrumb-item"><a href="<?php echo base_url(); ?>"><?php echo translate('home');?></a></li>
				<li class="breadcrumb-item active" aria-current="page"><?php echo translate('contact_us');?></li>
			</ol>
		</nav>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h1 class="wow fadeInLeft" data-wow-duration="1.5s"><?php echo translate('contact_us');?></h1>
				<div class="row detail-main">
					<div class="col-lg-6 col-md-6 col-sm-6 socialize wow fadeInUp" data-wow-delay="0.2s">
						<h4><?php echo translate('address');?>, <?php echo translate('phone');?>, <?php echo translate('Email');?></h4>
						<div class="contact-row">
							<div class="contact-icon"><img src="<?=base_url()?>template/front/images/icon-address.svg" alt="Address"/></div>
							<div class="contact-dtl">
								<h5><?php echo translate('address');?></h5>
								<p><?php echo $contact_address;?></p>
							</div>
						</div>
						<div class="contact-row">
							<div class="contact-icon"><img src="<?=base_url()?>template/front/images/icon-phone.svg" alt="Telephone"/></div>
							<div class="contact-dtl">
								<h5><?php echo translate('telephone');?>, <?php echo translate('phone');?></h5>
								<p><a href="tel:+96524740140"><?php echo $contact_telephone?></a>, <a href="tel:+96524761631"><?php echo $contact_phone;?></a></p>
								<h5><?php echo translate('fax');?></h5>
								<p><?php echo $contact_fax;?></p>
								<h5><?php echo translate('wholesale_division');?></h5>
								<p><a href="tel:+96599448122"><?php echo $contact_wholesale_divison; ?></a></p>
							</div>
						</div>
						<div class="contact-row">
							<div class="contact-icon"><img src="<?=base_url()?>template/front/images/icon-email.svg" alt="email"/></div>
							<div class="contact-dtl">
								<h5><?php echo translate('email');?></h5>
								<p><a href="mailto:info@alshaheen.com.kw"><?php echo $contact_email;?></a></p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 feedback wow fadeInUp" data-wow-delay="0.4s">
						<h4><?php echo translate('your_feedback');?></h4>
                                                <?php
                                                    echo form_open(base_url() . 'home/contact/send', array(
                                                        'class' => 'contact-form',
                                                        'method' => 'post',
                                                        'enctype' => 'multipart/form-data',
                                                        'id' => 'contact-form'
                                                    ));
                ?> 
						<div class="form-group">
                                                    <div class="inputbox"><input class="form-control" value="" name="name" placeholder="Name..." /></div>	
						</div>
						<div class="form-group">
                                                    <div class="inputbox"><input class="form-control" value="" name="email" placeholder="Email..." /></div>	
						</div>
						<div class="form-group">
                                                    <div class="inputbox"><input class="form-control" value="" name="mobile" placeholder="Mobile ..." /></div>	
						</div>
						<div class="form-group">
                                                    <div class="inputbox"><input class="form-control" value="" name="subject" placeholder="Subject..." /></div>	
						</div>
						<div class="form-group">
                                                    <div class="inputbox"><textarea class="form-control" placeholder="Message..." name="message"></textarea></div>	
						</div>
						<div class="form-group">
							<div class="inputbox"><button class="button"><?php echo translate('send_feedback');?></button> <?php echo $this->session->flashdata('alert');?></div>	
						</div>
                                                
                                        </form>
					</div>
					
					<div class="col-lg-12 col-md-12 wow fadeInUp" data-wow-delay="0.4s">
						<h4><?php echo translate('location');?></h4>
						<div class="location-map">
							<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3478.863829695439!2d47.95000581550534!3d29.315669759583358!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3fcf9ae5774903c7%3A0x7c3399ed44ad6c86!2sAl%20Shaheen%20Nurseries%20Agriculture%20%26%20Food%20Co.!5e0!3m2!1sen!2sin!4v1602572751767!5m2!1sen!2sin" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
						</div>
					</div>
				</div>
			</div>
		</div>	
	</div>	
</section>
<?php 
    $this->load->view('front/includes/footer');
?>