class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :letter_1
      t.string :letter_2
      t.string :letter_3
      t.string :letter_4
      t.string :letter_5
      t.string :letter_6
      t.string :letter_7
      t.string :letter_8
      t.string :letter_9
      t.timestamps null: false
    end
  end
end
