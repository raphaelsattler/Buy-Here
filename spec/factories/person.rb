FactoryBot.define do
  factory :person do
    perfil { Perfil.first || association(:perfil) }
    buy_intention { BuyIntention.first || association(:buy_intention) }
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
