Fabricator(:attr) do
  project
  name { Faker::Lorem.word }
  mold { Attr::Molds.values.sample }
end
