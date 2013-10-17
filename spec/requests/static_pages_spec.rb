require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('AdviceShare') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About')) }
  end

describe "Topics page" do
    before { visit topics_path }

    it { should have_content('Topics') }
    it { should have_title(full_title('Topics')) }
  end

describe "How It Works page" do
    before { visit howItWorks_path }

    it { should have_content('How it Works') }
    it { should have_title(full_title('How it Works')) }
  end

describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About'))
    click_link "How it Works"
    expect(page).to have_title(full_title('How it Works'))
    click_link "Contact"
    expect(page).to have_title(full_title('Contact'))
    click_link "Home"
  end
end