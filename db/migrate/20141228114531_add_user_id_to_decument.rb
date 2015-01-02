class AddUserIdToDecument < ActiveRecord::Migration
  def change
    add_column :decuments, :user_id, :integer
  end
end
