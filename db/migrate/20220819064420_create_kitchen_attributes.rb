class CreateKitchenAttributes < ActiveRecord::Migration[7.0]
  def change
    create_table :kitchens do |t|
       t.string :Item_Title
      t.integer :Units
      t.timestamps
    end
  end
end
