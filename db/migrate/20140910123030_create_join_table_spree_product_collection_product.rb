class CreateJoinTableSpreeProductCollectionProduct < ActiveRecord::Migration
  def change
    create_join_table :product_collections, :products, :table_name => :spree_product_collection_products do |t|
      t.index [:product_collection_id, :product_id], :name => 'product_collection_to_product'
      t.index [:product_id, :product_collection_id], :name => 'product_to_product_collection'
      t.integer :position, :default => 0
    end
  end
end
