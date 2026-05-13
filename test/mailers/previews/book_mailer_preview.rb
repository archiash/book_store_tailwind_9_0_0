# Preview all emails at http://localhost:3000/rails/mailers/book_mailer
class BookMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/book_mailer/in_stock
  def in_stock
    BookMailer.in_stock
  end
end
