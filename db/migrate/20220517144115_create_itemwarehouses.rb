class CreateItemwarehouses < ActiveRecord::Migration[5.2]
  def change
    create_table :itemwarehouses do |t|
      t.references :item, foreign_key: true
      t.references :warehouse, foreign_key: true

      t.timestamps
    end
  end
end
