class Attr < Hanami::Entity
  Molds = Types::Strict::String.enum('Int', "String")

  attributes do
    attribute :project_id, Types::Int
    attribute :name      , Types::String
    attribute :mold      , Molds
  end
end
