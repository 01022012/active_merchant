require 'test_helper'

class ApplePayPaymentTokenTest < Test::Unit::TestCase

  def setup
    @token = apple_pay_payment_token
  end

  def test_payment_instrument_name
    assert_equal apple_pay_payment_token
  end

  def test_encrypted_payment_data
    assert_equal apple_pay_payment_token.payment_data[:data], @token.encrypted_payment_data
  end

end
