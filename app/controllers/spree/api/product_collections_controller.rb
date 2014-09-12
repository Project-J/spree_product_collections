module Spree
  module Api
    class ProductCollectionsController < BaseController
      def index
        @product_collections = ProductCollection.where(:status => 1)

        @product_collections = @product_collections.distinct.page(params[:page]).per(params[:per_page])
        expires_in 15.minutes, :public => true
        headers['Surrogate-Control'] = "max-age=#{15.minutes}"
        respond_with(@product_collections)
      end

      def show
        @product_collection = ProductCollection.where(:id => params[:id], :status => 1).where.not(:publish_on => nil)
        expires_in 15.minutes, :public => true
        headers['Surrogate-Control'] = "max-age=#{15.minutes}"
        headers['Surrogate-Key'] = "product_collection_id=1"
        respond_with(@product_collection)
      end
    end
  end
end
