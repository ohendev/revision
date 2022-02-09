class ListsController < ApplicationController
  def index
    @lists = List.where(user: current_user)
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.user = current_user
    if @list.save
      redirect_to list_path(@list.id)
    else
      render :new
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    @name = params[:list][:name]
    @list.name = @name
    @list.photo = params[:list][:photo]
    if @list.save
      redirect_to list_path(@list)
    else
      render :edit
    end
  end

  private

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
