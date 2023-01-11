class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :firstName, null:false
      t.string :middleName
      t.string :lastName, null:false
      t.string :street, null:false
      t.string :town, null:false
      t.integer :zipCode, null:false
      t.string :state
      t.string :country, null:false
      t.string :comment

      t.timestamps
    end
  end
end
