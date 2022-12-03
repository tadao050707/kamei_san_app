class FavoritesController < ApplicationController

  def index
    @favorites = current_user.favorites
  end  

  def create
    favorite = current_user.favorites.create(answer_id: params[:answer_id])
    redirect_to answers_path, notice: "#{favorite.answer.user.name}さんの回答をお気に入り登録しました"
  end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to answers_path, notice: "#{favorite.answer.user.name}さんの回答をお気に入り解除しました"
  end
  
end
