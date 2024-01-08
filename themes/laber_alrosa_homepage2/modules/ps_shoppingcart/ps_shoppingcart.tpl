<div class=" pull-right">
  <div class="blockcart laber-cart " data-refresh-url="{$refresh_url}">
      
        <a class="cart" rel="nofollow" href="{$cart_url}">
			<span class="icon">
			
				<span class="cart-products-count">{$cart.products_count}</span>	
			</span>	
        </a>
		<div class="cart_block block exclusive">
			{if $cart.products}
			<p class="products_count">Your Cart ({$cart.products_count})</p>
			{foreach from=$cart.products item='products'}
				
				<div class="products">
					<div class="img">
						{block name='product_thumbnail'}
							<a href="{$products.url}" class="thumbnail product-thumbnail">
								<img
								src = "{$products.cover.bySize.small_default.url}"
								alt = "{$products.cover.legend}"
								data-full-size-image-url = "{$products.cover.large.url}"
								/>
							</a>
						{/block}
					</div>
					<div class="cart-info">
						<h2 class="h2 productName" itemprop="name">
							<a href="{$products.url}">{$products.name}</a>
						</h2>
						<div class="laberPrice">
							<span class="quantity">{$products.quantity}X</span>
							<span class="price">{$products.price}</span>
						</div>
					</div>
					<p class="remove_link">
						<a rel="nofollow" href="{$products.remove_from_cart_url}"><i class="fa fa-trash"></i></a>
					</p>	
				</div>
			{/foreach}
			<div class="cart-prices">
				<span class="total pull-left">
					{l s='Total:' d='Shop.Theme.Laberthemes'}
				</span>
				{if $cart.totals.total.amount}
					<span class="amount pull-right">
						{Product::convertAndFormatPrice($cart.totals.total.amount)}
					</span>
				{else}
					<span class="amount pull-right">
						{Product::convertAndFormatPrice(0.00)}
					</span>
				{/if}
			</div>
			<div class="cart-buttons">
				 <a rel="nofollow" href="{$cart_url}">
					{l s='Check out' d='Shop.Theme.Laberthemes'} <i class="ion-chevron-right"></i>
				</a>
			</div>
			{else}
				<p class="no-item">
					{l s='No products in the cart.' d='Shop.Theme.Laberthemes'}
				</p>
			{/if}
		</div>
	</div>
</div>
