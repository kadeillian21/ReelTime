class OriginalPost < ApplicationRecord
  belongs_to :user
  include ImageUploader::Attachment(:image)
end
