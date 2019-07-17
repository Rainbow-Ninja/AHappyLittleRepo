class PaintingsController < ApplicationController
  before_action :set_painting, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!

  # GET /paintings
  # GET /paintings.json
  def index
    @bob_arr = []
    @bob_arr = Profile.first.paintings.order(:season, :episode)
  end

  # GET /paintings/1
  # GET /paintings/1.json
  def show
    @paintall = Painting.all
  end

  # GET /paintings/new
  def new

    if current_user
      if current_user.profile
        @painting = Painting.new(river: false, waterfall: false, beach: false, mountains: false, cabin: false, animalguest: false, startcolour: "white", shape: "rectangle")
        @painting.save
      else
        redirect_to new_profile_path
      end
    else 
      redirect_to new_user_session_path
    end
  end

  # GET /paintings/1/edit
  def edit
  end

  # POST /paintings
  # POST /paintings.json
  def create
    @painting.artwork.attach(params[:painting][:artwork])
    @profile = Profile.new 
    @profile.id = current_user.profile.id #current_user = device and need to sign in
    @profile.save
    @painting.profile_id = @profile.id

    respond_to do |format|
      if @painting.save
        format.html { redirect_to @painting, notice: 'Painting was successfully created.' }
        format.json { render :show, status: :created, location: @painting }
      else
        format.html { render :new }
        format.json { render json: @painting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paintings/1
  # PATCH/PUT /paintings/1.json
  def update
    if @painting.artwork
      @painting.artwork.purge
    end
    # if @car.pictures
    #   @car.pictures.purge
    # end
    respond_to do |format|
      if @painting.update(painting_params)
        format.html { redirect_to @painting, notice: 'Painting was successfully updated.' }
        format.json { render :show, status: :ok, location: @painting }
      else
        format.html { render :edit }
        format.json { render json: @painting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paintings/1
  # DELETE /paintings/1.json
  def destroy
    @painting.destroy
    respond_to do |format|
      format.html { redirect_to paintings_url, notice: 'Painting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_painting
      @painting = Painting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def painting_params
      params.require(:painting).permit(:trees, :river, :cabin, :beach, :mountains, :waterfall, :guest, :animalguest, :startcolour, :shape, :likes, :artwork, :profile_id, :episode, :season, :other)
    end
end
