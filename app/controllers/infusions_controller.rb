# frozen_string_literal: true

class InfusionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @infusions = Infusion.all
  end

  def show
    @infusion = Infusion.find(params[:id])
  end

  def new
    @infusion = Infusion.new
  end

  def create
    @infusion = Infusion.new(user_id: current_user.id, name: params[:name], infusion_time: params[:infusion_time], location: params[:location], brand: params[:brand], description: params[:description], grade: params[:grade])

    if @infusion.save
      redirect_to infusions_path(current_user.id)
      flash[:success] = "L'infusion a bien été ajoutée 👍"
    else
      render :new
    end
  end

  def edit
    @infusion = Infusion.find(params[:id])
  end

  def update
    @infusion = Infusion.find(params[:id])

    if @infusion.user == current_user
      if @infusion.update(user_id: current_user.id, name: params[:name], infusion_time: params[:infusion_time], location: params[:location], brand: params[:brand], description: params[:description], grade: params[:grade])
        redirect_to infusion_path(@infusion)
        flash[:success] = "L'infusion a bien été modifiée 👍"
      else
        flash[:alert] = "Vous n'avez pas rempli tous les champs, veuillez réessayer svp"
        render :edit
      end
    else
      redirect_to root_path, notice: "Vous ne pouvez pas éditer l'infusion d'autrui"
    end
  end

  def destroy
    @infusion = Infusion.find(params[:id])
    if @infusion.destroy
      redirect_to infusions_path
      flash[:success] = "L'infusion a bien été supprimée 👍"
    else
      flash[:alert] = 'Un problème est survenu'
      render :edit
    end
  end
end
