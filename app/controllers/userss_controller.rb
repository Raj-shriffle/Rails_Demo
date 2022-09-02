class UserssController < ApplicationController


  def show
    @user = User.find(params[:id]) 
  end

  def destroy 
    @user = User.find(params[:id]) 
    @user.destroy
    flash[:notice] = "You have successfully logged out."
    redirect_to userss_index_path,status: :see_other
  end

  def edit
    @user = User.find(params[:id])
  end


  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to userss_path(@user)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name,:age,:gender,:mobile_no, :image)
  end

end
