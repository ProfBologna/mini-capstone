class Image < ApplicationRecord

  belongs_to :great_old_one

  validates :url, presence: true

end
