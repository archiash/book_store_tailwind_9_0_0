class SubscribersController < ApplicationController
  allow_unauthenticated_access
  before_action :set_book

  def create
    @book.subscribers.where(subscriber_params).first_or_create
    redirect_to @book, notice: "You are now subscribed."
  end

  private
    def set_book
      @book = Book.find(params[:book_id])
    end

    def subscriber_params
      params.expect(subscriber: [ :email ])
    end
end
