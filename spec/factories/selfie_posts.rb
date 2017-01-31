FactoryGirl.define do
  factory :selfie_post do
    description "Dies ist das beste Selfie der Welt"
    picture_url "pfad/zur/datei"
    User nil
  end
end
