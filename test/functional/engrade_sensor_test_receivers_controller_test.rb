require 'test_helper'

class EngradeSensorTestReceiversControllerTest < ActionController::TestCase
  setup do
    @engrade_sensor_test_receiver = engrade_sensor_test_receivers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:engrade_sensor_test_receivers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create engrade_sensor_test_receiver" do
    assert_difference('EngradeSensorTestReceiver.count') do
      post :create, engrade_sensor_test_receiver: { body: @engrade_sensor_test_receiver.body, headers: @engrade_sensor_test_receiver.headers }
    end

    assert_redirected_to engrade_sensor_test_receiver_path(assigns(:engrade_sensor_test_receiver))
  end

  test "should show engrade_sensor_test_receiver" do
    get :show, id: @engrade_sensor_test_receiver
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @engrade_sensor_test_receiver
    assert_response :success
  end

  test "should update engrade_sensor_test_receiver" do
    put :update, id: @engrade_sensor_test_receiver, engrade_sensor_test_receiver: { body: @engrade_sensor_test_receiver.body, headers: @engrade_sensor_test_receiver.headers }
    assert_redirected_to engrade_sensor_test_receiver_path(assigns(:engrade_sensor_test_receiver))
  end

  test "should destroy engrade_sensor_test_receiver" do
    assert_difference('EngradeSensorTestReceiver.count', -1) do
      delete :destroy, id: @engrade_sensor_test_receiver
    end

    assert_redirected_to engrade_sensor_test_receivers_path
  end
end
