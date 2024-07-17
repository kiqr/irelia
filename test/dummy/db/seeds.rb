user = User.where(id: 1).first_or_create!(id: 1, name: "Foobar zoo", birth_year: 1980, bio: "Hacker from another planet.")
