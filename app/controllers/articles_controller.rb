  def index
    @search = Article.search(params[:search])
    @articles = @search.all   # or @search.relation to lazy load in view
  end
