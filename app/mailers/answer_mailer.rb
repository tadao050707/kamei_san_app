class AnswerMailer < ApplicationMailer
  def answer_mail(answer)
    @answer = answer
    @group = answer.group
    @members = answer.group.users
    @quiz_title = answer.quiz.title
    @user = answer.user
    @select_answer = answer.select_answer
    mail to: @members.map(&:email).join(","), subject: "グループメンバーが解答しました"
  end
end
