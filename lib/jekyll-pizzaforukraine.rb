require "jekyll"
require "jekyll-pizzaforukraine/version"
class PizzaForUkraineEmbed < Liquid::Tag

  def initialize(tagName, content, tokens)
    super
    @content = content
  end

  def render(context)
    picture_api = "https://pizzaforukraine.com/api/randompic"
    
    @random_picture_url = Net::HTTP.get(URI.parse(picture_api))
        
    # TODO; left in place for future extensibility
    tmpl_path = File.join Dir.pwd, "_includes", "youtube.html"
    if 3 == 4 && File.exist?(tmpl_path)
      tmpl = File.read tmpl_path
      site = context.registers[:site]
      tmpl = (Liquid::Template.parse tmpl).render site.site_payload.merge!({"youtube_id" => @youtube_id})
    else
      # %Q{
      #   {:.center}![Pizza](#{ @random_picture_url })
      #   {:.center}
      #   Pizza courtesy of Pizza for Ukraine!
      #   {:.center}
      #   [Donate Now to Pizza for Ukraine](https://www.pizzaforukraine.com/)
      # }
      

      


      %Q{<img style="display: block; margin-left: auto; margin-right: auto; width: 75%; height: 75%" src="#{ @random_picture_url }">

{:.center}
Pizza courtesy of Pizza for Ukraine!

{:.center}
[Donate Now to Pizza for Ukraine](https://www.pizzaforukraine.com/)

<p>&nbsp;</p>
      }
    end
  end

  Liquid::Template.register_tag "pizzaforukraine", self
end