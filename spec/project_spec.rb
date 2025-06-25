RSpec.describe "Projects", type: :feature, js: true do 
	context "when reading title" do 
		it "should be Projects" do 
			visit '/'
			expect(find('#projects').text).to eq('Projects')
		end
	end

	context "when it is Tanks Game" do 
		it "title should be Tanks Game" do 
			visit '/'
			expect(find('#project-tanks').text).to eq('Tanks Game')
		end
		it "language should be C++" do 
			visit '/'
			expect(find('#project-tanks-lang').text).to eq('C++')
		end
		it "description should start like Game developed in C++" do 
			visit '/'
			expect(find('#project-tanks-desc').text).to start_with('Game developed in C++')
		end
		it "description should end like instead of 3D (GitHub)" do 
			visit '/'
			expect(find('#project-tanks-desc').text).to end_with('instead of 3D (GitHub)')
		end
	end

	context "when it is Robotic Software Simulator" do 
		it "title should be Robotic Software Simulator" do 
			visit '/'
			expect(find('#project-robotic').text).to eq('Robotic Software Simulator')
		end
		it "language should be Python" do 
			visit '/'
			expect(find('#project-robotic-lang').text).to eq('Python')
		end
		it "description should start like A program that simulates the" do 
			visit '/'
			expect(find('#project-robotic-desc').text).to start_with('A program that simulates the')
		end
		it "description should end like ANTLR, tkinter and Pillow (GitHub)" do 
			visit '/'
			expect(find('#project-robotic-desc').text).to end_with('ANTLR, tkinter and Pillow (GitHub)')
		end
	end

	context "when it is Personal Webpage" do 
		it "title should be Personal Webpage" do 
			visit '/'
			expect(find('#project-webpage').text).to eq('Personal Webpage')
		end
		it "language should be Jekyll, Ruby, HTML, CSS" do 
			visit '/'
			expect(find('#project-webpage-lang').text).to eq('Jekyll, Ruby, HTML, CSS')
		end
		it "description should start like My personal webpage, the" do 
			visit '/'
			expect(find('#project-webpage-desc').text).to start_with('My personal webpage, the')
		end
		it "description should end like Ruby, YAML and Markdown) (GitHub)" do 
			visit '/'
			expect(find('#project-webpage-desc').text).to end_with('Ruby, YAML and Markdown) (GitHub)')
		end
	end
end