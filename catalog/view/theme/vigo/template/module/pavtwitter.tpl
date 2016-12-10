		
<div class="block block-twitter-feed">
	<div class="block-title"><strong><span><?php echo $heading_title;?></span></strong></div>
	<div class="block-content">
<script type="text/javascript">
function handleTweets(tweets){
    var x = tweets.length;
    var n = 0;
    var element = document.getElementById('feed_container');
    var html = '<ul>';
    while(n<x) {
      html += '<li>' + tweets[n] + '</li>';
      n++;
    }
    html += '</ul>';
    element.innerHTML = html;
}
function dateFormater(date) {
    return date.toDateString();
}
jQuery(document).ready(function(){
    var widgetid = '<?php echo $widget_id; ?>';
    var showcounts = '<?php echo $count; ?>';
    twitterFetcher.fetch(widgetid, 'feed_container', showcounts, true, true, true, dateFormater, true);
});
</script>
<a class="button btn-twitter-follow f-right" href="http://twitter.com/<?php echo $username; ?>">Follow</a>
<div class="clear"></div>
<div id="feed_container"></div>
</div>
</div>
                        
