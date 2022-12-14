class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :street
      t.string :secondary_address
      t.string :city
      t.string :zip
      t.string :state
      t.string :country
      t.text :notes

      t.timestamps
    end
    create_table :clients_contacts, id: false do |t|
      t.belongs_to :client
      t.belongs_to :contact
    end
  end
end
