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
{block name='header_banner'}
  <div class="header-banner">
    {hook h='displayBanner'}
  </div>
{/block}

{block name='header_nav'}
  <nav class="header-nav">
    <div class="container">
      <div class="row">
        <div class="hidden-md-up text-sm-center mobile">
          <div class="float-xs-left" id="menu-icon">
            <i class="fa fa-align-justify"></i>
          </div>
          <div class="top-logo" id="_mobile_logo"></div>
          <div class="clearfix"></div>
        </div>
      </div>
    </div>
  </nav>
{/block}

{block name='header_top'}
  <div class="header-top">
    <div class="container">
       <div class="row">
		<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
		  <div class="laberIpad">
			  {hook h='displayNav2'}
		  </div>
		</div>
   <!--     <div class="col-md-2 hidden-sm-down" id="_desktop_logo">
            {if $page.page_name == 'index'}
              <h1 class="h1">
                <a class="logo" href="{$urls.base_url}">
                  <img class="img-responsive" src="{$shop.logo}" alt="{$shop.name}">
                </a>
              </h1>
            {else}
				<div class="h1">
                <a class="logo" href="{$urls.base_url}">
                  <img class="img-responsive" src="{$shop.logo}" alt="{$shop.name}">
                </a>
				</div>
            {/if}
        </div>-->
		
		<div class="pull-right col-lg-5 col-md-5 col-sm-12 col-xs-12 position-static">
			<div class="laberIpad">
				<div class="laberdisplayNav pull-right">
					<div class="laberSectting dropdown js-dropdown">
						<div class="expand-more" data-toggle="dropdown">
							<i class="pe-7s-menu"></i>
						</div>
						<div class="dropdown-menu">
							<ul>
								{hook h='displayNav1'}
							</ul>
						</div>
					</div>
				</div>	
				{hook h='displayTop'}
				<div class="laberDisplaySearch pull-right">{hook h='displaySearch'}</div>	
			</div>
        </div>
		<div class="clearfix"></div>
      </div>
      <div id="mobile_top_menu_wrapper" class="row hidden-md-up" style="display:none;">
        <div class="js-top-menu-bottom">
		  {hook h='displayMegamenu'}
        </div>
      </div>
    </div>
  </div>
<div class="container_lab_megamenu hidden-sm-down">
	<div class="laberMegamenu">
		<div class="container">
			     <div class="col-md-3 hidden-sm-down" id="_desktop_logo">
            {if $page.page_name == 'index'}
              <h1 class="h1">
                <a class="logo" href="{$urls.base_url}">
                  <img class="img-responsive" src="{$shop.logo}" alt="{$shop.name}">
                </a>
              </h1>
            {else}
				<div class="h1">
                <a class="logo" href="{$urls.base_url}">
                  <img class="img-responsive" src="{$shop.logo}" alt="{$shop.name}">
                </a>
				</div>
            {/if}
        </div>
			<div class="col-md-9 hidden-sm-down">
			{hook h='displayMegamenu'}
			</div>
			
		</div>
	</div>
</div>
  {hook h='displayNavFullWidth'}

{/block}
