Fabricator(:attr) do
  name { Faker::Lorem.word }
  mold { Attr::Molds.values.sample }
end
