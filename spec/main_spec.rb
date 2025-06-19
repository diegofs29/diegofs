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
end