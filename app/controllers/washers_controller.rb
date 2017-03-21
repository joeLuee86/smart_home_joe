class WashersController < ApplicationController
  def new
  end

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

  # GET /users/1/edit
  def edit
    @washer = Washer.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @washer = Washer.new(washer_params)

    if @washer.save
      #@user.send_activation_email
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
