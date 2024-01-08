<section class="laberProductGrid laberthemes clearfix">
  <div class="title_block">
  <h3>
    <span>{l s='Popular Products' d='Shop.Theme.Catalog'}</span>
  </h3>
  </div>
  <div class="product_list">
	  <div class="row">
		  <div class="laberFeatured">
			{foreach from=$products item="product" name="product_list"}
				<div class="item-inner ajax_block_product">
					{include file="catalog/_partials/miniatures/product.tpl" product=$product}
				</div>
			{/foreach}
		  </div>
	  </div>
  </div>
  <div class="owl-buttons">
		<div class="owl-prev prev-laberFeatured"><i class="fa fa-angle-left"></i></div>
		<div class="owl-next next-laberFeatured"><i class="fa fa-angle-right"></i></div>
	</div>
  {*<a class="all-product-link pull-xs-left pull-md-right h4" href="{$allProductsLink}">
    {l s='All products' d='Shop.Theme.Catalog'}<i class="material-icons">&#xE315;</i>
  </a>*}
</section>
<script type="text/javascript">
$(document).ready(function() {
	var owl = $(".laberFeatured");
	owl.owlCarousel({
		items : 6,
		itemsDesktop : [1199,4],
		itemsDesktopSmall : [991,3],
		itemsTablet: [767,2],
		itemsMobile : [480,1],
		rewindNav : false,
		autoPlay :  false,
		stopOnHover: false,
		pagination : false,
	});
	$(".next-laberFeatured").click(function(){
		owl.trigger('owl.next');
	})
	$(".prev-laberFeatured").click(function(){
		owl.trigger('owl.prev');
	})
});
</script>