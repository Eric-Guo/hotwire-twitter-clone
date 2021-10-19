class DoubleTurbosController < ApplicationController
  def show
    @turbo_time = Time.now
    render content_type: 'text/vnd.turbo-stream.html'
  end
end
