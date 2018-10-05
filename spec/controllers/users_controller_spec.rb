require "rails_helper"

RSpec.describe UsersController, type: :controller do
  it { is_expected.to route(:get, "/users/1").to(action: :show, id: 1) }
end
