class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :salutation, null: false, default: "Mr."
      t.string :firstName, null: false, default: "John"
      t.string :middleName
      t.string :lastName, null: false, default: "Doe"
      t.integer :SSN
      t.date :birthDate
      t.string :comment
      t.timestamps
    end
  end
end
