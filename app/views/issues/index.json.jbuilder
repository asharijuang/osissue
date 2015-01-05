json.array!(@issues) do |issue|
  json.extract! issue, :id, :project_id, :tracker_id, :subject, :description, :status_id, :priority_id, :due_date, :author_id, :assigned_to_id
  json.url issue_url(issue, format: :json)
end
