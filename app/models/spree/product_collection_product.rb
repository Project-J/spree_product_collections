module Spree
  class ProductCollectionProduct < Spree::Base
    belongs_to :product
    belongs_to :product_collection
  end
end
