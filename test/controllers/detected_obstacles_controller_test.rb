require 'test_helper'

class DetectedObstaclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detected_obstacle = detected_obstacles(:one)
  end

  test "should get index" do
    get detected_obstacles_url
    assert_response :success
  end

  test "should get new" do
    get new_detected_obstacle_url
    assert_response :success
  end

  test "should create detected_obstacle" do
    assert_difference('DetectedObstacle.count') do
      post detected_obstacles_url, params: { detected_obstacle: { distance: @detected_obstacle.distance, time: @detected_obstacle.time } }
    end

    assert_redirected_to detected_obstacle_url(DetectedObstacle.last)
  end

  test "should show detected_obstacle" do
    get detected_obstacle_url(@detected_obstacle)
    assert_response :success
  end

  test "should get edit" do
    get edit_detected_obstacle_url(@detected_obstacle)
    assert_response :success
  end

  test "should update detected_obstacle" do
    patch detected_obstacle_url(@detected_obstacle), params: { detected_obstacle: { distance: @detected_obstacle.distance, time: @detected_obstacle.time } }
    assert_redirected_to detected_obstacle_url(@detected_obstacle)
  end

  test "should destroy detected_obstacle" do
    assert_difference('DetectedObstacle.count', -1) do
      delete detected_obstacle_url(@detected_obstacle)
    end

    assert_redirected_to detected_obstacles_url
  end
end
