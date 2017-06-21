TaskType = GraphQL::ObjectType.define do
  name 'Task'
  description 'Task'
  field :id     , types.ID
  field :title  , types.String
  field :content, types.String
  field :project, ProjectType do
    resolve ->(obj, _, _) { ProjectRepository.new.find(obj.project_id) }
  end
end
