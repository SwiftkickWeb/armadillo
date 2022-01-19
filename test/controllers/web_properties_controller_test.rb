require "test_helper"

class WebPropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @web_property = web_properties(:one)
  end

  test "should get index" do
    get web_properties_url
    assert_response :success
  end

  test "should get new" do
    get new_web_property_url
    assert_response :success
  end

  test "should create web_property" do
    assert_difference("WebProperty.count") do
      post web_properties_url, params: { web_property: { client_id: @web_property.client_id, name: @web_property.name, url: @web_property.url } }
    end

    assert_redirected_to web_property_url(WebProperty.last)
  end

  test "should show web_property" do
    get web_property_url(@web_property)
    assert_response :success
  end

  test "should get edit" do
    get edit_web_property_url(@web_property)
    assert_response :success
  end

  test "should update web_property" do
    patch web_property_url(@web_property), params: { web_property: { client_id: @web_property.client_id, name: @web_property.name, url: @web_property.url } }
    assert_redirected_to web_property_url(@web_property)
  end

  test "should destroy web_property" do
    assert_difference("WebProperty.count", -1) do
      delete web_property_url(@web_property)
    end

    assert_redirected_to web_properties_url
  end
end
