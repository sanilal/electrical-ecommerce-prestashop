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
<!-- <pre>
{$product.additional_shipping_cost|var_dump}
</pre> --> 
<div class="item-inner clearfix">
<article class="product-miniature js-product-miniature" data-id-product="{$product.id_product}" data-id-product-attribute="{$product.id_product_attribute}" itemscope itemtype="http://schema.org/Product">
    <!--Rich snippets-->
	 <meta itemprop="image" content="{$product.cover.bySize.home_default.url}" />
	<meta itemprop="description" content="{$product.name}" />
	<meta itemprop="sku" content="{$product.name}" />

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
	
		   <!--Rich snippets Ends--> 
  <div class="laberProduct-container item">
	  <div class="row">
		  <div class="col-xs-6 col-sm-6 col-md-4">
			  <div class="laberProduct-image">
				{block name='product_thumbnail'}
				{if $product.cover}
				  <a href="{$product.url}" class="thumbnail product-thumbnail">
					<span class="cover_image">
						<img
						  src = "{$product.cover.bySize.medium_default.url}"
						  alt = "{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name|truncate:30:'...'}{/if}"
						  data-full-size-image-url = "{$product.cover.large.url}"
						/>
					</span>
					{if isset($product.images[1])}
					<span class="hover_image">
						<img 
							src = "{$product.images[1].bySize.medium_default.url}"
							alt = "{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name|truncate:30:'...'}{/if}"
							data-full-size-image-url = "{$product.images[1].bySize.medium_default.url}" 
						/> 
					</span>
					{/if} 
				  </a>
				{else}
				  <a href="{$product.url}" class="thumbnail product-thumbnail">
					<img
					  src = "{$urls.no_picture_image.bySize.home_default.url}"
					/>
				  </a>
				{/if}
			  {/block}
				{block name='product_flags'}
					<ul class="laberProduct-flags">
						{if isset($product.show_price) && $product.show_price && !isset($restricted_country_mode)}
							{if isset($product.specific_prices) && $product.specific_prices && isset($product.specific_prices.reduction) && $product.specific_prices.reduction > 0}
								<li class="laber-flag laber_reduction_percent_display">
									<span>
										{if $product.specific_prices && $product.specific_prices.reduction_type == 'percentage'}
											-{$product.specific_prices.reduction|escape:'quotes':'UTF-8' * 100}%
										{else}
											-{$product.price_without_reduction-$product.price|floatval}
										{/if}
									</span>
								</li>
							{/if}
						{/if}
					{foreach from=$product.flags item=flag}
						<li class="laber-flag laber-{$flag.type}"><span>{$flag.label}</span></li>
					{/foreach}
					</ul>
				{/block}
				</div>
			</div>
		<div class="col-xs-6 col-sm-6 col-md-8">
			<div class="laber-product-description">
			 {block name='product_name'}
				<h2 class="laber-product-title" itemprop="name"><a href="{$product.url}">{$product.name}</a></h2>
			  {/block}
			  <div itemprop="aggregateRating" itemscope itemtype="https://schema.org/AggregateRating">
        <div class="hideNow"><span itemprop="ratingValue">4.5</span>
    <span itemprop="reviewCount">5</span></div>
      </div>
			  {hook h='displayProductListReviews' product=$product}
			{block name='product_price_and_shipping'}
				{if $product.show_price}
				  <div class="laber-product-price-and-shipping">
					<span itemprop="price" class="price">{$product.price}</span>
					
					{if $product.has_discount}
					  {hook h='displayProductPriceBlock' product=$product type="old_price"}
					  <span class="regular-price">{$product.regular_price}</span>
					{/if}

					{hook h='displayProductPriceBlock' product=$product type="before_price"}

					{hook h='displayProductPriceBlock' product=$product type='unit_price'}

					{hook h='displayProductPriceBlock' product=$product type='weight'}
				  </div>
				{/if}
			  {/block}
				{if $product.additional_shipping_cost == 0}
					<div class="additional_shipping_cost">
						<i class="fa fa-truck"></i>{l s='Free Shipping' d='Shop.Theme.Actions'}
					</div>
				{else}
					<div class="additional_shipping_cost">
						<i class="fa fa-truck"></i>{l s='Shipping fee:' d='Shop.Theme.Actions'} <span>{Product::convertAndFormatPrice($product.additional_shipping_cost)}</span>
					</div>
				{/if}
			  <div class="description_short">
				{$product.description_short|escape:'quotes':'UTF-8' nofilter}
			  </div>
			  {block name='product_variants'}
				{if $product.main_variants}
				  {include file='catalog/_partials/variant-links.tpl' variants=$product.main_variants}
				{/if}
			  {/block}
				
			</div>
			<div class="laberProductRight">
					
					
					
					{block name='product_availability'}
						<div class="LaberProduct-availability">
							<span class="product-availability">
							  {if $product.show_availability && $product.availability_message}
								<span class="title">
								{l s='Availability:' d='Shop.Theme.Actions'}
								</span>
								{if $product.availability == 'available'}
								  <i class="material-icons product-available">&#xE5CA;</i>
								{elseif $product.availability == 'last_remaining_items'}
								  <i class="material-icons product-last-items">&#xE002;</i>
								{else}
								  <i class="material-icons product-unavailable">&#xE14B;</i>
								{/if}
								{$product.availability_message}
							  {/if}
							</span>
						</div>
					  {/block}
					<div class="actions clearfix">
						<div class="laberCart">
							<form action="{$urls.pages.cart}" method="post">
								<input type="hidden" name="token" value="{$static_token}">
								<input type="hidden" value="{$product.id_product}" name="id_product">
								<button data-button-action="add-to-cart" class="laberBottom
								{if !$product.add_to_cart_url}
								  disabled
								{/if}
								"
								{if !$product.add_to_cart_url}
									disabled
								{/if}
								>
									<span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
								</button>
							</form>
						</div>
						<div class="laberItem-center">
							<div class="laberItem pull-left">
								{hook h='displayProductListFunctionalButtons' product=$product}
							</div>
							<div class="laberItem pull-left">
								<a href="#" class="quick-view" data-link-action="quickview">
									<i class="pe-7s-search"></i><span>{l s='Quick view' d='Shop.Theme.Actions'}</span>
								</a>
							</div>
							
							<div class="laberItem pull-left">		
								{hook h='Buttoncompare' product=$product} 
							</div>
						</div>
					</div>
				</div>
		</div>
	  </div>
  </div>
</article>
</div>