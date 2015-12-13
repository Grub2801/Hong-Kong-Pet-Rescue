json.array! @shelters do |shelter|
  json.merge! shelter.attributes
  json.animalname shelter.animal.name
end
