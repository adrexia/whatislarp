<div class="typography row content">
	<section class="twelve columns">
		<article>
			<h2>$Title</h2>
			<div class="content">
				$Content
				<div class="row">
				<% if FilteredGames %>
					<div class="js-filters masonry-filters columns three">
						<h4 class="ptl">Filters
							<a class="clear-filter default" data-filter="*">
								clear
							</a>
						</h4>

						<p></p>
						<% loop $getGroupedGames.GroupedBy(Session) %>
							<% if $Session %>
								<% if $Session ==0 %>
									<a class="label metro rounded success" data-filter="to-be-scheduled">
										to-be-scheduled
									</a>
								<% else %>
									<a class="label metro rounded success" data-filter=".round-{$Session}">
										round {$Session}
									</a>
								<% end_if %>
							<% end_if %>
						<% end_loop %>
						<p></p>
						<% if $getAllTags(true) %>
							<% loop $getAllTags(true) %>
								<% if $Title %>
								<a class="label metro rounded success" data-filter=".$Title">
									$Top.NiceString($Title)
								</a>
								<% end_if %>
							<% end_loop %>
						<% end_if %>


					</div>
					<section class="masonry-items js-isotope columns nine">
					<% loop FilteredGames %>
						<article class="item item-filter $Restriction $Genre <% if $Session == 0 %>to-be-scheduled<% else %>round-{$Session}<% end_if %>">

							<a class="item-wrap alpha-change-border $Genre.LimitCharacters(1,'').LowerCase">
								<header>
									<h3 id="ID-{$ID}">$Title</h3>
									<em class="">
										run by <% if $FacilitatorText %>$FacilitatorText.LowerCase<% else_if MemberName %>$MemberName.LowerCase<% else %>hydra<% end_if %>
									</em>
								</header>
								<div class="text pvm">
									<p>$Brief</p>
								</div>
							</a>
						</article>
					<% end_loop %>
					</section>

					<% with FilteredGames %>
						<% include Pagination %>
					<% end_with %>
				<% else %>
					<div class="resultsHeader">
						<p class="pull-right">None</p>
					</div>

					<article class="">
						<p>No games</p>
					</article>
				<% end_if %>
				$Form
				$PageComments
			</div>
		</article>

	</section>
</div>
