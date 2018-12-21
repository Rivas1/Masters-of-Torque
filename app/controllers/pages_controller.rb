class PagesController < ApplicationController
	def about
			@title = 'About Us';
			@content = 'Welcome to Masters of Torque';
	end
end
