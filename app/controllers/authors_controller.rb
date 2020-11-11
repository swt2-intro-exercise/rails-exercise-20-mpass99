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

  def name
    @author.first_name + ' ' + @author.last_name
  end

  private
    def authors_params
      params.require(:author).permit(:first_name, :last_name, :homepage)
    end
end
