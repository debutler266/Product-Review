class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :reviews

  has_attached_file :product_img, styles: { :product_index => "250x350>", :product_show => "325x475>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :product_img, content_type: /\Aimage\/.*\z/
end
