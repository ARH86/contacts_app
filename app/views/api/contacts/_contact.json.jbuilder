json.first_name contact.first_name
json.middle_name contact.middle_name
json.last_name contact.last_name
json.email contact.email
json.phone_number contact.phone_number
json.full_name contact.full_name
json.bio contact.bio 

json.formatted do
 json.friendly_updated_at contact.updated_at
 json.phone_number contact.japan_phone_number
end

json.current_user contact.current_user

json.groups do
  json.array! contact.groups, partial: "api/groups/group", as: :group
end 