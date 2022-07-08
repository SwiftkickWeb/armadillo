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
end
