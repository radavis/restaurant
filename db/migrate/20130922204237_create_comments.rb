class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :menu_item_id
      t.text :content

      t.timestamps
    end
  end
end
