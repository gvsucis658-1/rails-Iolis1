class CreateArmors < ActiveRecord::Migration[7.1]
  def change
    create_table :armors do |t|
      t.string :name
      t.string :armor_type
      t.integer :armor_class
      t.integer :weight
      t.text :description

      t.timestamps
    end
  end
end
