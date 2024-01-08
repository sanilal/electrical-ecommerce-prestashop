{**
 * 2007-2017 PrestaShop
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
 * @copyright 2007-2017 PrestaShop SA
 * @license   http://opensource.org/licenses/osl-3.0.php Open Software License (OSL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
{extends file=$layout}

{block name='content'}
  <section id="main">

    {block name='product_list_header'}
      <h2 class="h2">{$listing.label}</h2>
    {/block}

    <section id="products" class="active_grid">
      {if $listing.products|count}
		<div id="laber-products-top">
			<div class="row">
				<div class="col-md-6 col-xs-12 hidden-sm-down">
					<ul class="laberGridList pull-left">
						<!-- <li class="display-title pull-left">{l s='View' d='Shop.Theme.Catalog'}</li> --> 
						<li id="grid" class="pull-left"><a rel="nofollow" href="javascript:void(0)" title="{l s='Grid' d='Shop.Theme.Catalog'}"><i class="fa fa-th"></i><span>{l s='Grid' d='Shop.Theme.Catalog'}</span></a></li>
						<li id="list" class="pull-left"><a rel="nofollow" href="javascript:void(0)" title="{l s='List' d='Shop.Theme.Catalog'}"><i class="fa  fa-bars"></i><span>{l s='List' d='Shop.Theme.Catalog'}</span></a></li>
					</ul>
					<div class="pull-left hidden-sm-down total-products">
						{if $listing.pagination.total_items > 1}
						  <p>{l s='There are %product_count% products.' d='Shop.Theme.Catalog' sprintf=['%product_count%' => $listing.pagination.total_items]}</p>
						{else if $listing.pagination.total_items > 0}
						  <p>{l s='There is 1 product.' d='Shop.Theme.Catalog'}</p>
						{/if}
					 </div>
				</div>
			  {block name='product_list_top'}
				<div class="col-md-6 col-xs-12">
					{include file='catalog/_partials/products-top.tpl' listing=$listing}
				</div>
			  {/block}
			</div>
        </div>

        {block name='product_list_active_filters'}
          <div id="" class="hidden-sm-down">
            {$listing.rendered_active_filters nofilter}
          </div>
        {/block}

        <div id="" class="clearfix">
          {block name='product_list'}
            {include file='catalog/_partials/products.tpl' listing=$listing}
          {/block}
        </div>

        <div id="js-product-list-bottom">
          {block name='product_list_bottom'}
            {include file='catalog/_partials/products-bottom.tpl' listing=$listing}
          {/block}
        </div>

      {else}

        {include file='errors/not-found.tpl'}

      {/if}
    </section>

  </section>
{/block}
