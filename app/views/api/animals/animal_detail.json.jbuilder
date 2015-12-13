json.array! @animals do |animal|
  json.merge! animal.attributes
  json.sheltername animal.shelter.name
  json.description animal.shelter.description
end
