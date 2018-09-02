json.first_name contact.first_name
json.last_name contact.last_name
json.email contact.email
json.phone_number contact.phone_number
json.full_name contact.full_name

json.formatted do
 json.friendly_updated_at contact.updated_at
 json.phone_number contact.japan_phone_number
end