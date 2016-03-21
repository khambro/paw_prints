# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

    def store_dir
      "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    end

    # version :thumb do
    #   process :resize_to_fit => [32, 32]
    # end

    version :square do
      process :resize_to_fill => [256, 256]
    end

    # version :square do
    #   process :resize_to_fill => [256, 256]
    # end

    version :image do
      process :resize_to_fit => [400, 600]
    end

    # version :horizontal do
    #   process :resize_to_fill => [400, 250]
    # end

    # version :big do
    #   process :resize_to_fill => [512, 512]
    # end

    def fix_exif_rotation
      manipulate! do |img|
        img.tap(&:auto_orient)
      end
    end

    process :fix_exif_rotation

end
