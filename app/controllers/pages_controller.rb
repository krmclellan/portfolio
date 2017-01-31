class PagesController < ApplicationController

	def welcome
		
	end

	def projects
		
	end

	def about

	end

	def contact

	end

	def blog
		@articles = Article.all
	end

	def guestbook
		@new_post = Post.new
		@all_posts = Post.order(created_at: :desc).all
	end
end
