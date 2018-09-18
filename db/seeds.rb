Group.create! ([
                {name: "Family"},
                 {name: "Business"},
                 {name: "Out of Town"},
                {name: "Blacklisted"},
                 {name: "School"}
                 ])
group_ids = Group.pluck(:id)

Contact.all.each do |contact|
  sampled_ids = group_ids.sample(rand(2..4))

  sampled_ids.each do |group_id|
    Contact.Group.create!(contact_id: contact.id, group_id: group_id)
  end
end

Contact.create!([
  {first_name: "John", last_name: "Wick", email: "John.Wick@gmail.com", phone_number: "312-454-1000", middle_name: nil, bio: nil},
  {first_name: "Bart", last_name: "Simpson", email: "Bart.Simpson@gmail.com", phone_number: "312-404-0666", middle_name: nil, bio: nil},
  {first_name: "Bruce", last_name: "Willis", email: "Bruce.Willis@gmail.com", phone_number: "312-456-7777", middle_name: nil, bio: nil},
  {first_name: "Bub", last_name: "City", email: "Bub.CIty@gmail.com", phone_number: "847-321-9191", middle_name: nil, bio: nil},
  {first_name: nil, last_name: nil, email: nil, phone_number: nil, middle_name: nil, bio: nil},
  {first_name: "Bobby", last_name: "McGee", email: "bobbysworld@gmail.com", phone_number: nil, middle_name: "J.", bio: nil}
])
