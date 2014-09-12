object false
node(:count) { @product_collections.count }
node(:total_count) { @product_collections.total_count }
node(:current_page) { params[:page] ? params[:page].to_i : 1 }
node(:per_page) { params[:per_page] || Kaminari.config.default_per_page }
node(:pages) { @product_collections.num_pages }
child(@product_collections => :product_collections) do
  extends "spree/api/product_collections/show"
end
