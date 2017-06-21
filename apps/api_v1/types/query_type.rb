require_relative 'task_type'
require_relative 'project_type'

QueryType = GraphQL::ObjectType.define do
  name 'Query'
  description 'The query root for this schema'

  field :task do
    type TaskType
    argument :id, !types.ID
    resolve ->(_, args, _) { TaskRepository.new.find(args[:id]) }
  end

  field :project do
    type ProjectType
    argument :id, !types.ID
    resolve ->(_, args, _) { ProjectRepository.new.find(args[:id]) }
  end
end
