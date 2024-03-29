{**
 * 2007-2016 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/osl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2016 PrestaShop SA
 * @license   http://opensource.org/licenses/osl-3.0.php Open Software License (OSL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
{extends file=$layout}

{block name='head_seo' prepend}
  <link rel="canonical" href="{$product.canonical_url}">
{/block}

{block name='head' append}
  <meta property="og:type" content="product">
  <meta property="og:url" content="{$urls.current_url}">
  <meta property="og:title" content="{$page.meta.title}">
  <meta property="og:site_name" content="{$shop.name}">
  <meta property="og:description" content="{$page.meta.description}">
  <meta property="og:image" content="{$product.cover.large.url}">
  <meta property="product:pretax_price:amount" content="{$product.price_tax_exc}">
  <meta property="product:pretax_price:currency" content="{$currency.iso_code}">
  <meta property="product:price:amount" content="{$product.price_amount}">
  <meta property="product:price:currency" content="{$currency.iso_code}">
  {if isset($product.weight) && ($product.weight != 0)}
  <meta property="product:weight:value" content="{$product.weight}">
  <meta property="product:weight:units" content="{$product.weight_unit}">
  {/if}
{/block}

{block name='content'}

  <section id="main" itemscope itemtype="https://schema.org/Product">
    <meta itemprop="url" content="{$product.url}">
	 <meta itemprop="image" content="{$product.cover.bySize.home_default.url}" />
	  <meta itemprop="sku" content="{$product.name}" />
	   <div itemprop="aggregateRating"
		itemscope itemtype="https://schema.org/AggregateRating">
		<span itemprop="ratingValue">4.5</span>/5
		<span itemprop="reviewCount">11</span> customer reviews
	  </div>
	  <div itemprop="offers" itemtype="http://schema.org/Offer" itemscope>
		<meta itemprop="url" content="{$product.url}" />
		<meta itemprop="availability" content="https://schema.org/InStock" />
		<meta itemprop="priceCurrency" content="AED " />
		<meta itemprop="itemCondition" content="New" />
		<meta itemprop="price" content="{$product.price}" />
		<meta itemprop="review" content="{$product}"/>
		<div itemprop="seller" itemtype="http://schema.org/Organization" itemscope>
			<meta itemprop="name" content="Al Meshal Lights" />
		</div>
	</div>
	  <div itemprop="brand" itemtype="http://schema.org/Thing" itemscope>
		<meta itemprop="name" content="{$product.reference_to_display}" />
	</div>
    <div class="laberProduct">
    <div class="row no-margin">
      <div class="col-lg-5 col-md-6 col-sm-6 col-xs-12">
        {block name='page_content_container'}
          <section class="page-content" id="content">
            {block name='page_content'}
              <!-- {block name='product_flags'}
                <ul class="product-flags">
                  {foreach from=$product.flags item=flag}
                    <li class="product-flag {$flag.type}">{$flag.label}</li>
                  {/foreach}
                </ul>
              {/block} -->

              {block name='product_cover_tumbnails'}
                {include file='catalog/_partials/product-cover-thumbnails.tpl'}
              {/block}
              <div class="scroll-box-arrows">
				<i class="left pe-7s-angle-left" aria-hidden="true"></i>
				<i class="right pe-7s-angle-right" aria-hidden="true"></i>
              </div>

            {/block}
          </section>
        {/block}
        </div>
        <div class="col-lg-7 col-md-6 col-sm-6 col-xs-12">
		
		 {hook h='displayProductNextPrev'}
			{block name='page_header_container'}
				{block name='page_header'}
				  <h1 class="h1" itemprop="name">{block name='page_title'}{$product.name}{/block}</h1>
				{/block}
			{/block}
			{hook h='displayProductListReviews' product=$product}
			{block name='product_prices'}
				{include file='catalog/_partials/product-prices.tpl'}
			{/block}
			{block name='product_availability'}
			 {if $product.show_availability && $product.availability_message}
			  <span id="product-availability">
				  <span>{l s='Availability:' d='Shop.Theme.Catalog'}</span>	
				  {if $product.availability == 'available'}
					<i class="material-icons rtl-no-flip product-available">&#xE5CA;</i>
				  {elseif $product.availability == 'last_remaining_items'}
					<i class="material-icons product-last-items">&#xE002;</i>
				  {else}
					<i class="material-icons product-unavailable">&#xE14B;</i>
				  {/if}
				  {$product.availability_message}
				
			  </span>
			  {/if}
			{/block}
			{block name='product_minimal_quantity'}
			{if $product.minimal_quantity > 1}
			  <p class="product-minimal-quantity">
				
				  {l
				  s='The minimum purchase order quantity for the product is %quantity%.'
				  d='Shop.Theme.Checkout'
				  sprintf=['%quantity%' => $product.minimal_quantity]
				  }
				
			  </p>
			  {/if}
			{/block}
		  {block name='product_description_short'}
              <div class="product-description-short" id="product-description-short-{$product.id}" itemprop="description">{$product.description_short nofilter}</div>
            {/block}
			<div class="product-actions">
			  {block name='product_buy'}
				<form action="{$urls.pages.cart}" method="post" id="add-to-cart-or-refresh">
				  <input type="hidden" name="token" value="{$static_token}">
				  <input type="hidden" name="id_product" value="{$product.id}" id="product_page_product_id">
				  <input type="hidden" name="id_customization" value="{$product.id_customization}" id="product_customization_id">

				  {block name='product_variants'}
					{include file='catalog/_partials/product-variants.tpl'}
				  {/block}

				 

				  {block name='product_discounts'}
					{include file='catalog/_partials/product-discounts.tpl'}
				  {/block}

				  {block name='product_add_to_cart'}
					{include file='catalog/_partials/product-add-to-cart.tpl'}
				  {/block}

				  {hook h='displayProductButtons' product=$product}

				  {block name='product_refresh'}
					<input class="product-refresh ps-hidden-by-js" name="refresh" type="submit" value="{l s='Refresh' d='Shop.Theme.Actions'}">
				  {/block}
				</form>
			  {/block}

			</div>
          

          <div class="product-information">
            
            {if $product.is_customizable && count($product.customizations.fields)}
              {block name='product_customization'}
                {include file="catalog/_partials/product-customization.tpl" customizations=$product.customizations}
              {/block}
            {/if}
			 {block name='product_pack'}
				{if $packItems}
				  <section class="product-pack">
					<h3 class="h4">{l s='This pack contains' d='Shop.Theme.Catalog'}</h3>
					{foreach from=$packItems item="product_pack"}
					  {block name='product_miniature'}
						{include file='catalog/_partials/miniatures/pack-product.tpl' product=$product_pack}
					  {/block}
					{/foreach}
				</section>
				{/if}
			  {/block}
            

            {hook h='displayReassurance'}

            
        </div>
      </div>
    </div>
    </div>
	<div class="tabs laberTabs">
		<div class="nav nav-tabs">
			<ul>
				{if $product.description}
				<li class="nav-item">
					<a class="nav-link{if $product.description} active{/if}" data-toggle="tab" href="#description">{l s='Description' d='Shop.Theme.Catalog'}</a>
				</li>
				{/if}
				<li class="nav-item">
					<a class="nav-link{if !$product.description} active{/if}" data-toggle="tab" href="#product-details">{l s='Product Details' d='Shop.Theme.Catalog'}</a>
				</li>
				{if $product.attachments}
				<li class="nav-item">
					<a class="nav-link" data-toggle="tab" href="#attachments">{l s='Attachments' d='Shop.Theme.Catalog'}</a>
				</li>
				{/if}
				{foreach from=$product.extraContent item=extra key=extraKey}
				<li class="nav-item">
					<a class="nav-link" data-toggle="tab" href="#extra-{$extraKey}">{$extra.title}</a>
				</li>
				{/foreach}
			</ul>
		</div>
	  <div class="tab-content" id="tab-content">
	   <div class="tab-pane fade in{if $product.description} active{/if}" id="description">
		 {block name='product_description'}
		   <div class="product-description">{$product.description nofilter}</div>
		 {/block}
	   </div>

	   {block name='product_details'}
		 {include file='catalog/_partials/product-details.tpl'}
	   {/block}
	   {block name='product_attachments'}
		 {if $product.attachments}
		  <div class="tab-pane fade in" id="attachments">
			 <section class="product-attachments">
			   <h3 class="h5 text-uppercase">{l s='Download' d='Shop.Theme.Actions'}</h3>
			   {foreach from=$product.attachments item=attachment}
				 <div class="attachment">
				   <h4><a href="{url entity='attachment' params=['id_attachment' => $attachment.id_attachment]}">{$attachment.name}</a></h4>
				   <p>{$attachment.description}</p
				   <a href="{url entity='attachment' params=['id_attachment' => $attachment.id_attachment]}">
					 {l s='Download' d='Shop.Theme.Actions'} ({$attachment.file_size_formatted})
				   </a>
				 </div>
			   {/foreach}
			 </section>
		   </div>
		 {/if}
	   {/block}
	   {foreach from=$product.extraContent item=extra key=extraKey}
	   <div class="tab-pane fade in {$extra.attr.class}" id="extra-{$extraKey}" {foreach $extra.attr as $key => $val} {$key}="{$val}"{/foreach}>
		   {$extra.content nofilter}
	   </div>
	   {/foreach}
	</div>
  </div>
	{hook h='productFooterReviews'}
    {block name='product_accessories'}
      {if $accessories}
        <section class="laberProduct-accessories">
        <div class="laberthemes">
			<div class="product-accessories clearfix laberProductGrid">
				<div class="title_block">
					<h3><span>{l s='You might also like' d='Shop.Theme.Catalog'}</span></h3>
				</div>
			  <div class="product_list">
			  <div class="laberAcce row">
				  <div class="laberAccessories">
					{foreach from=$accessories item="product_accessory"}
					  {block name='product_miniature'}
						<div class="item-inner  ajax_block_product">
							{include file='catalog/_partials/miniatures/product.tpl' product=$product_accessory}
						</div>
					  {/block}
					{/foreach}
				  </div>
			  </div>
			  </div>
			  <div class="owl-buttons">
				<p class="owl-prev prevAccessories"><i class="pe-7s-angle-left"></i></p>
				<p class="owl-next nextAccessories"><i class="pe-7s-angle-right"></i></p>
			</div>
			</div>
		</div>
        </section>
		<script type="text/javascript">
			$(document).ready(function() {
				var owl = $(".laberAccessories");
				owl.owlCarousel({
					items : 4,
					itemsDesktop : [1199,3],
					itemsDesktopSmall : [991,2],
					itemsTablet: [767,2],
					itemsMobile : [480,1],
					rewindNav : false,
					autoPlay :  false,
					stopOnHover: false,
					pagination : false,
				});
				$(".nextAccessories").click(function(){
				owl.trigger('owl.next');
				})
				$(".prevAccessories").click(function(){
				owl.trigger('owl.prev');
				})
			});
		</script>
      {/if}
    {/block}

    {block name='product_footer'}
      {hook h='displayFooterProduct' product=$product category=$category}
    {/block}

    {block name='product_images_modal'}
      {include file='catalog/_partials/product-images-modal.tpl'}
    {/block}

    {block name='page_footer_container'}
      <footer class="page-footer">
        {block name='page_footer'}
          <!-- Footer content -->
        {/block}
      </footer>
    {/block}
  </section>

{/block}
