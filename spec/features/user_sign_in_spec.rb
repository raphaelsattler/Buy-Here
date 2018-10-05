require "rails_helper"

RSpec.describe "User login", type: :feature do
  let(:password) { Faker::Internet.password }
  let(:user) { create(:user, password: password) }

  scenario "with valid email and password" do
    sign_in_with(user.email, password)
    expect(page).to have_content(t("activerecord.session.form.flash.login_success"))
  end

  scenario "with invalid email" do
    sign_in_with(Faker::Internet.email, password)
    expect(page).to have_content(t("activerecord.session.form.flash.login_error"))
  end

  scenario "with invalid password" do
    sign_in_with(user.email, Faker::Internet.password)
    expect(page).to have_content(t("activerecord.session.form.flash.login_error"))
  end

  it "when user log out" do
    sign_in_with(user.email, password)
    sign_out
    expect(page).to have_content(t("activerecord.session.form.flash.exit"))
  end
end
