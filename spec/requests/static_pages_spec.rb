require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'AdviceShare'" do
      visit '/static_pages/home'
      expect(page).to have_content('AdviceShare')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("AdviceShare | Home")
    end
  end

  describe "About page" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title("AdviceShare | About")
    end
  end

  describe "Topics page" do

    it "should have the content 'Topics'" do
      visit '/static_pages/topics'
      expect(page).to have_content('Topics')
    end

    it "should have the title 'Topics'" do
      visit '/static_pages/topics'
      expect(page).to have_title("AdviceShare | Topics")
    end
  end
  describe "How it Works" do

    it "should have the content 'How it Works'" do
      visit '/static_pages/HowItWorks'
      expect(page).to have_content('How it Works')
    end

    it "should have the title 'HowItWorks'" do
      visit '/static_pages/HowItWorks'
      expect(page).to have_title("AdviceShare | HowItWorks")
    end
  end

end