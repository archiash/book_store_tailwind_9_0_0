class BookMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.book_mailer.in_stock.subject
  #
  def in_stock
    @book = params[:book]
    mail to: params[:subscriber].email
  end
end
