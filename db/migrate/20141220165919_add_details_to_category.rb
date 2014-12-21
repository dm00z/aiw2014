class AddDetailsToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :subtitle, :string
    add_column :categories, :image, :string
    add_column :categories, :desc, :string
  end
end
