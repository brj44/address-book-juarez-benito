class CreatePhoneNumbers < ActiveRecord::Migration[7.0]
  def change
    create_table :phone_numbers do |t|
      t.string :firstName
      t.string :middleName
      t.string :lastName
      t.integer :number
      t.string :comment

      t.timestamps
    end
  end
end
