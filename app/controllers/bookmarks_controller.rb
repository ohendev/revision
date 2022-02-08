class BookmarksController < ApplicationController
  before_action :find_list, except: [:destroy]

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    @movie = Movie.find(params[:bookmark][:movie_id])
    @bookmark.movie = @movie
    if @bookmark.save
      redirect_to list_path(@list.id)
    else
      render :new
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to request.referrer
  end

  private

  def find_list
    @list = List.find(params[:list_id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie)
  end
end
