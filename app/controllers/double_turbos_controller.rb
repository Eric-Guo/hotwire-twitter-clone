class DoubleTurbosController < ApplicationController
  def show
    @turbo_time = Time.now
  end
end
