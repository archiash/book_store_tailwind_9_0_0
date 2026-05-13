class AuthorsController < ApplicationController
  before_action :set_author, only: %i[ show destroy ]

  def index
    @authors = Author.all
  end

  def show
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to @author
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @author.destroy
    redirect_to authors_path
  end

  private
    def author_params
      params.expect(author: [ :name ])
    end

    def set_author
      @author = Author.find(params[:id])
    end
end
