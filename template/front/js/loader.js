// JavaScript Document
var banner_main_ht,howitwork_main_ht,competition_main_ht,total_sec_ht;
$(window).ready(function(){	
	$('body').jpreLoader({
		splashID:"#jSplash",
		loaderVPos:'50%',
		autoClose:true,
		closeBtnText:"Let's Begin!",
		splashFunction:function(){ 
		}
	}, function() {//callback function
		$('header,footer,.section,.banner-main,.inner-banner-main').animate({'opacity':1});
		var slideshowContainer=new Swiper('.slideshow-container',{
				slidesPerView:1,
				preloadImages:true,
				spaceBetween:0,
				effect:'slide',
				loop:true,
					autoplay:{
					delay:3000,disableOnInteraction: false
				},
				speed:1000,
			 pagination: {
				el: '.slideshow-pagination',
				 clickable: true,
			  },
				navigation:{
				nextEl:'.slideshow-button-next',
				prevEl:'.slideshow-button-prev',
			}
		});
		wow.init();
		setTimeout(function(){
			$('.menu-link,.SNAFCO,.responsive-SNAFCO,.search-area,.login-cart').addClass('animated');
			$('.menu-link,.SNAFCO,.responsive-SNAFCO,.search-area,.login-cart').css({'visibility':'visible'});
			$('.right-header').css({'animation-name':'fadeIn'});
			$('.search-area,.login-cart').css({'animation-name':'fadeInRight'});
			$('.menu-link,.SNAFCO,.responsive-SNAFCO').css({'animation-name':'fadeInLeft'});
		},10);
	});
});