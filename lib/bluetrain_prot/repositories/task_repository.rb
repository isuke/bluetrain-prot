class TaskRepository < Hanami::Repository
  def tasks_by_project(project)
    tasks.where(project_id: project.id)
  end
end
