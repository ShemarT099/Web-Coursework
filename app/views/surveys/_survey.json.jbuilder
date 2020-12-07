json.extract! survey, :id, :name, :review, :rate, :created_at, :updated_at
json.url survey_url(survey, format: :json)
