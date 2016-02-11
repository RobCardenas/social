class PostsController < ApplicationController

	before_action :authenticate_user!

	def index
		# @posts = Post.all
		user_ids = current_user.timeline_user_ids
		@posts = Post.includes(:user).where(user_id: user_ids)
							.paginate(page: params[:page], per_page: 5)
							.order("created_at DESC")
	end

	def show
		@post = Post.find(params[:id])
		@can_moderate = (current_user == @post.user)
	end

end