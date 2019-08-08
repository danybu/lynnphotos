class StaticPagesController < ApplicationController

  $current_photo = LynnPhoto.all.first

  def home
    # binding.pry
    load_photo
    @lynn_photo = $current_photo
    respond_to do |format|
      format.html { }
      format.js { }
    end
  end

  def next_photo
    # binding.pry
    $current_photo = next_photo_for($current_photo)
    # load_photo
    @lynn_photo = $current_photo
    # render 'static_pages/home'
    respond_to do |format|
      format.js { }
      format.html { redirect_to root_path, turbolinks: false }
    end
  end

  def previous_photo
    $current_photo = previous_photo_for($current_photo)
    @lynn_photo = $current_photo
    # render 'static_pages/home'
    respond_to do |format|
      format.js { }
      format.html { redirect_to root_path, turbolinks: false }
    end
  end

  def about
  end

  def write_mail
    puts params[:anything]
    puts "---"
    from_mail = params[:anything]["from_mail"]
    from_name = params[:anything]["from_name"]
    from_text = params[:anything]["comment"]
    puts from_text
    picture_ids = params[:anything]["selection"].split("-")
    LynnMailer.order(from_mail,from_name,picture_ids,from_text).deliver_now
  end

  private
  def next_photo_for(photo)
    next_photo = LynnPhoto.where("id > ?", photo.id).first
    if !next_photo.nil?
      return next_photo
    else
      return LynnPhoto.all.first
    end
  end

  def previous_photo_for(photo)
    previous_photo = LynnPhoto.where("id < ?", photo.id).last
    if !previous_photo.nil?
      return previous_photo
    else
      return LynnPhoto.all.last
    end
  end

  def load_photo
    $current_photo = LynnPhoto.find_by(id: $current_photo_id)
    if $current_photo.nil?
      $current_photo_id = LynnPhoto.all.first.id.to_i
      $current_photo = LynnPhoto.find_by(id: $current_photo_id)
    end
    puts "lynnphoto_id is nu #{$current_photo_id} en #{$current_photo.id}"
  end
end
