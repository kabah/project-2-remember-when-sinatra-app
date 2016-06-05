class CreateMemories < ActiveRecord::Migration
  def change
  	create_table :memories do |t|
      t.string :name
      t.string :title 
      t.string :content
      t.timestamps 
    end
  end
end
