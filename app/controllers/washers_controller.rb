class WashersController < ApplicationController
	protect_from_forgery with: :null_session
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

  # PATCH/PUT /washers/1
  # PATCH/PUT /washers/1.json
  def update
    @washer = Washer.find(params[:id])
    if @washer.update_attributes(washer_params)
      flash[:success] = "Profile updated"
      redirect_to washers_path
    else
      render 'new'
    end
    # respond_to do |format|
    #   if @washer.update(washer_params)
    #     format.json { render :show, status: :ok, location: @user }
    #   else
    #     format.json { render json: @washer.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    Washer.find(params[:id]).destroy
    flash[:success] = "Washer deleted"
    redirect_to washers_path
  end

  private
  	def washer_params
      params.require(:washer).permit(:name, :channel, :start_at, :intervel, :start_stop)
    end
end
