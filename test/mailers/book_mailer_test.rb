require "test_helper"

class BookMailerTest < ActionMailer::TestCase
  test "in_stock" do
    mail = BookMailer.with(book: books(:skyfall7), subscriber: subscribers(:gongz)).in_stock
    assert_equal "In stock", mail.subject
    assert_equal [ "gongz_coolman@cmu.ac.th" ], mail.to
    assert_equal [ "from@example.com" ], mail.from
    assert_match "Good news!", mail.body.encoded
  end
end
