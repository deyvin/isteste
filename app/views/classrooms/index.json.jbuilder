json.array!(@classrooms) do |classroom|
  json.extract! classroom, :id, :students_id, :courses_id, :entry_at
  json.url classroom_url(classroom, format: :json)
end
