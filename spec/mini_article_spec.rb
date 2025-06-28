RSpec.describe "Article miniatures", type: :feature, js: true do
  context "when reading the title" do
    it "should be Articles" do
      visit '/blog.html'
      expect(find('#articles-title').text).to eq('Articles')
    end
  end

  context "when counting the articles" do
    it "should be greater than 0" do
      visit '/blog.html'
      scroll_to(find('#articles-list'))
      expect(find('#articles-list')).to have_css('.dotless')
      expect(find('#articles-list')).to have_css('.article-card')
    end
  end
end