class PacksController < ApplicationController

	def index
    @user = User.find(params[:id])
    @packs = @user.packs
	end

  def create
    @pack = current_user.packs.build(pack_params)
    if @pack.save
      flash[:success] = "Pack created!"
      redirect_to root_url
    else
      render '/'
    end
  end

  def build
  	@pack = Pack.new
  end
end

