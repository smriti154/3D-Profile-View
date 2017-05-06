json.extract! candidate, :id, :name, :highest_degree, :specialization, :marks, :total_experience, :work_summary, :work_gap, :education_gap, :mobile, :linkedin, :stackoverflow, :github, :created_at, :updated_at
json.url candidate_url(candidate, format: :json)
