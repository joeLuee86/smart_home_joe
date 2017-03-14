class SmartWashController < ApplicationController
  def index
  	@smart_wash_schdules = WashSchedule.all
  end

  def new
  end

  def update
  end

  def start
  end

  def stop
  end

end
