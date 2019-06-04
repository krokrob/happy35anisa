class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process eager: true # Force version generation at upload time.

  process convert: 'jpg'

  version :bright_face do
    cloudinary_transformation width: 256, height: 256, crop: :thumb, gravity: :face
  end
end
