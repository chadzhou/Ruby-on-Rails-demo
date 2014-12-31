class ArticlesController < ApplicationController
  # Defined action, by defining a method inside the controller, and then it expects to find the view.
  
  def index
    @articles = Article.all
  end
  
  def show
    @article = Article.find(params[:id])
  end
  
  def hello
    @time=Time.now
  end

  def goodbye
  end
  

  def create
    @article =Article.new(article_params)
  #  render plain:params[:article].inspect
    if @article.save
    redirect_to @article
    else
      render 'new'
    end
  end  
  
  def update
  @article = Article.find(params[:id])
 
  if @article.update(article_params)
    redirect_to @article
  else
    render 'edit'
  end
end
def destroy
  @article = Article.find(params[:id])
  @article.destroy
 
  redirect_to articles_path
end
  
    private
    def article_params
      params.require(:article).permit(:title, :text)
    end
    
  
end
