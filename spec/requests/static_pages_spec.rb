require 'spec_helper'

describe "StaticPages" do
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get static_pages_index_path
      response.status.should be(200)
    end
    describe "Home page" do
      before { visit root_path }
      it "should have the content 'Sample App'" do
        visit '/static_pages/home'
        expect(page).to have_content('Sample App')
      end
      it "should have the base title" do
        visit root_path
        expect(page).to have_title("RoR Tutorial Sample App")
      end

      it "should not have a custom page title" do
        visit root_path
        expect(page).not_to have_title('| Home')
      end

      it "should have the content 'Help'" do
        visit '/static_pages/help'
        expect(page).to have_content('Help')
      end
    end
    describe "Contact page" do

      it "should have the content 'Contact'" do
        visit '/static_pages/contact'
        expect(page).to have_content('Contact')
      end

      it "should have the title 'Contact'" do
        visit '/static_pages/contact'
        expect(page).to have_title("RoR Tutorial Sample App | Contact")
      end
    end
  end
end
