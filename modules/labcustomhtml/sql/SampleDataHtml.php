<?php
/**
* 2007-2016 PrestaShop
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
* @author    PrestaShop SA <contact@prestashop.com>
* @copyright 2007-2016 PrestaShop SA
* @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*/

class SampleDataHtml
{
	public function initData($base_url)
	{
		$content_block1 = '
			<div class="laberShopByCategory">
				<div class="title_block">
				<h3>Shop By Category</h3>
				<p>Discover our featured category of the week</p>
				</div>
				<div class="laberCategory">
				<div class="laberStatic">
				<div class="row">
				<div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
				<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<div class="img"><a title="" href="#"> <img src="{static_block_url}img/cms/img_2_1.jpg" alt="images" /> </a></div>
				<div class="img"><a title="" href="#"> <img src="{static_block_url}img/cms/img_2_2.jpg" alt="images" /> </a></div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<div class="img"><a title="" href="#"> <img src="{static_block_url}img/cms/img_2_3.jpg" alt="images" /> </a></div>
				</div>
				</div>
				</div>
				<div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
				<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<div class="img"><a title="" href="#"> <img src="{static_block_url}img/cms/img_2_4.jpg" alt="images" /> </a></div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<div class="img"><a title="" href="#"> <img src="{static_block_url}img/cms/img_2_5.jpg" alt="images" /> </a></div>
				</div>
				</div>
				<div class="img"><a title="" href="#"> <img src="{static_block_url}img/cms/img_2_6.jpg" alt="images" /> </a></div>
				</div>
				</div>
				</div>
				</div>
				</div>
		';
		$content_block2 = '
			<div class="laberStatic">
				<div class="img"><a title="" href="#"> <img src="{static_block_url}img/cms/img_2_7.jpg" alt="images" /> </a></div>
			</div>
		';
		$content_block3 = '
			<div class="laber-freeshipping">
			<div class="row">
			<div class="item-inner col-lg-3 col-md-6 col-sm-6 col-xs-12">
			<div class="item"><span class="pe-7s-gift"><em class="hidden">hidden</em></span>
			<div class="box-content">
			<h3>Gift Voucher</h3>
			</div>
			</div>
			</div>
			<div class="item-inner col-lg-3 col-md-6 col-sm-6 col-xs-12">
			<div class="item"><span class="pe-7s-global"><em class="hidden">hidden</em></span>
			<div class="box-content">
			<h3>Free Shipping<span>*</span></h3>
			</div>
			</div>
			</div>
			<div class="item-inner col-lg-3 col-md-6 col-sm-6 col-xs-12">
			<div class="item"><span class="pe-7s-headphones"><em class="hidden">hidden</em></span>
			<div class="box-content">
			<h3>24/7 Support</h3>
			</div>
			</div>
			</div>
			<div class="item-inner col-lg-3 col-md-6 col-sm-6 col-xs-12">
			<div class="item"><span class="pe-7s-door-lock"><em class="hidden">hidden</em></span>
			<div class="box-content">
			<h3>Secure Payment</h3>
			</div>
			</div>
			</div>
			</div>
			</div>
		';
		$content_block4 = '
			<div class="logo_footer"><a href="#"><img src="{static_block_url}img/cms/logo_footer.png" /></a></div>	
		';
		$content_block5 = '
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
			<div class="copyright ">© 2018 <a href="https://themeforest.net/user/labertheme/portfolio">Laberthemes. </a>All Rights Reserved</div>
			</div>			
		';
		$content_block6 = '
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<div class="payment"><a href="#"><i class="fa fa-cc-mastercard">&nbsp;</i></a> <a href="#"><i class="fa fa-cc-visa">&nbsp;</i></a> <a href="#"><i class="fa fa-cc-paypal">&nbsp;</i></a> <a href="#"><i class="fa fa-cc-discover">&nbsp;</i></a> <a href="#"><i class="fa fa-credit-card">&nbsp;</i></a> <a href="#"><i class="fa fa-cc-amex">&nbsp;</i></a></div>
			</div>			
		';
		
		
		$displayNav = Hook::getIdByName('displayNav');
		$displayNav1 = Hook::getIdByName('displayNav1');
		$displayNav2 = Hook::getIdByName('displayNav2');
		$displayTop = Hook::getIdByName('displayTop');
		$displayMegamenu = Hook::getIdByName('displayMegamenu');
		$displayImageSlider = Hook::getIdByName('displayImageSlider');
		$displayLeftColumn = Hook::getIdByName('displayLeftColumn');
		$displayRightColumn = Hook::getIdByName('displayRightColumn');
		$displayHome = Hook::getIdByName('displayHome');
		$displayPosition1 = Hook::getIdByName('displayPosition1');
		$displayPosition2 = Hook::getIdByName('displayPosition2');
		$displayPosition3 = Hook::getIdByName('displayPosition3');
		$displayPosition4 = Hook::getIdByName('displayPosition4');
		$displayPosition4 = Hook::getIdByName('displayPosition5');
		$displayPosition4 = Hook::getIdByName('displayPosition6');
		$displayFooterBefore = Hook::getIdByName('displayFooterBefore');
		$displayFooter = Hook::getIdByName('displayFooter');
		$displayFooterAfter = Hook::getIdByName('displayFooterAfter');
		
		
		$id_shop = Configuration::get('PS_SHOP_DEFAULT');
		
		/*install static Block*/
		$result = true;
		$result &= Db::getInstance()->Execute('INSERT INTO `'._DB_PREFIX_.'labcustomhtml` (`id_labcustomhtml`, `hook`, `active`) 
			VALUES
			(1, "displayPosition1", 1),
			(2, "displayPosition2", 1),
			(3, "displayPosition4", 1),
			(4, "logoFooter", 1),
			(5, "displayFooterAfter", 1),
			(6, "displayFooterAfter", 1)
			
			;'); 
		
		$result &= Db::getInstance()->Execute('INSERT INTO `'._DB_PREFIX_.'labcustomhtml_shop` (`id_labcustomhtml`, `id_shop`,`active`) 
			VALUES 
			(1,'.$id_shop.', 1),
			(2,'.$id_shop.', 1),
			(3,'.$id_shop.', 1),
			(4,'.$id_shop.', 1),
			(5,'.$id_shop.', 1),
			(6,'.$id_shop.', 1)
			
			
			;');
		
		foreach (Language::getLanguages(false) as $lang)
		{
			$result &= Db::getInstance()->Execute('INSERT INTO `'._DB_PREFIX_.'labcustomhtml_lang` (`id_labcustomhtml`, `id_shop`, `id_lang`, `title`, `content`) 
			VALUES 
			( "1", "'.$id_shop.'","'.$lang['id_lang'].'","banner displayposition1", \''.$content_block1.'\'),
			( "2", "'.$id_shop.'","'.$lang['id_lang'].'","banner displayposition2", \''.$content_block2.'\'),
			( "3", "'.$id_shop.'","'.$lang['id_lang'].'","banner displayposition4", \''.$content_block3.'\'),
			( "4", "'.$id_shop.'","'.$lang['id_lang'].'","logo footer", \''.$content_block4.'\'),
			( "5", "'.$id_shop.'","'.$lang['id_lang'].'","Copyright", \''.$content_block5.'\'),
			( "6", "'.$id_shop.'","'.$lang['id_lang'].'","payment", \''.$content_block6.'\')
			
			;');
		}
		return $result;
	}
}