json.array! @animals do |animal|
  json.merge! animal.attributes
  json.location animal.shelter.location
  json.sheltername animal.shelter.name
end
