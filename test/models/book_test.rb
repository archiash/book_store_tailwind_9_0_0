require "test_helper"

class BookTest < ActiveSupport::TestCase
  include ActionMailer::TestHelper

  test "sends email notifications when back in stock" do
    book = books(:skyfall7)

    book.update(inventory_count: 0)

    assert_emails 2 do
      book.update(inventory_count: 99)
    end
  end
end
