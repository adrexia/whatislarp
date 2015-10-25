<header class="main-header">
	<h1>$Title</h1>
</header>
<div id="main" class="clearfix" role="main">
	<article class="content">
		$Content
		<% if $Form %>
			<hr />
			$Form
		<% end_if %>
	</article>

	<aside class="sidebar">
		<% if $getCurrentPromotionalBanners %>
		<ul class="promotional-banner-list">
			<% loop $getCurrentPromotionalBanners %>
				<li>
					<a href="$Link.URL">
						<img class="photo" src="$Image.setWidth(287).URL" alt="$Title -> $AltText" />
					</a>
				</li>
			<% end_loop %>
		</ul>
		<% end_if %>
		<% if $Sidebar %>
			<div class="sidebar-text">
				$Sidebar
			</div>
		<% end_if %>
	</aside>
</div>
