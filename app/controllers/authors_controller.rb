class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    @author = Author.new(authors_params)

    @author.save
    redirect_to @author
  end

  private
    def authors_params
      params.require(:author).permit(:first_name, :last_name, :homepage)
    end
end
