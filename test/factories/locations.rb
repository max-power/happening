# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :location do
    name "Berliner Fernsehturm"
    info "Der Berliner Fernsehturm ist mit 368 Metern das höchste Bauwerk Deutschlands und das vierthöchste freistehende Gebäude Europas."
    coordinates [13.409406,52.520819]
  end
end
