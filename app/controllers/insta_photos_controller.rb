class InstaPhotosController < ApplicationController
  before_action :set_insta_photo, only: [:show, :edit, :update, :destroy]

  # GET /insta_photos
  # GET /insta_photos.json
  def index
    @insta_photos = InstaPhoto.all
  end

  # GET /insta_photos/1
  # GET /insta_photos/1.json
  def show
  end

  # GET /insta_photos/new
  def new
    @insta_photo = InstaPhoto.new
  end

  # GET /insta_photos/1/edit
  def edit
  end

  # POST /insta_photos
  # POST /insta_photos.json
  def create
    @insta_photo = InstaPhoto.new(insta_photo_params)

    respond_to do |format|
      if @insta_photo.save
        format.html { redirect_to @insta_photo, notice: 'Insta photo was successfully created.' }
        format.json { render :show, status: :created, location: @insta_photo }
      else
        format.html { render :new }
        format.json { render json: @insta_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insta_photos/1
  # PATCH/PUT /insta_photos/1.json
  def update
    respond_to do |format|
      if @insta_photo.update(insta_photo_params)
        format.html { redirect_to @insta_photo, notice: 'Insta photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @insta_photo }
      else
        format.html { render :edit }
        format.json { render json: @insta_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insta_photos/1
  # DELETE /insta_photos/1.json
  def destroy
    @insta_photo.destroy
    respond_to do |format|
      format.html { redirect_to insta_photos_url, notice: 'Insta photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insta_photo
      @insta_photo = InstaPhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insta_photo_params
      params.require(:insta_photo).permit(:username, :caption, :likes_count, :url)
    end
end
