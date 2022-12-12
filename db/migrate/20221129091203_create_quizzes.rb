class CreateQuizzes < ActiveRecord::Migration[6.1]
  def change
    create_table :quizzes do |t|
      t.string :title, null: false
      t.text :image, null: false
      t.date :request_answer_on, null: false
      t.timestamps
    end
  end
end
