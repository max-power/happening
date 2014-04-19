# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :organizer do
    name "The Organization"
    info "some infos about us"
    email "boss@organizer.com"
    website "http://www.organizer.com"
  end
end
