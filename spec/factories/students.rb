FactoryGirl.define do

  factory :student do
    factory :active_student do
      name "Estudante Ativo"
      register_number "ABC123"
      status StudentStatus::ACTIVE
    end

    factory :inactive_student do
      name "Estudante Inativo"
      register_number "123ABC"
      status StudentStatus::INACTIVE
    end
  end

end
