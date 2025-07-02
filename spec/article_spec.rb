RSpec.describe "Article", type: :feature, js: true do
  context "when reading the title" do
    it "first post should be Las 24 horas de Le Mans 2025" do
      visit '/blog.html'
      find('#post-item1-url').click
      expect(find('#post-title').text).to eq('Las 24 horas de Le Mans 2025')
    end

    it "second post should be La Mandarina: Un Cítrico Dulce y Aromático para Disfrutar" do 
      visit '/blog.html'
      find('#post-item2-url').click
      expect(find('#post-title').text).to eq('La Mandarina: Un Cítrico Dulce y Aromático para Disfrutar')
    end
  end
end