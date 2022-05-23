class ItemwarehousesController < ApplicationController

  def create
    item = Item.find(params[:id])
    warehouse = Warehouse.find_by(id: params[:warehouse_id])
    itemwarehouse = Itemwarehouse.create(warehouse_id: warehouse.id, item_id: item.id)
    redirect_to "/warehouses/#{warehouse.id}"
  end

end
