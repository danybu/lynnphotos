class StaticPagesController < ApplicationController

  $current_photo_id = LynnPhoto.all.first.id.to_i
  $current_photo

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
    $current_photo_id += 1
    load_photo
    @lynn_photo = $current_photo
    # render 'static_pages/home'
    respond_to do |format|
      format.js { }
      format.html { redirect_to root_path, turbolinks: false }
    end
  end

  def previous_photo
    if $current_photo_id == LynnPhoto.all.first.id.to_i
      $current_photo_id = LynnPhoto.all.last.id.to_i
    else
      $current_photo_id -= 1

    end
    load_photo
    @lynn_photo = $current_photo
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
