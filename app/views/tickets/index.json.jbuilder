json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :subject, :description, :project_id, :priority_id, :issue_status_id
  json.url ticket_url(ticket, format: :json)
end
