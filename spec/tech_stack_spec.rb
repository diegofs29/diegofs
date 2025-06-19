RSpec.describe "Tech stack", type: :feature, js: true do
    context "when reading Languages" do
        it "the title should read Languages" do 
            visit '/'
            expect(find('#lang').text).to eq('Languages')
        end
        it "should have Kotlin" do
            visit '/'
            expect(find('#lang-content').text).to include("Kotlin")
        end
        it "should have Swift" do
            visit '/'
            expect(find('#lang-content').text).to include("Swift")
        end
        it "should have Python" do
            visit '/'
            expect(find('#lang-content').text).to include("Python")
        end
        it "should have Java" do
            visit '/'
            expect(find('#lang-content').text).to include("Java")
        end
        it "should have Bash" do
            visit '/'
            expect(find('#lang-content').text).to include("Bash")
        end
        it "should have JavaScript" do
            visit '/'
            expect(find('#lang-content').text).to include("JavaScript")
        end
        it "should have C++" do
            visit '/'
            expect(find('#lang-content').text).to include("C++")
        end
        it "should have C#" do
            visit '/'
            expect(find('#lang-content').text).to include("C#")
        end
        it "should be sepparated by commas" do
            visit '/'
            expect(find('#lang-content').text).to eq("Kotlin, Swift, Python, Java, Bash, JavaScript, C++, C#")
        end
    end
    
    context "when reading Frameworks" do
        it "title should read Frameworks" do 
            visit '/'
            expect(find('#frameworks').text).to eq('Frameworks')
        end
        it "should have Android" do 
            visit '/'
            expect(find('#frameworks-content').text).to include('Android')
        end
        it "should have iOS" do 
            visit '/'
            expect(find('#frameworks-content').text).to include('iOS')
        end
        it "should have Spring" do 
            visit '/'
            expect(find('#frameworks-content').text).to include('Spring')
        end
        it "should be sepparated by commas" do
            visit '/'
            expect(find('#frameworks-content').text).to eq("Android, iOS, Spring")
        end
    end
    
    context "when reading Infraestructure" do
        it "title should read Infraestructure" do 
            visit '/'
            expect(find('#infraestructure').text).to eq('Infraestructure')
        end
        it "should have Docker" do 
            visit '/'
            expect(find('#infraestructure-content').text).to include('Docker')
        end
        it "should have Kubernetes" do 
            visit '/'
            expect(find('#infraestructure-content').text).to include('Kubernetes')
        end
        it "should have Ansible" do 
            visit '/'
            expect(find('#infraestructure-content').text).to include('Ansible')
        end
        it "should have Puppet" do 
            visit '/'
            expect(find('#infraestructure-content').text).to include('Puppet')
        end
        it "should have Terraform" do 
            visit '/'
            expect(find('#infraestructure-content').text).to include('Terraform')
        end
        it "should be sepparated by commas" do
            visit '/'
            expect(find('#infraestructure-content').text).to eq("Docker, Kubernetes, Ansible, Puppet, Terraform")
        end
    end
    
    context "when reading Cloud" do
        it "title should read Cloud" do 
            visit '/'
            expect(find('#cloud').text).to eq('Cloud')
        end
        it "should have AWS" do 
            visit '/'
            expect(find('#cloud-content').text).to include('AWS')
        end
        it "should have GCP" do 
            visit '/'
            expect(find('#cloud-content').text).to include('GCP')
        end
        it "should have Azure" do 
            visit '/'
            expect(find('#cloud-content').text).to include('Azure')
        end
        it "should be sepparated by commas" do
            visit '/'
            expect(find('#cloud-content').text).to eq("AWS, GCP, Azure")
        end
    end
    
    context "when reading Others" do
        it "title should read Others" do 
            visit '/'
            expect(find('#others').text).to eq('Others')
        end
        it "should have Godot" do 
            visit '/'
            expect(find('#others-content').text).to include('Godot')
        end
        it "should have Unreal" do 
            visit '/'
            expect(find('#others-content').text).to include('Unreal')
        end
        it "should have Arduino" do 
            visit '/'
            expect(find('#others-content').text).to include('Arduino')
        end
        it "should have REST" do 
            visit '/'
            expect(find('#others-content').text).to include('REST')
        end
        it "should be sepparated by commas" do
            visit '/'
            expect(find('#others-content').text).to eq("Godot, Unreal, Arduino, REST")
        end
    end

end