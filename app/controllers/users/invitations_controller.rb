class Users::InvitationsController < Devise::InvitationsController
  def new
    super
  end

  def create
    super
    @assign = Assign.new
    if params[:user][:email].present?
      @assign.user_id = User.find_by(email: params[:user][:email]).id
      @assign.group_id = params[:user][:group_id]
      @assign.save
    end  
  end

  def edit
    super
  end

  def update
    super
  end

  def destroy
    super
  end
end  