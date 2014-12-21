class AddDetailsToPost < ActiveRecord::Migration
  def change
    add_column :posts, :thumb, :string
    add_column :posts, :subtitle, :string
  end
end
