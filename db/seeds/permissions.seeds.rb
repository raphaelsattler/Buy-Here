file = File.read "db/seeds/permissions.json"
doc = JSON.load(file)

doc["permissions"].each do |permission|
  Permission.find_or_create_by!(code: permission["code"], name: permission["name"], description: permission["description"])
end
