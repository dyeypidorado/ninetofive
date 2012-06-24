require 'test_helper'

class Admin::AffiliatesControllerTest < ActionController::TestCase
  setup do
    @admin_affiliate = admin_affiliates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_affiliates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_affiliate" do
    assert_difference('Admin::Affiliate.count') do
      post :create, admin_affiliate: { name: @admin_affiliate.name }
    end

    assert_redirected_to admin_affiliate_path(assigns(:admin_affiliate))
  end

  test "should show admin_affiliate" do
    get :show, id: @admin_affiliate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_affiliate
    assert_response :success
  end

  test "should update admin_affiliate" do
    put :update, id: @admin_affiliate, admin_affiliate: { name: @admin_affiliate.name }
    assert_redirected_to admin_affiliate_path(assigns(:admin_affiliate))
  end

  test "should destroy admin_affiliate" do
    assert_difference('Admin::Affiliate.count', -1) do
      delete :destroy, id: @admin_affiliate
    end

    assert_redirected_to admin_affiliates_path
  end
end
