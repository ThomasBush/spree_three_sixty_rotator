class AddRotatorUrlToProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :rotator_url, :string
  end
end
