class CreateCommentsTable < ActiveRecord::Migration
  def change
  	create_table :comments do |t|
      t.string :content
      t.belongs_to :memory, index: true
      t.timestamps null: false 
    end
    add_foreign_key :comments, :memories, column: :memory_id
  end
end
