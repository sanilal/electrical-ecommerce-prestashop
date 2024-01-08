<div  class="pull-right">
	<div class="laberUserInfo dropdown js-dropdown ">
		<div class="expand-more" data-toggle="dropdown">
			<div class="laberUser">
				<span class="icon"><i class="pe-7s-user"></i></span>				
			</div>
		</div>
		<div class="laber-user-info dropdown-menu">
		  <div class="user-info">
			
			{if $logged}
			<p class="nameuser">
				<span>Hello!</span> 
				{if $logged} 
					<a class="account"
						href="{$my_account_url}"
						title="{$customerName}"
						rel="nofollow">
						{$customerName}
					</a>
				{else}
				<span>Sign in</span>
				{/if}
			</p>
			<div class="signin">
			  <a class="logout"
				href="{$logout_url}"
				rel="nofollow">
				{l s='Sign out' d='Shop.Theme.Actions'}
			  </a>
			  </div>
			{else}
				<div class="signin">
				<a href="{$my_account_url}"
				title="{l s='Log in to your customer account' d='Shop.Theme.CustomerAccount'}"
				rel="nofollow">
					{l s='Sign in' d='Shop.Theme.Actions'}
				</a>
				<span>{l s='New customer! Start here.' d='Shop.Theme.Actions'}</span>
				</div>
				<a class="register" href="{$urls.pages.register}">
					{l s='Register' d='Shop.Theme.Actions'}
				</a>
			{/if}
		  </div>
		</div>
	</div>
</div>