class WarehousesController < ApplicationController
  def index
    @warehouses = Warehouse.all
  end

  def show
    @warehouse = Warehouse.find(params[:id])
    @items = Item.all

  end

  def new

  end

  def create
    warehouse = Warehouse.create!(warehouse_params)
    if warehouse.save
      redirect_to "/warehouses"
    else
      redirect_to "/warehouses"
    end
  end

  def destroy
    item = Warehouse.find(params[:id])
    item.destroy
    redirect_to "/warehouses"

  end

  private
    def warehouse_params
      params.permit(:name, :state)
    end
end
