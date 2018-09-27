ModelsList.all.each do |model|
  Permission.all.each do |permission|
    code = model.code.to_i + permission.code.to_i
    description = permission.description + " Valid for model: " + model.name_of_model
    Rule.find_or_create_by!(code: code, permission: permission, models_list: model, description: description)
  end
end
