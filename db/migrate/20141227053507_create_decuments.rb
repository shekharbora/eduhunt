class CreateDecuments < ActiveRecord::Migration
  def change
    create_table :decuments do |t|
      t.string :subject
      t.string :title
      t.string :file
      t.string :description

      t.timestamps null: false
    end
  end
end
