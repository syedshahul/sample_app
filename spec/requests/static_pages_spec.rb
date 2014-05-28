require 'minitest/autorun'
require 'spec_helper'

describe "StaticPages" do
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get static_pages_index_path
      response.status.should be(200)
    end
    # home page
    subject { page }
    describe "Home page" do
      before { visit root_path }

      it "should have the content 'Sample App'" do
        visit '/static_pages/home'
        expect(page).to have_content('Sample App')
      end

      it { should have_title('RoR Tutorial Sample App')}

      it {should_not have_title('| Home')}

      before {visit help_path}
      it {should have_content('Help')}
    end
    # contact page
    describe "Contact page" do
      before {visit contact_path}
    # should have content 'Contact'
      it {should have_content('Contact')}
    # should have a full title
      it {should have_title(full_title('Contact'))}
    end
  end
  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))
    click_link "Help"
    expect(page).to # fill in
    click_link "Contact"
    expect(page).to # fill in
    click_link "Home"
    click_link "Sign up now!"
    expect(page).to # fill in
    click_link "sample app"
    expect(page).to # fill in
  end
end
