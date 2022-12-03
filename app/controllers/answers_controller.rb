class AnswersController < ApplicationController
  before_action :set_answer, only: [:show, :edit, :update, :destroy]

  def index
    @answers = Answer.all
  end

  def show
    @favorite = current_user.favorites.find_by(answer_id: @answer.id)
  end

  def new
    @answer = Answer.new
    @quiz = Quiz.offset( rand(Quiz.count) ).first
  end

  def edit
  end

  def create
    @answer = current_user.answers.build(answer_params)
    @answer.group_id = answer_params[:group_id]
    @answer.save
    redirect_to answers_path
  end

  def update
    if @answer.update(answer_params)
      redirect_to @answer, notice: 'Answer was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @answer.destroy
    redirect_to answers_url, notice: 'Answer was successfully destroyed.'
  end

  private
    def set_answer
      @answer = Answer.find(params[:id])
    end

    def answer_params
      params.require(:answer).permit(:select_answer, :quiz_id, :user_id, :group_id)
    end
end
