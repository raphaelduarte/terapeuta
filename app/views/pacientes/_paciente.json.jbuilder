json.extract! paciente, :id, :pessoa_id, :user_id, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
