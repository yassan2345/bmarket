class Product < ApplicationRecord
  belongs_to :user
  belongs_to :brand
  belongs_to :category
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  # - has_many :comments, dependent: :destroy
  # - has_one :dealing, dependent: :destroy
  # - has_many :products_tags
  # - has_many :tags,  through:  :products_tags
end
