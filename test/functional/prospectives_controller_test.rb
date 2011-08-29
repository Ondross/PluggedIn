require 'test_helper'

class ProspectivesControllerTest < ActionController::TestCase
  setup do
    @prospective = prospectives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prospectives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prospective" do
    assert_difference('Prospective.count') do
      post :create, :prospective => @prospective.attributes
    end

    assert_redirected_to prospective_path(assigns(:prospective))
  end

  test "should show prospective" do
    get :show, :id => @prospective.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @prospective.to_param
    assert_response :success
  end

  test "should update prospective" do
    put :update, :id => @prospective.to_param, :prospective => @prospective.attributes
    assert_redirected_to prospective_path(assigns(:prospective))
  end

  test "should destroy prospective" do
    assert_difference('Prospective.count', -1) do
      delete :destroy, :id => @prospective.to_param
    end

    assert_redirected_to prospectives_path
  end
end
