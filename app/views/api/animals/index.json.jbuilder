json.array! @animals do |animal|
  json.merge! animal.attributes
  json.animal_image animal.avatar.url
  json.location animal.shelter.location
  json.sheltername animal.shelter.name
end
