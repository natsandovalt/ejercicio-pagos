class PenaltiesController < ApplicationController

	def destroy
		penalty = Penalty.find(params[:id])
		penalty.destroy
		flash[:success] = '¡Multa eliminada exitosamente!'
		redirect_to request.referer
	end
end
