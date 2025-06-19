RSpec.describe "Contact footer", type: :feature, js: true do 
  context "when reading the title" do 
    it "should be How to reach out to me" do 
      visit '/'
      expect(find('#contact-title').text).to eq('How to reach out to me')
    end
  end

  context "when reading contact info" do 
    it "should have email" do 
      visit '/'
      expect(find('#contact-email').text).to include('Email')
      expect(find('#contact-email').text).to include('diegofdezsrz12@gmail.com')
    end

    it "should have LinkedIn" do 
      visit '/'
      expect(find('#contact-linkedin').text).to include('LinkedIn')
      expect(find('#contact-linkedin').text).to include('www.linkedin.com/in/diego-fernandez-suarez')
    end

    it "should have GitHub" do 
      visit '/'
      expect(find('#contact-github').text).to include('GitHub')
      expect(find('#contact-github').text).to include('https://github.com/diegofs29')
    end
  end
end