require "rails_helper"

feature "visits root" do 
  scenario "Successfully" do
    visit root_path

    expect(page).to have_css "h1", text: "Listing Events"
  end
end