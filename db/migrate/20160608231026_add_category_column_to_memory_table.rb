class AddCategoryColumnToMemoryTable < ActiveRecord::Migration
  def change
  	add_column(:memories, :category, :string,)
  end
end
