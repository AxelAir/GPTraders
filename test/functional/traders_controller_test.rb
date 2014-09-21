require 'test_helper'

class TradersControllerTest < ActionController::TestCase
  setup do
    @trader = traders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:traders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trader" do
    assert_difference('Trader.count') do
      post :create, trader: { name: @trader.name }
    end

    assert_redirected_to trader_path(assigns(:trader))
  end

  test "should show trader" do
    get :show, id: @trader
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trader
    assert_response :success
  end

  test "should update trader" do
    put :update, id: @trader, trader: { name: @trader.name }
    assert_redirected_to trader_path(assigns(:trader))
  end

  test "should destroy trader" do
    assert_difference('Trader.count', -1) do
      delete :destroy, id: @trader
    end

    assert_redirected_to traders_path
  end
end
