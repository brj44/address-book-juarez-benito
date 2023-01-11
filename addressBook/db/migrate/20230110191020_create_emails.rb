class CreateEmails < ActiveRecord::Migration[7.0]
  def change
    create_table :emails do |t|
      t.string :firstName, null:false
      t.string :middleName
      t.string :lastName, null:false
      t.string :emailAddress, null:false
      t.string :comment

      t.timestamps
    end
  end
end
