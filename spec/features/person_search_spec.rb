require "rails_helper"

RSpec.feature "People List" do
  let(:user) { create(:user) }
  let(:profile) { create(:profile) }
  let(:buy_intention) { create(:buy_intention) }
  let(:person1) { create(:person, user: user, profile: profile, buy_intention: buy_intention) }
  let(:person2) { create(:person, user: user, profile: profile, buy_intention: buy_intention) }

  scenario "when the search is done the people who match the search params should appear" do
    person1
    person2

    visit "/"

    fill_in "name_cont", with: "#{person1.name}"

    find("#search-button").click

    expect(page).to have_content(person1.name)
  end

  scenario "when the search is done the people who not match with the search params shouldn't appear" do
    person1
    person2

    visit "/"

    fill_in "name_cont", with: "#{person1.name}"

    find("#search-button").click

    expect(page).not_to have_content(person2.name)
  end
end
