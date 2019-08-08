class LynnPhotosController < ApplicationController
  def index
    @lynn_photos = LynnPhoto.all
    respond_to do |format|
      format.js { render "index" }      
      format.html {  }
    end
  end

  def show
    @lynn_photo = LynnPhoto.find(params[:id])
    respond_to do |format|
      format.js { render "show", :locals => {:id => @lynn_photo.id} }      
      format.html {  }
    end
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
    puts "let us destroy, amen"
    @lynn_photo = LynnPhoto.find_by(id: params[:id])
    @lynn_photo.destroy!
    redirect_to lynn_photos_path
  end

  private

  def lynn_photo_params
    params.require(:lynn_photo).permit(:photo, :year, :city_taken, :country_taken)
  end
end
