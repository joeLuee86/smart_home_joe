class SmartWashController < ApplicationController
  def index
  	@smart_wash_schdules = WashSchedule.all
  end

  def new
  end

  def update
  end

  def create
    @schedule = WashSchedule.new
    if @schedule.save
      flash[:info] = "A new schedule was created successfully!"
    else
      
    end
    render 'index'
  end

  def start
  end

  def stop
  end

end
