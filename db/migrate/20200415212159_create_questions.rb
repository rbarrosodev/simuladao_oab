class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :question_number, null: false, unique: true
      t.string :title, null: false
      t.string :enunciated, null: false
      t.string :correct_answer, null: false, unique: true

      t.timestamps
    end
  end
end
