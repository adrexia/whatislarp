<header class="main-header">
<h1>$Title</h1>

<% if $FeatureImage %>
<p>
	<img class="home-feature-photo" title="" src="$FeatureImage.setWidth(300).URL" alt="$FeatureImage.Title" width="300" />
</p>
<% end_if %>

$Content

</header>

<div id="main" class="clearfix" role="main">
<% include Slider %>
</div>
