require "rails_helper"

RSpec.feature "People List" do
  let(:user) { create(:user) }
  let(:profile) { create(:profile) }
  let(:buy_intention) { create(:buy_intention) }

  scenario "when create people should appear in the list" do
    user
    profile
    buy_intention

    person_name = Faker::Name.name

    visit "/"

    fill_in "email", with: "#{Faker::Internet.email}"
    fill_in "name", with: "#{person_name}"
    fill_in "cpf", with: "#{CPF.generate}"
    select("#{Profile.first.name}", from: "profile")
    select("#{BuyIntention.first.name}", from: "buy-intention")
    select("#{User.first.username}", from: "user")

    find("#create-button").click

    visit "/"

    expect(page).to have_content(person_name)
  end
end
