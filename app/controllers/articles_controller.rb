class ArticlesController < ApplicationController
    before_action :find_post, only: [:show,:update,:edit,:destroy]
    def index
        @articles = Article.all
    end
    def new 
        
    end
    def edit

    end
    def create
        @article = Article.new(article_params)
 
        @article.save
        redirect_to @article
    end
    def update
        @article.update(article_params)
        redirect_to @article
       
    end

    def show
        
    end
    def destroy
        
        @article.destroy
        respond_to do |format|
        format.js
        format.html{ redirect_to new_article_path, notice: "Delete Is Successful"}
        end
    end
    
    private 
        def find_post
            @article = Article.find(params[:id])
        end

        def article_params
            params.require(:article).permit(:title, :body)
        end
end