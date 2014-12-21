class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :categories, :desc, :description
  end
end
