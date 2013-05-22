class ImportsController < ApplicationController
	def new
	end

	def create
		Upload.import(params[:file])
		redirect_to root_url
	end
end