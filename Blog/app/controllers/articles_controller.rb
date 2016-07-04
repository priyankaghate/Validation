class ArticlesController < ApplicationController
	def index
		@articles=Article.all
	end
	def new
		@article=Article.new
	end
	def create
		@article=Article.new(params_article)
		@article.save
		redirect_to @article
	end
	def show
		@article=Article.find(params[:id])
	end
	private
	def params_article
		params.require(:article).permit(:title,:comment)
	end
end
