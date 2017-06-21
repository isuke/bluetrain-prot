ProjectType = GraphQL::ObjectType.define do
  name 'Project'
  description 'Project'
  field :id   , types.ID
  field :name , types.String
  field :tasks, types[!TaskType] do
    resolve ->(obj, _, _) { TaskRepository.new.tasks_by_project(obj) }
  end
end
