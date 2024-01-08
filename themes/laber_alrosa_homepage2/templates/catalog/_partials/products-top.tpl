{**
 * 2007-2018 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
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
 * @copyright 2007-2018 PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}

{block name='sort_by'}
	<div id="js-product-list-top" class="products-selection">
		{include file='catalog/_partials/sort-orders.tpl' sort_orders=$listing.sort_orders}
	</div>
{/block}

{if !empty($listing.rendered_facets)}
	<div class="hidden-md-up filter-button">
	  <button id="search_filter_toggler" class="btn btn-secondary">
		{l s='Filter' d='Shop.Theme.Actions'}
	  </button>
	</div>
{/if}
<div class="hidden-md-up text-sm-center showing">
	{l s='Showing %from%-%to% of %total% item(s)' d='Shop.Theme.Catalog' sprintf=[
	'%from%' => $listing.pagination.items_shown_from ,
	'%to%' => $listing.pagination.items_shown_to,
	'%total%' => $listing.pagination.total_items
	]}
</div>