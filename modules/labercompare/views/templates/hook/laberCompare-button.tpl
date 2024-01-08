
{if isset($product.id_product)}
<a 	href="javascript:void(0)" 
	class="button-action js-compare"  
    data-id-product="{$product.id_product|intval}"
    data-url-product="{$product.url}"
    data-name-product="{$product.name}"
    data-image-product="{$product.cover.small.url}"
   	data-url="{url entity='module' name='laberCompare' controller='actions'}"  
    title="">
	<span class="addCompare"><i class="fa fa-compress"></i></span>
    <span class="removeCompare"><i class="fa fa-check"></span></i>Compare
</a>
{/if}