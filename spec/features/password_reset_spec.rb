require "rails_helper"

RSpec.describe "Password Reset", type: :feature do
  let(:user) { create(:user) }
  let(:email) { user.email }

  scenario "with valid email" do
    reset(email)
    expect(page).to have_content(t("password_reset.form.forgot.flash.success"))
  end

  scenario "with invalid email" do
    email = Faker::Internet.password
    reset(email)
    expect(page).to have_content(t("password_reset.form.forgot.flash.not_found_user"))
  end
end
