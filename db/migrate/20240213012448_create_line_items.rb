class CreateLineItems < ActiveRecord::Migration[7.1]
  def change
    create_table :line_items do |t|
      t.references :armor, null: false, foreign_key: true
      t.belongs_to :equip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
