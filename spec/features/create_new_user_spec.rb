require "rails_helper"

feature "create new user" do 
  scenario "successfully" do
    visit new_user_registration_path

    fill_in "user_email", with: "a@b.com"
    fill_in "user_password", with: "password"
    fill_in "user_phone_number", with: "610-331-4327"
    fill_in "user_first_name", with: "Gabe"
    fill_in "user_last_name", with: "Pressman"
    fill_in "user_password_confirmation", with: "password"
    click_on "Sign up"


    expect(page).to have_css "p", text: "a@b.com"
  end
end