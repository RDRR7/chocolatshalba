class StaticPagesController < ApplicationController
	before_action :authenticate_user!
	def dashboard
		@batches = Batch.all
	end
end
