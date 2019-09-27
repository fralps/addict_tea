class TeasController < ApplicationController
  before_action :authenticate_user!

  def index
    @teas = Tea.all
  end

  def show
    @tea = Tea.find(params[:id])
  end

  def new
    @tea = Tea.new
  end

  def create
    @tea = Tea.new(user_id: current_user.id, name: params[:name], fermentation: params[:fermentation], infusion_time: params[:infusion_time], location: params[:location], brand: params[:brand], description: params[:description], grade: params[:grade])
    
    if @tea.save
      redirect_to user_path(current_user.id)
      flash[:success] = "Le thé a bien été ajouté 👍"
    else
      render :new
    end
  end

  def edit
    @tea = Tea.find(params[:id])
  end

  def update
    @tea = Tea.find(params[:id])

    if @tea.user == current_user
      if @tea.update(user_id: current_user.id, name: params[:name], fermentation: params[:fermentation], infusion_time: params[:infusion_time], location: params[:location], brand: params[:brand], description: params[:description], grade: params[:grade])
        redirect_to tea_path(@tea)
        flash[:success] = "Le thé a bien été modifié 👍"
      else
        flash[:alert] = "Vous n'avez pas rempli tous les champs, veuillez réessayez svp"
        render :edit
      end
    else
      redirect_to root_path, notice: "Vous ne pouvez pas éditer le thé d'autrui"
    end
  end

  def destroy
    @tea = Tea.find(params[:id]) 
    if @tea.destroy
      redirect_to teas_path
      flash[:success] = "Le thé a bien été supprimé"
    else 
      flash[:alert] = "Un problème est survenu"
      render :edit
    end
  end
end
