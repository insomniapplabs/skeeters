class PostsController < ApplicationController


	def create
		@post = current_member.posts.create(post_params)
		if @post.save
			redirect_to dashboard_path
		else
			redirect_to dashboard_path
		end
	end

	def show
		@post = Post.find(params[:id])
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
	end

	private

	def post_params
		params.require(:post).permit(:title, :body, :private, :member_id, :publish_on)
	end



end
