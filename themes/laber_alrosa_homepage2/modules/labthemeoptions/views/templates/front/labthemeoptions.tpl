{if $lab_show_color!=0}
<style type="text/css">
{if $lab_cbgcolor !=''}
.laberContact_infos li i,
.product-cover .layer .zoom-in,#newsletter_block_popup .block_content .laberContent p span,
#wrapper .breadcrumb li:last-child a,.laberProduct .product-price, .has-discount.product-price, .has-discount p,
.block-categories .category-sub-menu .category-sub-link:hover, .block-categories .category-sub-menu li[data-depth="0"] > a:hover,
.price,.post_title a:hover,#footer .laberSocial li a:hover,.block-contact .collapse p i,#footer ul li a:hover,.laberFooter-bottom .copyright a,
#header .laber-cart .cart-prices .amount, #header .laber-cart .cart_block .products .cart-info .laberPrice .price,
#header a:hover,.quickview .product-price,
#header .laberSectting .dropdown-menu ul > li a:hover, #header .laberSectting .dropdown-menu ul li ul li a:hover, #header .laberSectting .dropdown-menu ul li ul li.current a,
#header .lab-menu-horizontal ul li.level-1:hover > a,
#header .lab-menu-horizontal ul li.level-1 ul li a:hover
{
	color:{$lab_cbgcolor} ;
}

/* background-color:#6fc138 */
#newsletter_block_popup .block_content .send-reqest,.laberPopupnewsletter-i .close:hover,
.scroll-box-arrows i:hover,.laberColumn .owl-buttons2 .owl-prev:hover, .laberColumn .owl-buttons2 .owl-next:hover, .laberthemes .owl-buttons .owl-prev:hover, .laberthemes .owl-buttons .owl-next:hover,
.pagination a:not(.previous):not(.next):hover, .pagination .current a:not(.previous):not(.next),
.btn-tertiary:hover, .btn-primary.focus, .btn-primary:focus, .btn-primary:hover,
.laberGridList li a:hover, .active_list .laberGridList li#list a, .active_grid .laberGridList li#grid a,
.loader_content a.view-compare,.mypresta_scrollup:hover,
.btn-tertiary:hover, .btn-primary.focus, .btn-primary:focus, .btn-primary:hover,
.block_newsletter form input.btn,
.home_blog_post .owl-buttons .owl-prev:hover, .home_blog_post .owl-buttons .owl-next:hover,
.laberActions .laberItem .laberBottom:hover, .laberActions .laberItem a.js-compare-remove:hover, .laberActions .laberItem a:hover,
.laberProductGrid .item-inner .item .laberProduct-flags li span,
.nivo-controlNav a:hover, .nivo-controlNav a.active,
.lab-nivoSlideshow .nivo-caption .readmore a,
#header .laber-cart .cart_block .cart-buttons a,
#header .laber-cart a .cart-products-count
{
	background-color:{$lab_cbgcolor}
}
/* border-color:#6fc138 */
#product-modal .modal-content .modal-body .product-images img:hover,
.pagination a:not(.previous):not(.next):hover, .pagination .current a:not(.previous):not(.next),
.btn-tertiary:hover, .btn-primary.focus, .btn-primary:focus, .btn-primary:hover,
.laberGridList li a:hover, .active_list .laberGridList li#list a, .active_grid .laberGridList li#grid a,
.loader_content a.view-compare,
.product-images > li.thumb-container > .thumb.selected, .product-images > li.thumb-container > .thumb:hover,
.btn-tertiary:hover, .btn-primary.focus, .btn-primary:focus, .btn-primary:hover,
.block_newsletter form input[type="email"]:focus,
.block_newsletter form input.btn,#footer .laberSocial li a:hover,
.laberActions .laberItem .laberBottom:hover, .laberActions .laberItem a.js-compare-remove:hover, .laberActions .laberItem a:hover,
.lab-nivoSlideshow .nivo-caption .readmore a,
#header .laber-cart .cart_block .cart-buttons a
{
	border-color:{$lab_cbgcolor}
}

.form-control:focus, .input-group.focus,
.search-widget .laber-search form input[type="text"]:focus{
	outline-color:{$lab_cbgcolor};
}

{/if}
</style>
{/if}
{if $labshowthemecolor == 1 }
			{if $labthemecolor && $labthemecolor !='default'}
				<link rel="stylesheet" type="text/css" href="{$urls.base_url}themes/{$LAB_THEMENAME}/assets/css/color/{$labthemecolor}.css" />
			{/if}
        {if $labskin }
			<style type="text/css">
				body{
					background-image: url("{$urls.base_url}modules/labthemeoptions/views/templates/front/colortool/images/pattern/{$labskin}.png") ;
				}
			</style>
        {/if}
{/if}