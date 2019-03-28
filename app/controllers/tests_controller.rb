class TestsController < Simpler::Controller

  def index
    @time = Time.now
  end

  def create

  end

  def show
    render plain: "Show with params #{params[:id]}"
  end

end
