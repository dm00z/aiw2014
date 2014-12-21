class ChangeColumnsType < ActiveRecord::Migration
  def up
    change_column :categories, :desc, :text
  end

  def down
    change_column :categories, :desc, :string
  end
end
