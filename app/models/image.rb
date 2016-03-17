class Image < ActiveRecord::Base
  mount_uploader :image_url, ImageUploader
  belongs_to :report
  belongs_to :pet


  def square_image
    image_url.url(:image)
  end

end
