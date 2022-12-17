class QuizzesController < ApplicationController
  before_action :require_admin
  before_action :set_quiz, only: %i[ show edit update destroy ]

  def index
    @quizzes = Quiz.all
  end

  def show
  end

  def new
    @quiz = Quiz.new
  end

  def edit
  end

  def create
    @quiz = Quiz.new(quiz_params)
    if @quiz.save
      redirect_to @quiz, notice: "質問を作成しました" 
    else
      render :new
    end
  end

  def update
    if @quiz.update(quiz_params)
      redirect_to @quiz, notice: "質問を編集しました" 
    else
      render :edit
    end
  end

  def destroy
    @quiz.destroy
    redirect_to quizzes_url, notice: "質問を削除しました" 
  end

  private
    
  def set_quiz
    @quiz = Quiz.find(params[:id])
  end

  def quiz_params
    params.require(:quiz).permit(:title, :image, :image_cache, :request_answer_on, :group_id, :user_id)
  end

  def require_admin
    redirect_to root_path unless current_user.admin?
  end
end
