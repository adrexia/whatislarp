<nav class="navbar metro" id="nav1">
<div class="row">
	<a class="toggle" gumby-trigger="#nav1 > .row > ul" href="#"><i class="icon-menu"></i></a>
	<ul class="twelve columns">
		<% loop $Menu(1) %>
			<% if $ClassName==HomePage %>
				<li class="$LinkingMode is-icon">
					<a class="$LinkingMode is-icon" href="$Link" title="$Title.XML">
						<span class="hidden-desktop">$Title.XML</span>
						<i class="icon icon-home hidden-mobile"></i>
					</a>
				</li>
			<% else_if $ClassName==RegistrationPage %>
				<% if not $getCurrentRegistration %>
					<li class="$LinkingMode">
						<a class="$LinkingMode has-border" href="$Link" title="$Title.XML">
							$MenuTitle.XML</a>
						</li>
				<% end_if %>
			<% else_if $ClassName==GameSignupPage %>
				<% if $getCurrentRegistration %>
					<li class="$LinkingMode">
						<a class="$LinkingMode has-border" href="$Link" title="$Title.XML">$MenuTitle.XML</a>
					</li>
				<% end_if %>
			<% else %>
				<li class="$LinkingMode">
					<a class="$LinkingMode has-border" href="$Link" title="$Title.XML">$MenuTitle.XML</a>
				</li>
			<% end_if %>
		<% end_loop %>
	</ul>
	</div>
</nav>
