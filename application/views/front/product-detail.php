<?php
	foreach($product_data as $row)
	{
		$thumbs = $this->crud_model->file_view('product',$row['product_id'],'','','thumb','src','multi','all');
		$mains = $this->crud_model->file_view('product',$row['product_id'],'','','no','src','multi','all');  
?>

<div class="inner-banner-main parallaxcont wow fadeInUp">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="banner-img">
					
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
				<li class="breadcrumb-item"><a href="javascript:void(0);"><?php echo translate('categories');?></a></li>
				<li class="breadcrumb-item"><a href="<?php echo base_url(); ?>home/category/<?php echo $row['category']; ?>"><?php echo $this->crud_model->get_type_name_by_id('category',$row['category'],'category_name');?></a></li>
				<li class="breadcrumb-item active" aria-current="page"><?php echo $row['title'];?></li>
			</ol>
		</nav>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-5 col-sm-6 wow fadeInUp" data-wow-duration="1.5s" data-wow-delay="0.2s">
				<div class="productdetail-container swiper-container">
					<div class="swiper-wrapper">
                                             <?php 
                                foreach ($mains as $row1) {
                            ?>
						<div class="swiper-slide"><div class="quick-view-img" data-src="<?php echo $row1; ?>" data-fancybox="gallery"><img src="<?php echo $row1; ?>" alt=""></div></div>
					 <?php 
                                }
                            ?>	
                                        </div>
                                    
					<div class="swiper-button-prev productdetail-button-prev"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 443.5 443.5" style="enable-background:new 0 0 443.5 443.5;" xml:space="preserve"><g><g><path d="M143.5,221.9L336.2,29.1c6.7-6.7,6.7-17.5,0-24.1c-6.7-6.7-17.5-6.7-24.1,0L107.3,209.8c-6.7,6.7-6.7,17.5,0,24.1
				l204.8,204.8c6.8,6.5,17.6,6.4,24.1-0.4c6.4-6.6,6.4-17.1,0-23.7L143.5,221.9z"/></g></g></svg></div>
					<div class="swiper-button-next productdetail-button-next"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 443.5 443.5" style="enable-background:new 0 0 443.5 443.5;" xml:space="preserve"><g><g><path d="M143.5,221.9L336.2,29.1c6.7-6.7,6.7-17.5,0-24.1c-6.7-6.7-17.5-6.7-24.1,0L107.3,209.8c-6.7,6.7-6.7,17.5,0,24.1
				l204.8,204.8c6.8,6.5,17.6,6.4,24.1-0.4c6.4-6.6,6.4-17.1,0-23.7L143.5,221.9z"/></g></g></svg></div>
				</div>
			</div>	
			<div class="col-lg-8 col-md-7 col-sm-6 wow fadeInUp" data-wow-duration="1.5s" data-wow-delay="0.4s">
				<div class="product-detail-sub">
					<div class="product-dtl-text">
						<h1><?php echo ($set_lang=="english")?$row['title']:$row['title_ar'];?></h1>
						<p><?php echo ($set_lang=="english")?$row['description']:$row['description_ar'];?><p><strong>ما الذي يجعلها مميزة:</strong></p>
						<div class="listing">
							<?php echo $row['features']; ?>
						</div>	
						<div class="quantity-div">
										<div class="quantity-sub">
											<label>كمية  :</label>
											<div class="quantity-control-div ">
                                                                                            
												<a href="javascript:void(0);" class="minus-btn minusBtn minus quantity-button" data-name='minus'>-</a>
												<div class="quantity-control"><input type="text" class="form-control noValue quantity_field" data-rowid="<?php echo $items['rowid']; ?>" min="1" max="<?php echo $row['current_stock']; ?>" data-limit='no' name='qty' value="<?php if($a = $this->crud_model->is_added_to_cart($row['product_id'],'qty')){echo $a;} else {echo '1';} ?>" id='qty' onblur="check_ok(this);"></div>
												<a href="javascript:void(0);" class="plus-btn plusBtn plus quantity-button" data-name='plus'>+</a>
											</div>
										</div>	
									</div>	
                                                <div class="pq-detail"><strong class="price-amount">
                                                    
                                                         <?php if($row['discount'] > 0){ ?> 
                            <ins>
                                <?php echo currency($this->crud_model->get_product_price($row['product_id'])); ?>
                            </ins> 
                            <del><?php echo currency($row['sale_price']); ?></del>
                            <span class="label label-success">
                            <?php 
                                echo translate('discount:_').$row['discount'];
                                if($row['discount_type']=='percent'){
                                    echo '%';
                                }
                                else{
                                    echo currency();
                                }
                            ?>
                            </span>
                        <?php } else { ?>
                            <ins>
                                <?php echo currency($row['sale_price']); ?>
                            </ins> 
                        <?php }?>
                                                    </strong></div>
                                                <?php
                    if($row['current_stock'] > 0){
                ?>
                    <?php // echo $row['current_stock'].' '.$row['unit'].translate('_available');?>
                <?php
                    }else{
                ?>
                    <?php echo translate('out_of_stock');?>
                <?php
                     }
                ?>
						<div class="save-to-fav"><a href="javascript:void(0);" class="save-to-fav-link favourite-anchor" data-pid="<?=$row['product_id']?>"><img src="<?=base_url()?>template/front/images/faviourite-flat.svg" alt="faviourite"> <?php echo translate('adding_to_favourite');?></a></a></div>
					<div c class="btn-div"><a href="javascript:void(0);" class="button addtocart-anchor" data-pid="<?=$row['product_id']?>"><?php echo translate('add_to_cart');?></a></div>
					</div>
				</div>	
			</div>
		</div>	
	</div>	
</section>
 <?php 
 }
?>