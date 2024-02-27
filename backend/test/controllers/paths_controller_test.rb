require "test_helper"

class PathsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @path = paths(:one)
  end

  test "should get index" do
    get paths_url, as: :json
    assert_response :success
  end

  test "should create path" do
    assert_difference("Path.count") do
      post paths_url, params: { path: { name: @path.name, user_id: @path.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show path" do
    get path_url(@path), as: :json
    assert_response :success
  end

  test "should update path" do
    patch path_url(@path), params: { path: { name: @path.name, user_id: @path.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy path" do
    assert_difference("Path.count", -1) do
      delete path_url(@path), as: :json
    end

    assert_response :no_content
  end
end
