RSpec.describe "Article", type: :feature, js: true do
  context "when reading the title" do
    it "should exist" do
      visit '/'
      scroll_to(find('#articles-list'))
      expect(find('#articles-list')).to have_css('.dotless')
      expect(find('#articles-list')).to have_css('.article-card')
    end
  end
end