RSpec.describe "Not found", type: :feature, js: true do 
    context "when reading" do
        it "title should be: Oops! Wrong stop!" do
            visit '/404'
			expect(find('#title').text).to eq('Oops! Wrong stop!')
        end
        it "description should be: You can take (click) the metro back to the main page station" do 
            visit '/404'
            expect(find('#msg').text).to eq('You can take (click) the metro back to the main page station')
        end
    end

    context "when interacting with image" do 
        it "src should be: /images/subway-svgrepo-com.svg" do 
            visit '/404'
            expect(find('#img')['src']).to have_content '/images/subway-svgrepo-com.svg'
        end
        it "alt should be: Click to go to the main page" do
            visit '/404'
            expect(find('#img')['alt']).to eq('Click to go to the main page')
        end
        it "click should take to main page" do
            visit '404'
            find('#img').click
            expect(find('#title').text).to eq('Diego Fernández Suárez')
        end
    end
end