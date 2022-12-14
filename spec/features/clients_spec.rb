require 'rails_helper'

RSpec.feature Client, type: :feature do
  describe "The client list page" do
    it "lists all known clients" do 
      client1 = create(:client)
      client2 = create(:client)
      client3 = create(:client)

      visit clients_path
      expect(page).to have_content(client1.name)
      expect(page).to have_content(client2.name)
      expect(page).to have_content(client3.name)
    end
  end
  describe "A client show page" do
    it "lists client info and all client web properties" do
      client1 = create(:client_with_properties)
      visit client_path(client1)
      expect(page).to have_content(client1.name)
      expect(page).to have_content(client1.address)
      expect(page).to have_content(client1.web_properties.first.name)
    end
    it "lists all client contacts" do
      client1 = create(:client_with_contacts)
      visit client_path(client1)
      expect(page).to have_content(client1.contacts.first.name)
    end
  end
end
