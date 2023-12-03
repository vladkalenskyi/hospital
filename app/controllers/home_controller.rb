class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
    @receptions = Reception.all
    render
    end
  
    def new
      @reception = Reception.new
    end
  
    def create
      @reception = Reception.new(reception_params)
      if @reception.save
        redirect_to @reception
      else
        render :new
      end
    end
  
    private
  
    def reception_params
      params.require(:reception).permit(:title, :other_attributes)
    end

  end