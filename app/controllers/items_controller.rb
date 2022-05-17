class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def new

  end

  def create
    item = Item.create!(item_params)
    if item.save
      redirect_to "/items"
    else
      redirect_to "/items"
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params)
    redirect_to "/items"
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to "/items"

  end

private
  def item_params
    params.permit(:name, :price)
  end

end
