class CommentsController < ApplicationController
	def create 
		@comment=Comment.new(comment_params)
		@comment.save

		respond_to do |format|
			format.js
		end
	end

	# def user_avatar
	# 	gravatar_id = Digest::MD5.hexdigest(self.email.downcase)
	# 	"http://gravatar.com/avatar/#{gravatar_id}.png?s=512&d=retro"
	# end

	private 
	def comment_params
		params.require(:comment).permit(:content,:issue_id,:user_id)
	end
end
