class WashersController < ApplicationController
  def new
  end

  # GET /washers/1
  # GET /washers/1.json
  def show
  	@washer = Washer.find(params[:id])
  end

  def index
  	@washers = Washer.all 
  end

    # GET /washer/new
  def new
    @washer = Washer.new
  end

  # GET /washers/1/edit
  def edit
    @washer = Washer.find(params[:id])
  end

  # POST /washers
  # POST /washers.json
  def create
    @washer = Washer.new(washer_params)

    if @washer.save
      #@washer.send_activation_email
      flash[:info] = "Schedule is created successfully"
      redirect_to washers_path
    else
      render 'new'
    end
  end

  private
  	def washer_params
      params.require(:washer).permit(:name, :channel, :start_at, :intervel)
    end
end
