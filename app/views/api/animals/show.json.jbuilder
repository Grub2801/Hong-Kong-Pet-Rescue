json.extract! @animal, :id, :specie, :color, :breed, :age, :size, :sex, :name, :note, :avatar, :created_at, :updated_at
json.shelter_id   @animal.shelter_id
json.shelter_name @animal.shelter.name
json.shelter_description @animal.shelter.description
json.shelter_email @animal.shelter.email

