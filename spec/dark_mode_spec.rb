RSpec.describe "Main page", type: :feature, js: true do
  context "when clicking go" do 
    it "enables dark mode" do
      visit "/"
      find('#go').click
      color = find('body').native.css_value('background-color')
      expect(color).to eq('rgba(47, 47, 47, 1)')
    end
  end

  context "when accessing home page" do
    it 'has no accessibility violations' do
      visit "/"
      find('#go').click
      expect(page).to be_axe_clean.according_to :wcag2a, :wcag2aa, :wcag2aaa, :wcag21a, :wcag21aa, :wcag22aa, :'best-practice'	
    end
  end

  context "when accessing about page" do
    it 'has no accessibility violations' do
      visit "/about.html"
      find('#go').click
      expect(page).to be_axe_clean.according_to :wcag2a, :wcag2aa, :wcag2aaa, :wcag21a, :wcag21aa, :wcag22aa, :'best-practice'	
    end
  end

  context "when accessing blog page" do
    it 'has no accessibility violations' do
      visit "/blog.html"
      find('#go').click
      expect(page).to be_axe_clean.according_to :wcag2a, :wcag2aa, :wcag2aaa, :wcag21a, :wcag21aa, :wcag22aa, :'best-practice'	
    end
  end
end