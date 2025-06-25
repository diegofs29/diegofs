RSpec.describe "Main page", type: :feature, js: true do
  context "when reading the header" do
    it "should have the page title" do
      visit '/'
      expect(find('#title').text).to eq('Diego Fernández Suárez')
    end
  end

  context "when reading elevator pitch" do
    it "should have a welcome title" do
      visit '/'
      expect(find('#pitch-welcome').text).to eq('Welcome / Bienvenidos / Bienveníos')
    end

    it "should have a paragraph" do 
      visit '/'
      expect(find('#pitch-paragraph').text).to start_with '¡Hola! My name is Diego'
      expect(find('#pitch-paragraph').text).to end_with 'world wide web!'
    end
  end

  context "when accessing home page" do
    it 'has no accessibility violations' do
      visit "/"
      expect(page).to be_axe_clean.according_to :wcag2a, :wcag2aa, :wcag2aaa, :wcag21a, :wcag21aa, :wcag22aa, :'best-practice'	
    end
  end
end