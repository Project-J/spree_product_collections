module Spree
  Product.class_eval do
    has_many :product_collection_products
    has_many :product_collections, :through => :product_collection_products
  end
end
