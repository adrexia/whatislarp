<header class="header" role="banner">
	<div class="inner">


			<section class="brand-group">
				<% if $SiteConfig.Logo %>
					<h1 class="image">
						<a href="$BaseHref" class="logo" rel="home" alt="$SiteConfig.LogoText" style="background-image: url($SiteConfig.Logo.URL);">
							<span class="sr-only">
								$SiteConfig.LogoText
							</span>
						</a>
					</h1>
				<% else %>
					<h1 class="seven columns">
						<a href="$BaseHref" class="logo" rel="home">
							$SiteConfig.LogoText
						</a>
					</h1>
				<% end_if %>
			</section>


	</div>
</header>
<% include Navigation %>
<div class="row login-row">
	<div class="columns twelve">
		<p class="btn-login pull-right">
			<% if $CurrentMember %>
			<span class="meta-data">
				<a href="$MemberProfilePage.Link">
					<i class="icon icon-user"></i>
					$CurrentMember.FirstName
				</a>
			</span>

			<% end_if %>
			<span class="btn medium default metro rounded login pull_right">
				<% if $CurrentMember %>
					<a href="{$BaseHref}Security/logout?BackURL={$Link}">
						Log out
					</a>
				<% else %>
					<a href="{$BaseHref}Security/login?BackURL={$Link}">
						<i class="icon icon-user"></i>
						Login
					</a>
				<% end_if %>
			</span>
		</p>
	</div>
</div>
