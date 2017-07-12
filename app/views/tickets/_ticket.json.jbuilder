json.extract! ticket, :id, :requester_id, :assignee_id, :subject, :description, :tags, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
