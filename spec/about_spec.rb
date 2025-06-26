RSpec.describe "About me", type: :feature, js: true do
  context "when reading" do
    it "the title should be: About me" do
      visit '/about.html'
      expect(find('#title').text).to eq('About me')
    end
  end
end