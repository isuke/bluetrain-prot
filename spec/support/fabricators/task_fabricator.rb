Fabricator(:task) do
  project
  title   { Faker::Lorem.sentence }
  content { Faker::Lorem.sentences.join("\n") }
end
