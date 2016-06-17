class CreatePrompts < ActiveRecord::Migration
  def change
    create_table :prompts do |t|
      t.string   :idea, null: false
      t.integer  :user_id

      t.timestamps(null: false)
    end
  end
end
