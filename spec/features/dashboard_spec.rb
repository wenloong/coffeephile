require 'rails_helper'

RSpec.describe 'User Dashboard' do
  describe 'Happy Path' do
    before :each do
      @user = User.create!(email: "admin@admin.com", password: "password")
      visit '/auth/login'
      fill_in 'user[email]', with: "admin@admin.com"
      fill_in 'user[password]', with: "password"
      click_on "Log in"
    end
    it 'can visit the dashboard page and see content as a user' do
      expect(current_path).to eq(dashboard_index_path)
      within('div.articles-section') do
        expect(page).to have_content("Currently no articles. Would you like to create one?")
      end
      within('div.recommended-section') do
        expect(page).to have_content("No recommendations for now. Add some brews to start receiving recommendations!")
      end
      within('div.quick-entry-section') do
        expect(page).to have_content("New Brew")
        expect(page).to have_content("Bean Brand")
        expect(page).to have_content("Brew Type")
        expect(page).to have_content("French Press")
        expect(page).to have_content("Cold Brew")
        expect(page).to have_content("Moka Pot")
        expect(page).to have_content("Pour Over")
        expect(page).to have_content("Aeropress")
        expect(page).to have_content("Drip Coffee")
      end
    end
  end
  describe 'Sad Path' do

  end
end