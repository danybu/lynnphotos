class LynnPhoto < ApplicationRecord
  mount_uploader :photo, PhotoUploader
end
