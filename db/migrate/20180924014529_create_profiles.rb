class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :description
      t.text :body
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
