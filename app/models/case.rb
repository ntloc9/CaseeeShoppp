class Case < ApplicationRecord
    mount_uploaders :image, ImageUploader
    serialize :image, JSON # If you use SQLite, add this line.
    belongs_to :user, optional: true
    
    validates :brand, :model, :price, :title, presence: true
end
