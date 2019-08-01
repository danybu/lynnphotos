class LynnPhotosController < ApplicationController
  def index
    @lynn_photos = LynnPhoto.all
    puts "going into index with #{@lynn_photos.size} fotos"
  end

  def show
    @lynn_photo = LynnPhoto.find(params[:id])
  end

  def new
    @lynn_photo = LynnPhoto.new
  end

  def create
    @lynn_photo = LynnPhoto.new(lynn_photo_params)
    @lynn_photo.save
  end

  def edit
    @lynn_photo = LynnPhoto.find(params[:id])
  end

  def update
    @lynn_photo = LynnPhoto.find(params[:id])
    LynnPhoto.update(lynn_photo_params)
  end
  
  def destroy
  end

  private

  def lynn_photo_params
    params.require(:lynn_photo).permit(:photo, :year, :city_taken, :country_taken)
  end
end
