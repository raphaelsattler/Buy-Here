module Features
  module PasswordResets
    def reset(email)
      visit new_password_reset_path

      fill_in t("password_reset.form.forgot.email"), with: email
      click_button t("password_reset.form.forgot.submit")
    end
  end
end
