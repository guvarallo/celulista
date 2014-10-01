require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get sobre" do
    get :sobre
    assert_response :success
  end

  test "should get anuncios" do
    get :anuncios
    assert_response :success
  end

end
