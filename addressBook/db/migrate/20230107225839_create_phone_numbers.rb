class CreatePhoneNumbers < ActiveRecord::Migration[7.0]
  def change
    create_table :phone_numbers do |t|
      t.string :firstName, null: false, default: "John"
      t.string :middleName
      t.string :lastName, null: false, default: "Doe"
      t.integer :number, null: false, default: 1111111111
      t.string :comment

      t.timestamps
    end
  end
end
