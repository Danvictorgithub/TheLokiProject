require "test_helper"

class PathSectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @path_section = path_sections(:one)
  end

  test "should get index" do
    get path_sections_url, as: :json
    assert_response :success
  end

  test "should create path_section" do
    assert_difference("PathSection.count") do
      post path_sections_url, params: { path_section: { name: @path_section.name, path_id: @path_section.path_id } }, as: :json
    end

    assert_response :created
  end

  test "should show path_section" do
    get path_section_url(@path_section), as: :json
    assert_response :success
  end

  test "should update path_section" do
    patch path_section_url(@path_section), params: { path_section: { name: @path_section.name, path_id: @path_section.path_id } }, as: :json
    assert_response :success
  end

  test "should destroy path_section" do
    assert_difference("PathSection.count", -1) do
      delete path_section_url(@path_section), as: :json
    end

    assert_response :no_content
  end
end
