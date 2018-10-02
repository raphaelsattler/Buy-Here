module Features
  module SessionHelpers
    def sign_in_with(email, password)
      visit new_login_path

      fill_in t("activerecord.session.form.email.label"), with: email
      fill_in t("activerecord.session.form.password.label"), with: password

      click_button t("activerecord.session.form.submit")
   end

    def sign_out
      find_link(t("activerecord.session.form.exit")).click
    end
  end
end
