class TaskRepository < Hanami::Repository
  def tasks_by_project(project_id)
    tasks.where(project_id: project_id)
  end
end
