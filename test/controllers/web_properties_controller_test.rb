require "test_helper"

class WebPropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client = clients(:one)
    @web_property = web_properties(:one)
  end

  test "should get index" do
    get client_web_properties_url(@client)
    assert_response :success
  end

  test "should get new" do
    get new_client_web_property_url(@client)
    assert_response :success
  end

  test "should create web_property" do
    assert_difference("WebProperty.count") do
      post client_web_properties_url(@client), params: { web_property: { client_id: @web_property.client_id, name: @web_property.name, url: @web_property.url } }
    end

    assert_redirected_to client_url(@client)
  end

  test "should show web_property" do
    get client_web_property_url(@client, @web_property)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_web_property_url(@client, @web_property)
    assert_response :success
  end

  test "should update web_property" do
    patch client_web_property_url(@client, @web_property), params: { web_property: { client_id: @web_property.client_id, name: @web_property.name, url: @web_property.url } }
    assert_redirected_to client_url(@client)
  end

  test "should destroy web_property" do
    assert_difference("WebProperty.count", -1) do
      delete client_web_property_url(@client, @web_property)
    end

    assert_redirected_to client_url(@client)
  end
end
