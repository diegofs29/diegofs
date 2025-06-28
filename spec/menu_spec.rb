RSpec.describe "Navigation menu", type: :feature, js: true do
  context "when reading the menu" do
    it "should have a Home section" do
      visit '/'
      expect(find('#nav-home').text).to eq('Home')
    end
    it "should have an About section" do
      visit '/'
      expect(find('#nav-about').text).to eq('About')
    end
    it "should have a Blog section" do
      visit '/'
      expect(find('#nav-blog').text).to eq('Blog')
    end
  end

  context "when interacting with the menu items" do 
    it "click in Home should go to main page" do
      visit '/about.html'
      find('#nav-home').click
      expect(find('#tech-stack').text).to eq('Skills')
    end
    it "click in About should go to About page" do
      visit '/'
      find('#nav-about').click
      expect(find('#about-title').text).to eq('About me')
    end
    it "click in Blog should go to Blog page" do
      visit '/'
      find('#nav-blog').click
      expect(find('#articles-title').text).to eq('Articles')
    end
  end
end