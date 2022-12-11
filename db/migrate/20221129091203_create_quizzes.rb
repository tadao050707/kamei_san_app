class CreateQuizzes < ActiveRecord::Migration[6.1]
  def change
    create_table :quizzes do |t|
      t.string :title
      t.text :image
      t.date :request_answer_on
      t.timestamps
    end
  end
end
