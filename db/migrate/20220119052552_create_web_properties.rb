class CreateWebProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :web_properties do |t|
      t.string :name
      t.string :url
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
