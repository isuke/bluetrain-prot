class Task < Hanami::Entity
  attributes do
    attribute :id         , Types::Int
    attribute :project_id , Types::Int
    attribute :title      , Types::String
    attribute :content    , Types::String
    attribute :vals       , Types::Hash
  end
end
