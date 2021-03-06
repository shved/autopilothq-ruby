require 'test_helper'

class ClientTest < Minitest::Test
  def test_it_raises_an_error_if_no_api_key
    assert_raises ArgumentError do
      ::Autopilot::Client.new
    end
  end

  def test_it_returns_a_client_if_api_key
    client = ::Autopilot::Client.new(api_key: 'test')
    assert_equal ::Autopilot::Client, client.class
  end
end
