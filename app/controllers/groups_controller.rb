class GroupsController < ApplicationController
  before_action :set_group, only: %i[ show edit update destroy ]

  def index
    @groups = Group.all
  end

  def show
  end

  def new
    @group = Group.new
  end

  def edit
  end

  def create
    @group = Group.new(group_params)
    current_user.groups.build(group_params)
    if current_user.save
      redirect_to user_path(current_user), notice: "作成しました"
    else
      flash.now[:notice]= "グループ名を入力し登録してくだい"
      render 'new'
    end
  end

  def update
    if @group.update(group_params)
      redirect_to @group, notice: "Group was successfully updated." 
    else
      render :edit
    end
  end

  def destroy
    @group.destroy
    redirect_to groups_url, notice: "Group was successfully destroyed." 
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name)
  end
end
