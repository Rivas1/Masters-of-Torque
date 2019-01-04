class PagesController < ApplicationController
	def home
		@title = 'Landing Page';
		@content = 'Welcome to Masters of Torque';
	end
end
