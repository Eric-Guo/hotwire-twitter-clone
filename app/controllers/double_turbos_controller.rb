class DoubleTurbosController < ApplicationController
  def show
    @turbo_time = Time.now
    s = render_to_string partial: 'double_turbos/link', locals: { turbo_time: @turbo_time }
    p1 = turbo_stream.replace 'double_turbo_part1', s
    p2 = turbo_stream.replace 'double_turbo_part2', "<turbo-frame id='double_turbo_part2'>#{@turbo_time}</turbo-frame>"
    render turbo_stream: [p1, p2]
  end
end
