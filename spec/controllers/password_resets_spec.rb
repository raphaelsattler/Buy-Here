require "rails_helper"

RSpec.describe PasswordResetsController, type: :controller do
  it { is_expected.to route(:get, "/password_resets/new").to(action: :new) }
  it { is_expected.to route(:post, "/password_resets").to(action: :create) }

  describe "GET #new" do
    before { get :new }

    it { is_expected.to render_template("new") }
  end
end
