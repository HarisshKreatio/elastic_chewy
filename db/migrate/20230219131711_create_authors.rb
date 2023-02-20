class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors, id: :uuid do |t|
      t.string :first_name
      t.string :last_name
      t.string :full_name
      t.string :email
      t.string :phone_number
      t.datetime :dob
      t.jsonb :address

      t.timestamps
    end
  end
end
