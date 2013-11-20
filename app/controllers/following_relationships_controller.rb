class FollowingRelationshipsController < ApplicationController

	def create
		current_user.follow user
		redirect_to user, notice: "Now following #{user.username}"
	end

	def destroy
		current_user.unfollow user
		redirect_to user, notice: "You unfollowed #{user.username}"
	end

	def user
		@_user ||= User.find(params[:user_id])
	end

end