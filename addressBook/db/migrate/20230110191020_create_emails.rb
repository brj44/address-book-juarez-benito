class CreateEmails < ActiveRecord::Migration[7.0]
  def change
    create_table :emails do |t|
      t.string :firstName, null:false, default: "John"
      t.string :middleName
      t.string :lastName, null:false, default: "Doe"
      t.string :emailAddress, null:false, default: "johndoe@email.com"
      t.string :comment

      t.timestamps
    end
  end
end
