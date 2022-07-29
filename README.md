# Jekyll Pizza for Ukraine

This Jekyll plugin provides a tag that requests a random picture from the Pizza For Ukraine random picture api and generates a (responsive) html snippet to embed the picture into your site; honestly this tool is fine tuned for [fuzzyblog](https://fuzzyblog.io/blog/).  I'm happy to extend it; contact me if it doesn't meet your needs.

**Note**: This plugin was written by taking [dommmel's jekyll youtube plugin](https://github.com/dommmel/jekyll-youtube) and customizing it for a random picture inserter.  Any errors are mine not theirs and I appreciate the bootstrap that jekyll youtube gave me.

## Installation

Add this line to your Gemfile:

```ruby
group :jekyll_plugins do
  gem "jekyll-pizzaforukraine"
end
```

And then execute:

    $ bundle

Alternatively install the gem yourself as:

    $ gem install jekyll-pizzaforukraine

and put this in your ``_config.yml`` 

```yaml
plugins: [jekyll-pizzaforukraine]
 # This will require each of these gems automatically.
```

## Usage

Embed it as a tag where you want an image to come out:

```
 {% pizzaforukraine  %}
```

## Result

By default the plugin will output the following code


```markup
{:.center}
![Pizza](http://pizzaforukraine.com:443/assets/random/DSC01462.JPG)

{:.center}
Pizza courtesy of Pizza for Ukraine!

{:.center}
[Donate Now to Pizza for Ukraine](https://www.pizzaforukraine.com/)


```

