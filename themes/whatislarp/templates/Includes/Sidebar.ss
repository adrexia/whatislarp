<% if $GroupedGames %>
	<aside class="sidebar">
		<div class="sidebar-inner">
			<% if $GroupedGames.GroupedBy(getRoundTitle) %>

			<h3>Roster of Games</h3>
			<% loop $GroupedGames.GroupedBy(getRoundTitle) %>
				<% if getRoundTitle() =="round-0" %><% else %>
					<div class="pvs">
						<h5><a href="{$Top.getGameListingPage().Link}#$getRoundTitle()">$Top.NiceString($getRoundTitle(), true)</a></h5>
						<ul class="unstyled">
							<% loop $Children %>
								<li><a href="$Link">$Title</a></li>
							<% end_loop %>
						</ul>
					</div>
				<% end_if %>
			<% end_loop %>

			<% end_if %>
		</div>
	</aside>
<% end_if %>
<% if $Menu(2) %>
	<aside class="sidebar">
		<div class="sidebar-inner">
			<nav class="secondary">
				<% with $Level(1) %>
					<h3>
						$MenuTitle
					</h3>
					<ul>
						<% include SidebarMenu %>
					</ul>
				<% end_with %>
			</nav>
		</div>
	</aside>
<% end_if %>
