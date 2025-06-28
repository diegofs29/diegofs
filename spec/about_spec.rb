RSpec.describe "About me", type: :feature, js: true do
  context "when reading" do
    it "the title should be: About me" do
      visit '/about.html'
      expect(find('#about-title').text).to eq('About me')
    end
    it "paragraph element should exist" do
      visit '/about.html'
      expect(page.body).to include(/(?m)((<p>)(.*?)(<\/p>))+/)
    end
  end
end