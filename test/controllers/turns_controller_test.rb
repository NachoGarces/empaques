require 'test_helper'

class TurnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @turn = turns(:one)
  end

  test "should get index" do
    get turns_url
    assert_response :success
  end

  test "should get new" do
    get new_turn_url
    assert_response :success
  end

  test "should create turn" do
    assert_difference('Turn.count') do
      post turns_url, params: { turn: { end_date: @turn.end_date, start_date: @turn.start_date, user_id: @turn.user_id } }
    end

    assert_redirected_to turn_url(Turn.last)
  end

  test "should show turn" do
    get turn_url(@turn)
    assert_response :success
  end

  test "should get edit" do
    get edit_turn_url(@turn)
    assert_response :success
  end

  test "should update turn" do
    patch turn_url(@turn), params: { turn: { end_date: @turn.end_date, start_date: @turn.start_date, user_id: @turn.user_id } }
    assert_redirected_to turn_url(@turn)
  end

  test "should destroy turn" do
    assert_difference('Turn.count', -1) do
      delete turn_url(@turn)
    end

    assert_redirected_to turns_url
  end
end
