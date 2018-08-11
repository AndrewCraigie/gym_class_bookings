require_relative ('../models/role')
require_relative ('../models/membership_type')
require_relative ('../models/room')
require_relative ('../models/song')
require_relative ('../models/intensity')
require_relative ('../models/gym_class_category')
require_relative ('../models/membership')
require_relative ('../models/person')
require_relative ('../models/gym_class')
require_relative ('../models/session')
require_relative ('../models/person_session')
require_relative ('../models/person')
require_relative ('../models/message')
require_relative ('../models/payment')


Role.delete_all()
MembershipType.delete_all()
Room.delete_all()
GymClassCategory.delete_all()
Intensity.delete_all()
Song.delete_all()

role1 = Role.new({
  'name' => 'customer'
  })

role2 = Role.new({
  'name' => 'employee'
  })

role1.save()
role2.save()

membership_type1 = MembershipType.new({
  'name' => 'standard',
  'description' => 'Standard memberhip'
  })

membership_type2 = MembershipType.new({
  'name' => 'premium',
  'description' => 'Premium memberhip'
  })

membership_type1.save()
membership_type2.save()

room1 = Room.new({
  'name' => 'Studio 1'
  })
room2 = Room.new({
  'name' => 'Studio 2'
  })
room3 = Room.new({
  'name' => 'Studio 3'
  })
room4 = Room.new({
  'name' => 'Studio 4'
  })
room5= Room.new({
  'name' => 'Gym Hall 1'
  })
room6 = Room.new({
  'name' => 'Gym Hall 2'
  })

room1.save()
room2.save()
room3.save()
room4.save()
room5.save()
room6.save()


gym_class_category1 = GymClassCategory.new({
  'name' => 'Cardio',
  'description' => 'Get your heart beating'
  })

gym_class_category2 = GymClassCategory.new({
  'name' => 'Strength',
  'description' => 'Build those muscles'
})

gym_class_category3 = GymClassCategory.new({
  'name' => 'Tone',
  'description' => 'For a sleek and lean body'
})

gym_class_category4 = GymClassCategory.new({
  'name' => 'Stamina',
  'description' => 'Keep going for longer'
})

gym_class_category4 = GymClassCategory.new({
  'name' => 'Flexibility',
  'description' => 'Get supple and bendy'
})

gym_class_category5 = GymClassCategory.new({
  'name' => 'Wellbeing',
  'description' => 'Taking care of your inner and outer self'
})

gym_class_category6 = GymClassCategory.new({
  'name' => 'Combat',
  'description' => 'Get FITTING fit'
})

gym_class_category1.save()
gym_class_category2.save()
gym_class_category3.save()
gym_class_category4.save()
gym_class_category5.save()
gym_class_category6.save()

intensity1 = Intensity.new({
  'name' => 'Beginner'
  })
intensity2 = Intensity.new({
  'name' => 'Intermediate'
  })
intensity3 = Intensity.new({
  'name' => 'Advanced'
  })

intensity1.save()
intensity2.save()
intensity3.save()


song1 = Song.new({
  'name' => 'Raise Your Hands',
  'artist' => 'Ummet Ozcan',
  'duration' => '00:04:26'
  })

song1 = Song.new({
'name' => "Till I Collapse",
'artist' => "Eminem (ft.Nate Dogg)",
'duration' => "00:04:57"
})

song2 = Song.new({
'name' => "Rockstar",
'artist' => "Post Malone (ft. 21 Savage)",
'duration' => "00:03:38"
})

song3 = Song.new({
'name' => "Lose Yourself",
'artist' => "Eminem",
'duration' => "00:05:26"
})

song4 = Song.new({
'name' => "HUMBLE",
'artist' => "Kendrick Lamar",
'duration' => "00:02:57"
})

song5 = Song.new({
'name' => "More Than You Know",
'artist' => "Axwell Ingrosso",
'duration' => "00:03:23"
})

song6 = Song.new({
'name' => "Mi Gente",
'artist' => "J Balvin (ft. Beyonce)",
'duration' => "00:03:29"
})

song7 = Song.new({
'name' => "Havana",
'artist' => "Camila Cabello",
'duration' => "00:03:37"
})

song8 = Song.new({
'name' => "You Don't Know Me",
'artist' => "Jax Jones (Radio edit)",
'duration' => "00:03:33"
})

song9 = Song.new({
'name' => "New Rules",
'artist' => "Dua Lipa (Initial Talk remix)",
'duration' => "00:03:44"
})

song10 = Song.new({
'name' => "POWER",
'artist' => "Kanye West",
'duration' => "00:04:52"
})

song1.save()
song2.save()
song3.save()
song4.save()
song5.save()
song6.save()
song7.save()
song8.save()
song9.save()
song10.save()

p Song.all()
