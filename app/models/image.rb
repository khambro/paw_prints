class Image < ActiveRecord::Base
  mount_uploader :image_url, ImageUploader
  belongs_to :report
  belongs_to :pet
  belongs_to :user


  def square_image
    image_url.url(:image)
  end

  def profile_image
    picture.picture.url(:profile)
  end

end
