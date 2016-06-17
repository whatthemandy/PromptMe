class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.integer  :user_id
      t.integer  :prompt_id
      t.string   :body, null: false

      t.timestamps(null: false)
    end
  end
end
