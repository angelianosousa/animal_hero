class UsersController < ApplicationController
  before_action :set_user, only: %i[edit update]

  def new
    @user = User.new
  end

  def edit
  end
  
  def create
    @user = User.create(user_params)
    if @user.save
      flash[:success] = 'Cadastro realizado com sucesso'
      redirect_to root_url
    else
      render 'new'
    end
  end

  def update
    if @user.update(user_params)
      flash[:success] = "Cadastro atualizado com sucesso"
      redirect_to @user
    else
      render 'edit'
    end
  end

  private
    def user_params
      params.require(:user).permit(:email,:name,:password,:password_confirmation)
    end

    def set_user
      @user = User.find(params[:id])
    end
end
