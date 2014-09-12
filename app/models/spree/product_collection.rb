module Spree
  class ProductCollection < Spree::Base

    has_many :images, -> { order(:position) }, :as => :viewable, :dependent => :destroy, :class_name => 'Spree::Image'

    has_many :product_collection_products
    has_many :products, :through => :product_collection_products
    enum status: [ :published, :media_needed, :products_needed ]
  end
end
