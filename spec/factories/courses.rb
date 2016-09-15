FactoryGirl.define do
  factory :course do
    factory :active_course do
      name "Fisica"
      description "Curso de Fisica"
      status CourseStatus::ACTIVE
    end

    factory :inactive_course do
      name "Analise e Desenvolvimento de Software"
      description "Curso de ADS"
      status CourseStatus::INACTIVE
    end
  end
end
