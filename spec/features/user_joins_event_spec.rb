require "rails_helper"

feature "user joins event" do
  scenario "successfully" do
    Event.create(name: "Villanova basketball", address: "Villanova", date: "5-5-2010", workers: 6) 
  	User.create(first_name: "Gabe", last_name: "Pressman", phone_number: "610-331-4327", email: "pressman4747@gmail.com", password: "passowrd")
    visit root_path
    click_on "Show"
    click_on "Join Event"

    expect(page).to have_css "p", text: 5
  end
end

