class AddStateToWarehouses < ActiveRecord::Migration[5.2]
  def change
    add_column :warehouses, :state, :string
  end
end
