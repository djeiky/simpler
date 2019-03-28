require 'erb'
require_relative "renderers/plain_text_renderer"
require_relative "renderers/html_renderer"

module Simpler
  class View

    RENDERERS = {"text/plain" => PlainTextRenderer, "text/html" => HtmlRenderer}
    DEFAULT_RENDERER = RENDERERS["text/html"]

    def initialize(env)
      @env = env
    end

    def render(binding)
      renderer = RENDERERS[response_type] || DEFAULT_RENDERER
      renderer = renderer.new(@env)
      renderer.render(binding)
    end

    private

    def response_type
      @env['simpler.response_type']
    end
  end
end
