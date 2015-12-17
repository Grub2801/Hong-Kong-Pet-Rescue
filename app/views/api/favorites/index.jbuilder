json.array! @favorites do |favorite|
  animal = favorite.animal
  json.merge! favorite.attributes
  json.animal_image animal.avatar
  json.animal_name animal.name
  json.animal_specie animal.specie
  json.animal_location animal.shelter.location
  json.animal_shelter_email animal.shelter.email
end
