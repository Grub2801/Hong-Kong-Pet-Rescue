Shelter.destroy_all

  Shelter.create([
    {name: "Society for the Prevention of Cruelty to Animals",
      address: "5 Wan Shing Street, Wan Chai",
      phone: "2802 0501",
      website: "www.spca.org.hk",
      donation_info: "http://www.spca.org.hk/en/join-us/make-a-donation",
      description: "Although we are the first charity in Hong Kong to deal with all aspects of animal welfare, we obtain around only 1% of our funding from the government. The rest of our funding comes from the generosity of the general public, for which we are extremely grateful. It is a constant challenge to raise the funds necessary to continue our work.",
      image: "https://hongkongvolunteer.files.wordpress.com/2013/07/spca_logo.jpg",
      location: "hong kong",
      email: "test1@test.com",
      password: "asdfasdf"
    },
    {name: "Hong Kong Cats",
      address: "",
      phone: "51313921",
      website: "www.hongkongcats.org",
      donation_info: "http://hongkongcats.org/donate/",
      description: "Hong Kong Cats’ mission is to educate people about the importance of adopting animals, rather than buying them. We help place cats and kittens into loving homes, help injured Cats and Kittens.",
      image: "",
      location: "hong kong",
      email: "test2@test.com",
      password: "asdfasdf"
    }
  ])


Animal.destroy_all

Animal.create([
    {specie: "dog",
      color: "chocolate",
      breed: "mongrel",
      age: "unknown",
      size: "large",
      sex: "male",
      name: "thomas",
      note: "My name is Thomas. I am a Chocolate Male Mongrel(Neutered) and I was rescued from a prosecution case.",
      shelter_id: Shelter.first.id
    },
    {specie: "rodent",
      color: "white",
      breed: "hamster",
      age: "unknown",
      size: "small",
      sex: "female",
      name: "clear",
      note: "My name is Clear. I am a White Female Hamster (Dwarf) and I was rescued by Inspectors.",
      shelter_id: Shelter.first.id
    },
    {specie: "reptile & fish",
      color: "unknown",
      breed: "terrapin",
      age: "unknown",
      size: "small",
      sex: "unknown",
      name: "dumbo",
      note: "My name is Dumbo. I am a Green Unknown Red Eared Slider Terrapin and I was Abandoned by Owner.",
      shelter_id: Shelter.first.id
    },
    {specie: "cat",
      color: "tabby & white",
      breed: "domestic short hair",
      age: "unknown",
      size: "small",
      sex: "male",
      name: "baloon",
      note: "My name is Balloon. I am a Tabby & White Male Domestic Short Hair(Neutered) and I was rescued from Cat Colony Care Programme.",
      shelter_id: Shelter.first.id
    },
    {specie: "dog",
      color: "black & brindle",
      breed: "mongrel",
      age: "unknown",
      size: "large",
      sex: "female",
      name: "samiya",
      note: "Samiya is a black and brindle colored mixed breed puppy girl. Sweet and passionate. She loves to interact with people and like to be reward with pat. She is looking for someone likes to teach her all good manners to be calm and polite.",
      shelter_id: Shelter.first.id
    }
  ])