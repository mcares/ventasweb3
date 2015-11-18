class VensController < ApplicationController
  before_action :set_ven, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!


  respond_to :html

  def index
    @vens = Ven.all
    respond_with(@vens)
  end

  def show
    respond_with(@ven)
  end

  def new
    @ven = Ven.new
    respond_with(@ven)
  end

  def edit
  end

  def create
    @ven = Ven.new(ven_params)
    @ven.save
    respond_with(@ven)
  end

  def update
    @ven.update(ven_params)
    respond_with(@ven)
  end

  def destroy
    @ven.destroy
    respond_with(@ven)
  end

  private
    def set_ven
      @ven = Ven.find(params[:id])
    end

    def ven_params
      params.require(:ven).permit(:cantidad, :vendedor_id, :producto_id, :cliente_id)
    end
end
