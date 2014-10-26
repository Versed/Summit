class NewsController < ApplicationController
  http_basic_authenticate_with name: "nkluth", password: "secret", only: :destroy

  def create
    @section = Section.find(params[:section_id])
    @news = @section.news.create(news_params)
    redirect_to section_path(@section)
  end

  def destroy
    @section = Section.find(params[:section_id])
    @news = @section.news.find(params[:id])
    @news.destroy
    redirect_to section_path(@section)
  end

  private
    def news_params
      params.require(:news).permit(:title, :body)
    end
end
