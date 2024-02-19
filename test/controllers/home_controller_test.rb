require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get redirected from root to pizzas index" do
    get root_url
    assert_redirected_to pizzas_url
  end
end
