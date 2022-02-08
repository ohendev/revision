class ListsController < ApplicationController
  def index
    @lists = List.where(user: current_user)
  end
end
