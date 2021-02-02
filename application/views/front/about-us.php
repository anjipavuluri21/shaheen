<?php 
    $this->load->view('front/includes/header');
    $set_lang=$this->session->userdata('language');
    
    
    $about_text =  $this->db->get_where('general_settings',array('type' => 'about_text'))->row()->value;
    $about_text_ar =  $this->db->get_where('general_settings',array('type' => 'about_text_ar'))->row()->value;
            
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
				<li class="breadcrumb-item active" aria-current="page"><?php echo translate('about_us');?></li>
			</ol>
		</nav>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-12">
				
				<div class="row listing-item wow fadeInUp" data-wow-duration="1.5s" data-wow-delay="0.5s">
					<div class="col-12">
						<figure class="inner-img"><img src="<?=base_url()?>template/front/images/SNAFCO-logo.jpg" alt="SNAFCO"/></figure>
						<div class="inner-contents"><h1 class="wow fadeInLeft" data-wow-duration="1.5s"><?php echo translate('about_us');?></h1>
							<?php echo ($set_lang=="english")?$about_text:$about_text_ar;?>
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
