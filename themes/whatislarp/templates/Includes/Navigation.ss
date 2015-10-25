<div class="main-nav-container">
	<nav class="main-nav">
		<ul>
			<li>
				<a class="nzlarps-logo ir" style="background-image: url($SiteConfig.Logo.URL);" href="http://www.nzlarps.org/" target="_blank">
				$SiteConfig.LogoText
				</a>
			</li>
			<% loop $Menu(1) %>
				<li><a href="$Link" class="$LinkingMode">$MenuTitle.XML</a></li>
			<% end_loop %>
		</ul>
	</nav>
</div>
