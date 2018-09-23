FactoryBot.define do
  factory :user do
    role { Role.first || association(:role) }
    username { Faker::Hobbit.character }
    email { Faker::Internet.email }
    password_digest { Faker::Lorem.characters }
    reset_password_sent_at { Faker::Time.between(DateTime.now - 1, DateTime.now) }
    token_recovery_expire_at { Faker::Time.between(DateTime.now, DateTime.now + 1) }
  end

  factory :role do
    name { Faker::Pokemon.name }
  end

  factory :role_rule do
    rule { Rule.first || association(:rule) }
    role { Role.first || association(:role) }
  end

  factory :rule do
    code { Faker::Lorem.characters(10) }
    permission { Permission.first || association(:permission) }
    description { Faker::Lorem.paragraph }
  end

  factory :permission do
    code { Faker::Lorem.characters(10) }
    name { Faker::Pokemon.name }
    description { Faker::Lorem.paragraph }
  end

  factory :person do
    user { User.first || association(:user) }
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

  factory :buy_intention do
    name { Faker::Pokemon.name }
  end

  factory :perfil do
    name { Faker::Pokemon.name }
  end

  factory :address_type do
    name { Faker::Pokemon.name }
  end

  factory :telephone_type do
    name { Faker::Pokemon.name }
  end

  factory :membership do
    user { User.first || association(:user) }
    group { Group.first || association(:group) }
  end

  factory :group do
    name { Faker::Job.position }
  end

  factory :contact_email do
    person { Person.first || association(:person) }
    email { Faker::Internet.email }
  end

  factory :address do
    person { Person.first || association(:person) }
    address_type { AddressType.first || association(:address_type) }
    street { Faker::Address.street_name }
    number { Faker::Address.building_number }
    zip_code { Faker::Address.zip_code }
    district { Faker::Pokemon.name }
    city { Faker::Address.city }
    state { Faker::Address.state }
    country { Faker::Address.country }
  end

  factory :telephone do
    person { Person.first || association(:person) }
    telephone_type { TelephoneType.first || association(:telephone_type) }
    ddi_number { Faker::Number.between(1, 999) }
    ddd_number { Faker::Number.between(1, 99) }
    telephone_number { Faker::Number.number(9) }
  end
end
