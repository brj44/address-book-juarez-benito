class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :firstName, null:false, default: "John"
      t.string :middleName
      t.string :lastName, null:false, default: "Doe"
      t.string :street, null:false, default: "123 Main St."
      t.string :town, null:false, default: "Anytown"
      t.integer :zipCode, null:false, default: 12345
      t.string :state
      t.string :country, null:false, default: "United States"
      t.string :comment

      t.timestamps
    end
  end
end
