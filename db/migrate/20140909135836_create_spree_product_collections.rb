class CreateSpreeProductCollections < ActiveRecord::Migration
  def change
    create_table :spree_product_collections do |t|
      t.string :name
      t.integer :status
      t.integer :position, :default => 0
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :publish_on
    end
  end
end
