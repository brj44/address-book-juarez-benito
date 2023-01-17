class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username, null: false, default: "JohnDoe"
      t.string :password_digest, null: false, default: "password"

      t.timestamps
    end
  end
end
