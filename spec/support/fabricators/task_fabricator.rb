Fabricator(:task) do
  title   { Faker::Lorem.sentence }
  content { Faker::Lorem.sentences.join("\n") }
  vals    { {} }
end
