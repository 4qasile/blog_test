require "rails_helper"

RSpec.feature "Swowing an Article" do

  before  do
    @article = Article.create(title: "The 1st article", body: "The 1st article body");
  end  

  scenario "Display individual article" do
    visit "/"
    click_link @article.title
    
    expect(page).to have_content(@article.title)
    expect(page).to have_content(@article.body)
    expect(current_path).to eq(article_path(@article))
  end
  
end