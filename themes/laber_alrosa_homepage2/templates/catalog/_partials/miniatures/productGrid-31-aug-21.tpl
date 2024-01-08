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

{assign var='nbItemsPerLine' value=3}
{assign var='nbItemsPerLineIpadPro' value=2}
{assign var='nbItemsPerLineTablet' value=2}
{assign var='nbItemsPerLineMobile' value=2}
<div class="item-inner 
		col-lg-4 col-md-6 col-sm-6 col-xs-12
		{if $product_list%$nbItemsPerLine == 0} last-in-line
		{elseif $product_list%$nbItemsPerLine == 1} first-in-line{/if}
		{if $product_list%$nbItemsPerLineIpadPro == 0} last-item-of-IpadPro-line
		{elseif $product_list%$nbItemsPerLineIpadPro == 1} first-item-of-IpadPro-line{/if}
		{if $product_list%$nbItemsPerLineTablet == 0} last-item-of-tablet-line
		{elseif $product_list%$nbItemsPerLineTablet == 1} first-item-of-tablet-line{/if}
		{if $product_list%$nbItemsPerLineMobile == 0} last-item-of-mobile-line
		{elseif $product_list%$nbItemsPerLineMobile == 1} first-item-of-mobile-line{/if}">
<div class="item">
	<article class="product-miniature js-product-miniature" data-id-product="{$product.id_product}" data-id-product-attribute="{$product.id_product_attribute}" itemscope itemtype="http://schema.org/Product">
	  <div class="laberProduct-container">
		  <div class="laberProduct-image">
			{block name='product_thumbnail'}
			{if $product.cover}
			  <a href="{$product.url}" class="thumbnail product-thumbnail">
				<span class="cover_image">
					<img
					  src = "{$product.cover.bySize.home_default.url}"
					  alt = "{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name|truncate:30:'...'}{/if}"
					  data-full-size-image-url = "{$product.cover.large.url}"
					/>
				</span>
				{if isset($product.images[1])}
				<span class="hover_image">
					<img 
						src = "{$product.images[1].bySize.home_default.url}"
						alt = "{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name|truncate:30:'...'}{/if}"
						data-full-size-image-url = "{$product.images[1].bySize.home_default.url}" 
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
			<div class="laberActions">
				<div class="laberActions-i">
					<div class="laberItem ">
						{hook h='displayProductListFunctionalButtons' product=$product}
					</div>
					<div class="laberItem laberCart">
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
								<i class="pe-7s-cart"></i>
								<span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
							</button>
							</form>
					</div>
					<div class="laberItem">		
						{hook h='Buttoncompare' product=$product} 
					</div>
					
					<div class="laberItem">
						<a href="#" class="quick-view" data-link-action="quickview" title="">
							<i class="pe-7s-search"></i>
							<span>{l s='Quickview' d='Shop.Theme.Actions'}</span>
						</a>
					</div>				
					
				</div>
			</div>
			
		</div>
		<div class="laber-product-description">
			{block name='product_name'}
				<h2 class="productName" itemprop="name"><a href="{$product.url}">{$product.name}</a></h2>
			{/block}
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
			{hook h='displayProductAttributes' product=$product}
		</div>
	  </div>
	</article>
</div>
</div>