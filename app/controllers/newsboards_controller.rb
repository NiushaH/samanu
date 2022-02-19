class NewsboardsController < ApplicationController

  def index
    @newsboard = Newsboard.all.order("create_at DESC")
  end

  def new
    @newsboard = Newsboard.new
  end

  def create
    @newsboard = Newsboard.new(newsboard_params)

    if @newsboard.save
      redirect_to @newsboard
    else
      render 'new'
    end
  end
  
  def show
    @newsboard = Newsboard.find(params[:id])
  end

  private

  def newsboard_params
    params.require(:newsboard).permit(:title, :date_created)
  end
end
