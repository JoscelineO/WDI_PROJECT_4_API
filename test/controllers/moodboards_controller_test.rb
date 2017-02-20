require 'test_helper'

class MoodboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @moodboard = moodboards(:one)
  end

  test "should get index" do
    get moodboards_url, as: :json
    assert_response :success
  end

  test "should create moodboard" do
    assert_difference('Moodboard.count') do
      post moodboards_url, params: { moodboard: { brief: @moodboard.brief, project_name: @moodboard.project_name, user_id: @moodboard.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show moodboard" do
    get moodboard_url(@moodboard), as: :json
    assert_response :success
  end

  test "should update moodboard" do
    patch moodboard_url(@moodboard), params: { moodboard: { brief: @moodboard.brief, project_name: @moodboard.project_name, user_id: @moodboard.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy moodboard" do
    assert_difference('Moodboard.count', -1) do
      delete moodboard_url(@moodboard), as: :json
    end

    assert_response 204
  end
end
