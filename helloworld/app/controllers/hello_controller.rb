class HelloController < ApplicationController
  def index
    @time = Time.current.in_time_zero("Asia/Tokyo")
  end
end
