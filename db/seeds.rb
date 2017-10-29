
User.create!([
  {name: "Joe School", password: "password", password_confirmation: "password", email: "joe@school.com", admin: false},
  {name: "ghfgf", password: "password", password_confirmation: "password", email: "gfdgfd@bvcn.com", admin: false},
  {name: "ghfgf", password: "password", password_confirmation: "password", email: "gfdgfd@bvcn.com", admin: false},
  {name: "Joe Cool", password: "password", password_confrimation: "password", email: "joe@cool.com", admin: true}
])

Supplier.create!([
  {name: "HP Lovecraft", email: "hp@lovecraft.horror", phone: "1-800-ABYSSAL"},
  {name: "Algernon Blackwood", email: "algernon@blackwood.horror", phone: "1-800-HOLLOWS"},
  {name: "Lord Dunsany", email: "lord@dunsany.horror", phone: "1-800-ROYALTY"}
])

Category.create!([
  {name: "Tentacular"},
  {name: "Globular"},
  {name: "Festering"},
  {name: "Cosmic"},
  {name: "Terrestrial"},
  {name: "Dormant"},
  {name: "Active"}
])

GreatOldOne.create!([
  {name: "Abholos", description: "Abolos (Devourer in the Mist) is a great, grey festering orb of endless malevolence. Although not confirmed, he is said to be a lesser brother of Tsathoggua, born of his bile and tears.", price: "60.0", in_stock: nil, supplier_id: 3},
  {name: "Shub-Niggurath", description: "Shub-Niggurath (The Black Goat of the Woods with a Thousand Young) is a perverse fertility deity, said to appear as an enormous cloudy mass which extrudes black tentacles, slime dripping mouths, and short, writhing goat legs. Small creatures are continuously spat forth by the monstrosity, which are either reconsumed into the miasmic form or escape to some monstrous life elsewhere.", price: "666.0", in_stock: nil, supplier_id: 1},
  {name: "Tsathoggua", description: "He was very squat and pot-bellied, his head was more like a monstrous toad than a deity, and his whole body was covered with an imitation of short fur, giving somehow a vague sensation of both the bat and the sloth. His sleepy lids were half-lowered over his globular eyes; and the tip of a queer tongue issued from his fat mouth", price: "15000.0", in_stock: nil, supplier_id: 1},
  {name: "Azathoth", description: "[O]utside the ordered universe [is] that amorphous blight of nethermost confusion which blasphemes and bubbles at the center of all infinity—the boundless daemon sultan Azathoth, whose name no lips dare speak aloud, and who gnaws hungrily in inconceivable, unlighted chambers beyond time and space amidst the muffled, maddening beating of vile drums and the thin monotonous whine of accursed flutes.", price: "90.0", in_stock: nil, supplier_id: 1},
  {name: "Yog-Sothoth", description: "Yog-Sothoth, an omnicient outer-god, locked outside of the universe, visually manifests himself as a mass of glowing orbs, with or without eyes and tendrils. Yog-sothoth is mainly invoked by mortals for the resurrection of the dead, and is known to have fathered one set of human twins.", price: "500.0", in_stock: nil, supplier_id: 2},
  {name: "Cthulhu", description: "Cthulhu is a Great Old One that lies in a death-like sleep beneath the Pacific Ocean in his sunken city of R'lyeh. He is a domineering figure in the eldritch happenings in our world.", price: "2500000.0", in_stock: nil, supplier_id: 1}
])

CategoryGoo.create!([
  {category_id: 1, great_old_one_id: 1},
  {category_id: 2, great_old_one_id: 1},
  {category_id: 3, great_old_one_id: 1},
  {category_id: 4, great_old_one_id: 1},
  {category_id: 7, great_old_one_id: 1},
  {category_id: 1, great_old_one_id: 2},
  {category_id: 3, great_old_one_id: 2},
  {category_id: 5, great_old_one_id: 2},
  {category_id: 7, great_old_one_id: 2},
  {category_id: 1, great_old_one_id: 3},
  {category_id: 5, great_old_one_id: 3},
  {category_id: 6, great_old_one_id: 3},
  {category_id: 1, great_old_one_id: 4},
  {category_id: 5, great_old_one_id: 4},
  {category_id: 6, great_old_one_id: 4},
  {category_id: 2, great_old_one_id: 5},
  {category_id: 3, great_old_one_id: 5},
  {category_id: 7, great_old_one_id: 5},
  {category_id: 1, great_old_one_id: 6},
  {category_id: 2, great_old_one_id: 6},
  {category_id: 4, great_old_one_id: 6},
  {category_id: 7, great_old_one_id: 3}
])

Image.create!([
  {great_old_one_id: 1, url: "https://2ch.hk/b/arch/2016-06-12/src/129475385/14657316829780.jpg"},
  {great_old_one_id: 1, url: "https://static.tumblr.com/0e031e00dec815f7f7e963d911da8be1/baa04np/IV5ortm7b/tumblr_static_tumblr_static_ah31s7yy82ogk408gck80gsc0_640.jpg"},
  {great_old_one_id: 1, url: "https://www.yog-sothoth.com/wiki/images/thumb/3/39/Yog-sothoth.jpg/400px-Yog-sothoth.jpg"},
  {great_old_one_id: 2, url: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Shub-Niggurath.jpg/300px-Shub-Niggurath.jpg"},
  {great_old_one_id: 2, url: "https://vignette3.wikia.nocookie.net/lovecraft/images/c/c8/Tumblr_n72r7hKWR91s748a0o1_1280.jpg/revision/latest/zoom-crop/width/240/height/240?cb=20140818055056"},
  {great_old_one_id: 3, url: "https://vignette1.wikia.nocookie.net/monster/images/c/ca/Abholos_image.jpg/revision/latest?cb=20170809130509"},
  {great_old_one_id: 3, url: "http://vignette3.wikia.nocookie.net/villains/images/c/c6/The_Great_Old_Ones.jpg/revision/latest?cb=20130323225412"},
  {great_old_one_id: 4, url: "https://i.pinimg.com/736x/3c/0c/77/3c0c779deb1798eefd0df62a66409adf--lovecraft-cthulhu-hp-lovecraft.jpg"},
  {great_old_one_id: 4, url: "https://i.pinimg.com/736x/81/c8/69/81c8696e728ceea1852d667ff2140e58--lovecraftian-horror-hp-lovecraft.jpg"},
  {great_old_one_id: 5, url: "https://vignette2.wikia.nocookie.net/lovecraft/images/7/74/Tsathogua.jpg/revision/latest?cb=20150525031324"},
  {great_old_one_id: 5, url: "https://img04.deviantart.net/1a94/i/2013/319/3/1/tsathoggua_rising_by_butttornado-d6ubvnp.jpg"},
  {great_old_one_id: 6, url: "https://vignette2.wikia.nocookie.net/lovecraft/images/b/bd/AZATHOTH.jpg/revision/latest?cb=20170701172141"},
  {great_old_one_id: 6, url: "https://img14.deviantart.net/658b/i/2015/261/d/8/azathoth_by_bergamind-d61fuwh.jpg"}
])

