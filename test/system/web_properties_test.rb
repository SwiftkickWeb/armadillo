require "application_system_test_case"

class WebPropertiesTest < ApplicationSystemTestCase
  setup do
    @web_property = web_properties(:one)
  end

  test "visiting the index" do
    visit web_properties_url
    assert_selector "h1", text: "Web properties"
  end

  test "should create web property" do
    visit web_properties_url
    click_on "New web property"

    fill_in "Client", with: @web_property.client_id
    fill_in "Name", with: @web_property.name
    fill_in "Url", with: @web_property.url
    click_on "Create Web property"

    assert_text "Web property was successfully created"
    click_on "Back"
  end

  test "should update Web property" do
    visit web_property_url(@web_property)
    click_on "Edit this web property", match: :first

    fill_in "Client", with: @web_property.client_id
    fill_in "Name", with: @web_property.name
    fill_in "Url", with: @web_property.url
    click_on "Update Web property"

    assert_text "Web property was successfully updated"
    click_on "Back"
  end

  test "should destroy Web property" do
    visit web_property_url(@web_property)
    click_on "Destroy this web property", match: :first

    assert_text "Web property was successfully destroyed"
  end
end
