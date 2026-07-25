# frozen_string_literal: true

require "jekyll"
require "jekyll-stepper/version"
require "jekyll-stepper/converter"

module Jekyll
  module Stepper
  end
end

Jekyll::Hooks.register [:pages, :posts, :documents], :pre_render do |doc|
  converter = Jekyll::Stepper::Converter.new(doc.site.config)
  doc.content = converter.convert(doc.content)
end
