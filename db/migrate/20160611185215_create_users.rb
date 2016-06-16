class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   :username, null: false, length: {maximum: 16}
      t.string   :email, null: false, length: {maximum: 50}
      t.string   :hashed_password

      t.timestamps(null: false)
    end
  end
end
