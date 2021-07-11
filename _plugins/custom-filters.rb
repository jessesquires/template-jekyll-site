# Custom filters to render:
#    - image asset urls
#
# All urls are relative, but can be made absolute using `{{ value | absolute_url }}`
#
# Examples:
# - Create relative image asset urls with (optional) subdirectory name:
#    `{{ "photo.jpg" | img_url }}`
#    `{{ "photo.jpg" | img_url: 'blog' }}`
#
# See:
#    - https://jekyllrb.com/docs/plugins/filters/
#    - https://github.com/jekyll/jekyll/blob/4fbbefeb7eecff17d877f14ee15cbf8b87a52a6e/lib/jekyll/filters.rb
#    - https://github.com/Shopify/liquid/wiki/Liquid-for-Programmers

module Jekyll
  module CustomFilters

    # Returns url to an image asset. Specify an optional subdirectory name.
    def img_url(input, sub_directory_name = '')
      if !sub_directory_name.nil? && !sub_directory_name.empty?
        sub_directory_name.concat("/")
      end
      create_url("#{ sub_directory_name }#{ input }", 'img_url')
    end

    private

    def create_url(input, config_key)
      base_url = @context.registers[:site].config[config_key]

      if base_url.nil?
        abort "Cannot find site config value for key: #{ config_key }"
      end

      return "#{ base_url }#{ input }"
    end
  end
end

Liquid::Template.register_filter(Jekyll::CustomFilters)
