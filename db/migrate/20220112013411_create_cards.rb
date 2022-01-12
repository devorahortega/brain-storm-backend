class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :card
      t.integer :idea_id
      t.integer :user_id

      t.timestamps
    end
  end
end
