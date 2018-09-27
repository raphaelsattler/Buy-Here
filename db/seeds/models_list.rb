file = File.read "db/seeds/models_list.json"
doc = JSON.load(file)

doc["models"].each do |models|
  ModelsList.find_or_create_by!(code: models["code"], name_of_model: models["name"])
end
