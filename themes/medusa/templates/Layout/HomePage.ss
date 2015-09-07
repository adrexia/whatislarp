<div class="typography row">
	<article class="eight columns feature-group">
		<% include Slider %>
		<div class="content subhead">$Content</div>
		<div class="divider"></div>
	</article>
	<aside class="four columns sidebar">
		<div class="sidebar-inner">
			$Sidebar
		</div>
	</aside>
</div>


<div class="typography row content">
	<section class="eight columns">
		<% if News %>

			<div class="resultsHeader">
				<h2>News</h2>
			</div>
			<section class="pagination-content">
			<% loop News %>
				<article class="$EvenOdd row $FirstLast">
					<p class="meta-info three columns">
						<em>
							<time datetime="$Created">$Created.Format(d M Y)</time>
						</em>
						<span class="label metro rounded alpha-change $Author.LimitCharacters(1,'').LowerCase">
						<% if Author %>by $Author.LowerCase<% else %>by admin<% end_if %>
						</span>

					</p>
					<div class="columns nine">
						<header>
							<h3 id="ID-{$ID}">$Title</h3>
						</header>
						<div class="text">
							$Content
						</div>
					</div>


				</article>
			<% end_loop %>
			</section>
			<div class="row">
				<div class="columns ten push_two">
				<% with News %>
					<% include Pagination %>
				<% end_with %>
				</div>
			</div>
		<% end_if %>

		$Form
	</section>
	<% if $SponsorLinks %>
	<section class="sponsors">
		<ul class="nav size_{$SponsorLinks.Count()}">
			<% loop $getSponsorLinks %>
			<li>
				<% if $LinkURL %>
				<a href="$LinkURL" $TargetAttr>
					<span class="center">
						<span class="sr-only">$Title</span>
						$Logo
					</span>
				</a>
				<% end_if %>
			</li>
			<% end_loop %>
		</ul>
	</section>
	<% end_if %>
</div>
