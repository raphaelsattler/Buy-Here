FactoryBot.define do
  factory :person do
    user { association(:user) }
    profile { association(:profile) }
    buy_intention { association(:buy_intention) }
    name { Faker::Name.name }
    social_name { Faker::Name.initials  }
    email { Faker::Internet.email }
    cpf { CPF.generate }
    cnpj { CNPJ.generate }
    rg { Faker::IDNumber.valid }
    expediter_rg { Faker::GameOfThrones.house }
    uf_expediter_rg { Faker::Lorem.characters(2) }
  end
end
