# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 Shelter.destroy_all

  Shelter.create([
    {name: "Society for the Prevention of Cruelty to Animals",
      password_digest: "",
      address: "5 Wan Shing Street, Wan Chai",
      phone: "2802 0501",
      email: "",
      website: "www.spca.org.hk",
      donation_info: "http://www.spca.org.hk/en/join-us/make-a-donation",
      description: "Although we are the first charity in Hong Kong to deal with all aspects of animal welfare, we obtain around only 1% of our funding from the government. The rest of our funding comes from the generosity of the general public, for which we are extremely grateful. It is a constant challenge to raise the funds necessary to continue our work.",
      image_url: "https://hongkongvolunteer.files.wordpress.com/2013/07/spca_logo.jpg",
      location: "hong kong"
    },
    {name: "Hong Kong Cats",
      password_digest: "",
      address: "",
      phone: "51313921",
      email: "info@hongkongcats.org",
      website: "www.hongkongcats.org",
      donation_info: "http://hongkongcats.org/donate/",
      description: "Hong Kong Cats’ mission is to educate people about the importance of adopting animals, rather than buying them. We help place cats and kittens into loving homes, help injured Cats and Kittens.",
      image_url: "",
      location: "hong kong"
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
    },
    {specie: "rodent",
      color: "white",
      breed: "hamster",
      age: "unknown",
      size: "small",
      sex: "female",
      name: "clear",
      note: "My name is Clear. I am a White Female Hamster (Dwarf) and I was rescued by Inspectors."
    },
    {specie: "reptile & fish",
      color: "unknown",
      breed: "terrapin",
      age: "unknown",
      size: "small",
      sex: "unknown",
      name: "dumbo",
      note: "My name is Dumbo. I am a Green Unknown Red Eared Slider Terrapin and I was Abandoned by Owner."
    },
    {specie: "cat",
      color: "tabby & white",
      breed: "domestic short hair",
      age: "unknown",
      size: "small",
      sex: "male",
      name: "baloon",
      note: "My name is Balloon. I am a Tabby & White Male Domestic Short Hair(Neutered) and I was rescued from Cat Colony Care Programme."
    },
    {specie: "dog",
      color: "black & brindle",
      breed: "mongrel",
      age: "unknown",
      size: "large",
      sex: "female",
      name: "samiya",
      note: "Samiya is a black and brindle colored mixed breed puppy girl. Sweet and passionate. She loves to interact with people and like to be reward with pat. She is looking for someone likes to teach her all good manners to be calm and polite."
    }
  ])
