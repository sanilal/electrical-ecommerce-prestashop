{*
* 2007-2015 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
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
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2015 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
{if  $labconfig->used_slider == 0}
	{assign var='nbItemsPerLine' value=3}
	{assign var='nbItemsPerLineTablet' value=3}
	{assign var='nbItemsPerLineMobile' value=2}
{/if}
<div class="lab_category_feature laberthemes">
		<div class="title_block">
			<h3>
					<span>
						{l s='Shop By Category' d='Shop.Theme.Laberthemes'}
					</span>
					<!-- <i class="icon icon-star-o"></i> -->
			</h3>
		</div>
		{if isset($lab_categories) && $lab_categories|@count > 0}
			<div class="category_feature">
			<div class="row">

				<div class="labCategoryFeature">
				{foreach from=$lab_categories item=item_category name=lab_categories}
				{assign var=category value=$item_category.category}
						<div class="item-inner
						{if $labconfig->used_slider == 0}
							col-lg-4 col-md-4 col-sm-6 col-xs-12
							{if $smarty.foreach.lab_categories.iteration%$nbItemsPerLine == 0} last-in-line
							{elseif $smarty.foreach.lab_categories.iteration%$nbItemsPerLine == 1} first-in-line{/if}
							{if $smarty.foreach.lab_categories.iteration%$nbItemsPerLineTablet == 0} last-item-of-tablet-line
							{elseif $smarty.foreach.lab_categories.iteration%$nbItemsPerLineTablet == 1} first-item-of-tablet-line{/if}
							{if $smarty.foreach.lab_categories.iteration%$nbItemsPerLineMobile == 0} last-item-of-mobile-line
							{elseif $smarty.foreach.lab_categories.iteration%$nbItemsPerLineMobile == 1} first-item-of-mobile-line{/if}
						{/if}
						{if $smarty.foreach.lab_categories.first|intval}first_item{elseif $smarty.foreach.lab_categories.last|intval}last_item{/if}">
							<div class="item">
								
								
								<div class="laber-media-body">
									{if isset($labconfig->showimg) && $labconfig->showimg == 1}
										
										<div class="cat-img">
											<a href="{$link->getCategoryLink($category->id_category, $category->link_rewrite)|escape:'html':'UTF-8'}" title="{$category->name|escape:'html':'UTF-8'}">
												<!-- <img alt="{$category->name|escape:'html':'UTF-8'}" src="{$link->getCatImageLink($category->link_rewrite, $category->id_image, 'home_default')|escape:'html':'UTF-8'}"/> -->

												<img  class="replace-2x" alt="{$category->name|escape:'html':'UTF-8'}" src="{$path_ssl}img/c/{$category->id_category}_thumb.jpg"/>
											</a>
										</div>
										
									{/if}
									<h2 class="categoryName">
										<a href="{$link->getCategoryLink($category->id_category, $category->link_rewrite)|escape:'html':'UTF-8'}">
											{$category->name|escape:'html':'UTF-8'}
										</a>
									</h2>
									{if $item_category.sub_cat > 0 && $labconfig->showsub == 1}
									<div class="content-cate">
										<div class="sub-cat">
											<ul>
											{if isset($labconfig->numbersub)}
												{$nb_sub = $labconfig->numbersub}
											{else}
												{$nb_sub = 6}
											{/if}
											{$i = 0}
											{foreach from = $item_category.sub_cat item=sub_cat name=sub_cat_info}
												{$i = $i+1}
												{if $i <= $nb_sub}
													<li>
														<a href="{$link->getCategoryLink($sub_cat.id_category, $sub_cat.link_rewrite)|escape:'html':'UTF-8'}" title="{$sub_cat.name|escape:'html':'UTF-8'}">{$sub_cat.name|escape}</a>
													</li>
												{/if}
											{/foreach}
											</ul>
										</div>
									</div>
									{/if}
								</div>
							</div>
					 </div>

				 {/foreach}
				 </div>
			</div>
				{if isset($labconfig->used_slider) && $labconfig->used_slider == 1}
					<div class="owl-buttons">
						<div class="owl-prev prevcategory"><i class="fa fa-angle-left"></i></div>
						<div class="owl-next nextcategory"><i class="fa fa-angle-right"></i></div>
					</div>
				{/if}
			</div>
			
		{else}
			<p class="alert alert-warning">{l s='There is no category' d='Shop.Theme.Laberthemes'}</p>
		{/if}

{if isset($labconfig->used_slider) && $labconfig->used_slider == 1}
<script type="text/javascript">
	$(document).ready(function() {
		var owl = $(".labCategoryFeature");
		owl.owlCarousel({
			items :5,
			itemsDesktop : [1199,3],
			itemsDesktopSmall : [991,2],
			itemsTablet: [767,2],
			itemsMobile : [480,1],
			slideSpeed : 2000,
			paginationSpeed : 2000,
			rewindSpeed : 2000,
			autoPlay :  false,
			stopOnHover: false,
			pagination : false,
			addClassActive : true,
		});
		$(".nextcategory").click(function(){
		owl.trigger('owl.next');
		})
		$(".prevcategory").click(function(){
		owl.trigger('owl.prev');
		})
	});

</script>
{/if}
</div>