class CommentsController < ApplicationController
	def create
		@prayer =Prayer.find(params[:prayer_id])
		@comment = @prayer.comments.create(params[:comment].permit(:name, :comment))
		
		redirect_to prayer_path(@prayer)
	end

	def destroy
		@prayer = Prayer.find(params[:prayer_id])
		@comment = @prayer.comments.find(params[:id])
		@comment.destroy

		redirect_to prayer_path(@prayer)
	end
end
