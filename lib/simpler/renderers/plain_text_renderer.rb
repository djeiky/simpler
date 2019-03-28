class PlainTextRenderer

  def initialize(env)
    @env = env
  end

  def render(binding)
    response_data
  end

  def response_data
    @env['simpler.response_data']
  end

end
