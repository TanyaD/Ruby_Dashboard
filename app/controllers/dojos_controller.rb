class DojosController < ApplicationController
  def index
    @dojos=Dojo.all
  end

  def new
  end

  def create
    Dojo.create(branch: params[:branch], street: params[:street], city: params[:city], state: params[:state])
    redirect_to '/dojos'
  end

  def show
    @dojo=Dojo.find(params[:id])
  end

  def edit
    @dojo=Dojo.find(params[:id])
  end

  def update
    b=Dojo.find(params[:id])
    b.branch=params[:branch]
    b.street=params[:street]
    b.city=params[:city]
    b.state=params[:state]
    b.save
    redirect_to
  end

  def destroy
    Dojo.find(params[:id]).destroy
    redirect_to "/dojos"
  end
end
