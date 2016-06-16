class CreatePrompts < ActiveRecord::Migration
  def change
    create_table :prompts do |t|
      t.string   :idea, null: false
      t.string   :user_id

      t.timestamps(null: false)
    end
  end
end
