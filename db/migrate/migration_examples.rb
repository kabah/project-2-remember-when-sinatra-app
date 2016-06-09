class AddReferencesToUserTable < ActiveRecord::Migration
  def change
  	add_reference :memories, :users, index: true, foreign_key: true
  end

  def change
  	add_reference :comments, :users, index: true, foreign_key: true
  end
end

def change
  	add_column(:comments, :user_id, :interger)
end