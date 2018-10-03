require "rails_helper"

RSpec.feature "People List" do
  let(:user) { create(:user) }
  let(:profile) { create(:profile) }
  let(:buy_intention) { create(:buy_intention) }
  let(:person1) { create(:person, user: user, profile: profile, buy_intention: buy_intention) }
  let(:person2) { create(:person, user: user, profile: profile, buy_intention: buy_intention) }
  let(:person3) { create(:person, user: user, profile: profile, buy_intention: buy_intention) }

  scenario "when the root page is load should show a list of persons" do
    person1
    person2
    person3

    visit "/"

    expect(page).to have_content(person1.email)
    expect(page).to have_content(person2.email)
    expect(page).to have_content(person3.email)
  end
end
