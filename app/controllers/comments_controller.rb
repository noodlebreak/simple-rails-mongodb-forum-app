class CommentsController < ApplicationController

	def create
		@topic  = Topic.find(params[:topic_id])
		@comment = @topic.comments.create!(params[:comment])
		redirect_to	@topic, :notice => "Your comment is posted"
	end
end
