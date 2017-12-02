require 'test_helper'

class OrderMailerTest < ActionMailer::TestCase
  test "received" do
    mail = OrderMailer.received(orders(:one))
    assert_equal "The Store Order Confirmation", mail.subject
    assert_equal ["dave@example.com"], mail.to
    assert_equal ["lallarjun@gmail.com"], mail.from
  end

  test "shipped" do
    mail = OrderMailer.shipped(orders(:one))
    assert_equal "The Store Order Shipped", mail.subject
    assert_equal ["dave@example.com"], mail.to
    assert_equal ["lallarjun@gmail.com"], mail.from
  end

end
