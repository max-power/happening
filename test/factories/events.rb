# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    name "Tour de France 2014"
    info "Die Tour de France [ˌtuʀdəˈfʀɑ̃ːs], auch Grande Boucle [gʀɑ̃dˈbukl] – französisch für Große Schleife – oder einfach Le Tour [ləˈtuːʀ] genannt, ist das berühmteste und für die Fahrer bedeutendste Radrennen, resp. Etappenrennen (21 Etappen) der Welt."
    open_at "2014-07-07 00:09:00"
    ends_at "2014-07-27 22:30:00"
  end
end
