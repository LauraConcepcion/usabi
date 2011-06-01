class SupportsController < ApplicationController
  def new
    @support = Support.new(:id => 1)
  end
  
  def create
    @support = Support.new(params[:support])
    if @support.save
      flash.now[:success] = "Se ha enviado correctamente el formulario"
      render 'new'
    else
      flash.now[:error] = "Error al enviar el mensaje"
      render 'new'
    end
  end
end
