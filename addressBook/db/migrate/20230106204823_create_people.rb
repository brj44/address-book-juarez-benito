class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :salutation, null: false
      t.string :firstName, null: false
      t.string :middleName
      t.string :lastName, null: false
      t.integer :SSN
      t.date :birthDate
      t.string :comment
      t.timestamps
    end
  end
end
