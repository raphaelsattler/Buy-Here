require 'rails_helper'

RSpec.describe SessionsController, type: :controller do 
  it { is_expected.to route(:get, '/login/new').to(action: :new, controller: 'sessions') }
  it { is_expected.to route(:post, '/login').to(action: :create, controller: 'sessions') }
  it { is_expected.to route(:delete, '/login/1').to(action: :destroy, controller: 'sessions', id: 1) }

  describe 'GET #new' do
    before { get :new }

    it { is_expected.to render_template('new') }
  end

end