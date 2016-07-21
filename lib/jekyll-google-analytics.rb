require "jekyll-google-analytics/version"

module Jekyll
  class GoogleAnalyticsTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
    end

    def render(context)
      tracking_id = context.registers[:site].config["ga"]["tracking_id"]

      return "" if track_id.empty?
      
      html = <<-EOB
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', '#{tracking_id}', 'auto');
  ga('send', 'pageview');

</script>
EOB
      html
    end
  end
end

Liquid::Template.register_tag('ga', Jekyll::GoogleAnalyticsTag)