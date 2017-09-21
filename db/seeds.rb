require 'faker'

#Make a bunch of different accounts so there is a variety of users posting:
lords =[]
masters =[]

lords << User.create!(username: "EmperorPalpatine", email: "emperor@galacticempire.gov", password: "imtheemperor", rank: "Lord")
lords << User.create!(username: "DarthVader", email: "vader@galacticempire.gov", password: "iamyourfather", rank: "Lord")
lords << User.create!(username: "CountDooku", email: "dooku@cis.gov", password: "idofancyfencing", rank: "Lord")
masters << User.create!(username: "DarthBob", email: "bob@bob.com", password: "bob", rank: "Master")
masters << User.create!(username: "DarthMaul", email: "atlastwewillhaveourrevenge@republic.gov", password: "iwontstaydead", rank: "Master")
masters << User.create!(username: "DarthPlagueis", email: "darthplagueis@thewise.com", password: "icanevenstopdeathbutnotreally", rank: "Master")
masters << User.create!(username: "DarthTina", email: "tina@tina.com", password: "tina", rank: "Master")
masters << User.create!(username: "Ventress", email: "aventress@cis.gov", password: "iamsith", rank: "Master")
masters << User.create!(username: "DarthCaedus", email: "jacensolo@newrepublic.gov", password: "imnotcanonanymore", rank: "Master")
masters << User.create!(username: "TotallyASith", email: "q.vos@jediorder.org", password: "waitmaybeiamasith", rank: "Master")
masters << User.create!(username: "MaraJade", email: "theemperorshand@galacticempire.gov", password: "igotcutfromthesequeltrilogy", rank: "Master")

#Some legit seeded data for using with the Featured Articles thing:

categories = ["The Greatest Sith Lords",
              "Jedi Search & Elimination",
              "Skincare",
              "Imperial History",
              "Pre-Imperial History",
              "Amassing More Power",
              "Lightsabers",
              "Seducing People to the Dark Side",
              "Korriban",
              "The Two Sith Policy",
              "Enemies of the Empire",
              "Superweapons",
              "Ancient Sith Temples",
              "Abilities Jedi Consider to be Unnatural",
              "Overthrowing Your Master",
              "Ancient Sith Artifacts"
            ]

m_titles = ["Darth Plagueis",
            "Jedi Traps",
            "Spray Tans",
            "Order 66",
            "The Big Bang",
            "Letting Hate Flow Through You",
            "Double-Bladed Lightsabers",
            "Cookies",
            "The History of Moraband, also sometimes known as Korriban",
            "Always two there are",
            "Jedi Master Obi-Wan Kenobi",
            "Death Star",
            "Use of Pyramids in Sith Architecture",
            "Force Lightning",
            "Ethical Concerns",
            "Holocrons"
            ]

m_bodies = [
            "Darth Plagueis was a male Dark Lord of the Sith and the master of Darth Sidious. He acquired considerable knowledge in the field of midi-chlorian manipulation, but was ultimately betrayed and murdered by his own apprentice, in accordance with the 'Rule of Two.' ",
            "Lure Jedi out into the open by putting some candy under a box. Prop the box up with a stick. Attach a string to the stick and pull when the Jedi is under the box.",
            "Many Sith try to hide their natural pallor with custom airbrushing.",
            "Order 66 was an event at the end of the Clone Wars in which the clone troopers of the Grand Army of the Republic turned against their Jedi commanders and terminated them, bringing about the destruction of the Jedi Order. The event was triggered by Clone Protocol 66, an order implanted into the clones by the Sith Lords and Kaminoan scientists who created the clone army (the latter being tricked by the Sith into thinking that the sole purpose of their hidden 'programming' was to install a safeguard against rogue Jedi)",
            "Before the Empire was formed, the universe was created and some species evolved.",
            "Channel your negative feelings into the Force and gain strength",
            "The double-bladed lightsaber, also known as the saberstaff, was a lightsaber variant that featured a blade emitted from both ends.",
            "Cookies are just one of the many perks of being a Sith. Try asking your potential apprentice what they're favorite type is and offer them some.",
            "Korriban, also known as Moraband by the time of the Clone Wars, was the sole planet in the Horuset system, located across the galaxy from Koros Major. It was the original homeworld of the Sith species and a sacred planet for the Sith Order, housing the tombs for many ancient and powerful Dark Lords of the Sith, and containing immense dark side power.",
            "The Rule of Two was a Sith philosophy mandating that only two Sith Lords could exist at any given time: a master to embody the power of the dark side of the Force, and an apprentice to crave it. The philosophy of two governed the Lords of the Sith for a millennium, beginning with its founder Darth Bane.",
            "Obi-Wan Kenobi, later known as Ben Kenobi during his exile, was a Force-sensitive human male Jedi Master who served the Galactic Republic. He was mentor to both Anakin Skywalker and his son, Luke, training them in the ways of the Force.",
            "The Death Star, known officially as the DS-1 Orbital Battle Station, also known as the Death Star I, the First Death Star, Project Stardust internally, and simply the Ultimate Weapon in early development stages, was a moon-sized, deep-space mobile battle station constructed by the Galactic Empire. Designed to fire a single planet-destroying superlaser powered by massive kyber crystals, it was the pet project of the Emperor, Darth Vader, and its eventual commander Grand Moff Wilhuff Tarkin to expound the military philosophy of the aptly named Tarkin Doctrine.",
            "Sith temples were pyramidal structures built by the Sith Order on many worlds across the galaxy. Dating back as far as the days of the Old Republic, numerous Sith temples were erected, including the one located on the Sith homeworld of Moraband, the one on the ravaged planet of Malachor, and the one on the volcanic world of Mustafar.",
            "Force lightning was a well known Force ability, most often used by practitioners of the dark side of the Force, especially the Sith. The ability was commonly referred to as Sith lightning, due to the affiliations of its typical users.",
            "There are many things to think about when hatching your plot to kill your master and take their place as Lord. Among them being, are you really the Sith Lord you think you are if you just kill them in their sleep?",
            "Sith holocrons were immediately identifiable with respect to Jedi holocrons, as they were usually pyramidal in shape, and etched with strange symbols and ancient hieroglyphs. Inscriptions usually lined the bottom of the device, and various dark incantations were found all over the smooth surface. At the holocron's apex rested a black crystal, used to power the holocron's store of information."
            ]

l_titles = ["Darth Sidious",
            "Effective Traps for Jedi",
            "Spray Tanning",
            "Order Sixty-Six",
            "A Brief History of Nearly Everything",
            "Let the Hate Flow Through You",
            "Dual-Blade Lightsabers",
            "Delicious Cookies",
            "Homeworld History",
            "The Rule of Two, a History",
            "Fugitive from Justice and Traitor to the Empire, Obi-Wan Kenobi",
            "Death Star 2.0",
            "Ancient Sith Architecture",
            "Sith Lightning",
            "Personal Survival Concerns",
            "Sith Holocrons"
          ]

l_bodies = [
            "Darth Sidious, a Force-sensitive human male, was the Sith Lord who served as the last Supreme Chancellor of the Galactic Republic and the first Emperor of the Galactic Empire, and is the reigning Dark Lord of the Sith under Darth Bane's Rule of Two.",
            "The actual best way to lure Jedi out into the open is by putting a sad kitten under a box. Prop the box up with a stick. Attach a string to the stick and pull when the Jedi is under the box.",
            "Many Sith enjoy enhancing their natural pallor with custom airbrushing, which is provided free of charge. Just ignite your lightsaber in the vicinity of the shop owner or any employee to receive your discount.",
            "Order 66 marked the end of the Clone Wars and unmasked the treachery of the Jedi. The event was triggered by Clone Protocol 66, an order implanted into the clones by the Sith Lords and Kaminoan scientists who created the clone army in order to install a safeguard against rogue Jedi.",
            "Before the Empire, there was nothing. Then the Big Bang happened. A few species evolved, and eventually natural order was brought to the galaxy with the establishment of the First Galactic Empire.",
            "Use your anger to bend the Force to your will and enhance your power. Only Jedi cry about the 'will' of the Force. It should obey your will, not the other way around.",
            "The double-bladed lightsaber, also known as the saberstaff[citation needed], was a lightsaber variant that featured a blade emitted from both ends.",
            "Cookies are just one of the many perks of being a Sith. Try asking your potential apprentice what they're favorite type is and then threaten to destroy all that type of cookie and anyone who every knew how to make them.",
            "Korriban was the original homeworld of the Sith species and a sacred planet for the Sith Order, housing the tombs for many ancient and powerful Dark Lords of the Sith, and containing immense dark side power. The happening place now is Coruscant, where our Noble Emperor spends most of his time.",
            "The Rule of Two was a Sith philosophy mandating that only two Sith Lords could exist at any given time: a master to embody the power of the dark side of the Force, and an apprentice to crave it. Part of being a Sith, however, is to disregard all rules and hack all systems, so in order to be a true Sith, you must also disobey the Rule of Two.",
            "Obi-Wan Kenobi, human male, approximately 1.82 meters tall, 81 kg. Last known location: Mustafar. Crimes against the galaxy: treason, chopping off someone's limbs and leaving them to burn in close proximity to lava, general Jedi-ness, beard.",
            "The Second Death Star, the REAL Ultimate Power in the Galaxy, does not have any 2 meter wide exhaust ports that lead to the main reactor. It is completely invulnerable to rebel attack and a jewel in the Emperor's crown. Not that he has a crown. But it would be if he did. But not literally.",
            "Sith temples were pyramidal structures built by the Sith Order on many worlds across the galaxy. A Sith Temple was a structure built by, or dedicated to, any of the various incarnations of the Sith, as well as their various allies. Such temples stood on Thule, Krant, Geddes, and countless other worlds with some association to the Sith. Not all of them were pyramid shaped.",
            "A Jedi sufficiently strong in the Force can be trained to produce a facsimile, but not true Sith lightning, which, unabated, has the power not only to incapacitate or kill, but to physically transform the victim. Force lightning requires strength of a sort only a Sith can command because we accept consequence and reject compassion. To do so requires a thirst for power that is not easily satisfied. The Force tries to resist the callings of ravenous spirits; therefore it must be broken and made a beast of burden. It must be made to answer one's will. But the Force cannot be treated deferentially. In order to summon and use lightning properly, you will someday have to be on the receiving end of its power, as a means of taking the energy inside yourself. ―Darth Plagueis",
            "There are many things to think about when hatching your plot to kill your master and take their place as Lord. The foremost of them should be:  can I actually succeed? Because if you fail, you won't get a second chance. I can guarantee you that, my apprentice.",
            "Sith holocrons were used to store Sith wisdom and information about their history. Sith holocrons emitted a dark presence, creating tremors in the Force upon activation. It took a great deal of willpower for a Jedi to access the dark devices, and some of the more inexperienced Jedi often felt sickly or fell ill merely laying their gaze upon one, an intentional design choice because nauseous Jedi are notoriously hilarious."
          ]


#This is the less legit data just to have at least three articles per category:

seed_titles1 = ["Emperor Palpatine",
                "Jedi-in-Hiding Identification Guide",
                "Moisturizers with Collagen",
                "The Designing of the Imperial Logo",
                "A Tree Fell in a Forest and No One Heard It",
                "Pretending to Love Democracy",
                "Kyber Crystals",
                "Save the People You Love from Dying",
                "Pre-ruin History",
                "Notable Exceptions",
                "Luke Skywalker--Don't Think About His Last Name. Stop that. Now.",
                "The Super Star Destroyer",
                "Famous Sith Ghost Hauntings",
                "Influencing Midi-chlorians to Create Life",
                "Check-lists",
                "Sith Amulets"
              ]

seed_bodies1 = [
                "Emperor Palpatine overthrew his Master and took the role of Dark Lord of the Sith, ushering a new age of prosperity as Emperor of the Galactic Empire",
                "A Jedi in hiding will always wear something that looks like dirty, old Jedi robes because they are creatures of habit. Will also spout Jedi wisdom at any opportunity.",
                "Collagen can help repair the damage caused by years of channeling the powers of the Dark Side.",
                "Emperor Palpatine personally held a design contest for the new logo. Every single art student in the Empire was required to submit.",
                "We have video proof.",
                "Win the trust of Jedi and Senators alike by pretending to love democracy. State the fact while you take democracy away from people for extra effect.",
                "There are many places to mine kyber crystals, including Ilum and Jedha. Color varies by location, but you're not a Jedi so you don't care.",
                "There's an old legend about Darth Plagueis preventing people from dying. If your prospective apprentice seems reluctant to join you, casually drop some references while you're at the ballet or something.",
                "Korriban was a beautiful planet until the Jedi came and ruined everything, like they always do.",
                "Every true Sith is their own notable exception to the Rule of Two.",
                "This rebel, who has no relation to that missing and forgotten Jedi Anakin Skywalker was last seen ruining the Emperor's plans and must be brought to justice.",
                "Twice as big as the regular Star Destroyer, the Super Star Destroyer is better at casting ominous shadows.",
                "Darth Bane keeps hanging around the Temple on Korriban and no one knows how to get rid of him.",
                "Pssh. Why would you want to do that? What are you? A Jedi or something?",
                "Before you proceed with Overthrowing your Master, you must create many careful checklists. Make sure you do not leave the checklists laying around though.",
                "Fashion accessory and power boost!"

              ]

seed_titles2 = ["Sheev Palpatine",
              "Jedi Extermination",
              "Skin Grafts",
              "Red Guards--A Fashion Retrospective",
              "The Rise of the Empire",
              "Fooling Jedi into Thinking You're Not a Sith",
              "Forms",
              "Counting to Three",
              "Top Travel Destinations",
              "Originator of the Rule",
              "Leia Organa",
              "Darth Vader",
              "Overnight Sleepovers",
              "Cackling",
              "Failed Attempts",
              "Sith Spellbooks"
            ]

seed_bodies2 = [
              "A smalltown boy from the tiny planet of Naboo. From a young age, everyone knew he would go on to do something great. He went on to become the best Senator from Naboo and an even better Chancellor of the Republic",
              "If you lack a mind-controlled clone army, Jedi extermination can be carried out the old fashioned way. A particularly enjoyable way being to challenge them to a fair duel and then duel unfairly.",
              "In extreme cases, like immolation near a stream of molten lava, skin grafts may be the best option.",
              "Everyone knows the Royal Guard, what with their crimson robes standing in such striking contrast to the Emperor's majestic black attire. What people don't know is this iconic outfit did not start out this way.",
              "And then the Emperor formed the galaxy into the Galactic Empire.",
              "Jedi are not very intelligent, so to fool them into thinking you're not a Sith, you just need to do a little virtue signaling. Some tried and true methods are: hugging some puppies, wearing a color other than black, talking loudly about how you aren't a Sith.",
              "The Jedi have 7 lightsaber forms that they follow religiously. Sith, however, do as they please and make up their own forms.",
              "If your prospective apprentice resists your efforts to convert them to the Dark Side, try telling them they have until the count of three and then counting very slowly and dramatically.",
              "--Korriban currently closed to tourist traffic by Imperial Edict.",
              "Darth Bane, upon being the only survivor of the great war between the Jedi and the Sith, decided there should be only two so that they could be more sneaky. Unfortuantely, he was found and killed by some Jedi. His apprentice, however, was not.",
              "Daughter of that quasi-traitor Bail Organa. All titles and permissions have been rescinded because she's not a real Senator and was always a treasonous Rebel spy. Destroying her planet seems to have made her angry or something. ",
              "The Emperor's Ultimate Weapon when he doesn't have any other Ultimate Weapons at the moment.",
              "Sith Temples are available for booking sleepovers, but only if it's your birthday or if you just exterminated a Jedi.",
              "Cackling is one of the most powerful and dark techniques to master. A good cackle will strike fear into the bones of your enemies. And also your allies.",
              "Anyone not registered on this site has not passed this Right of Passage.",
              "Citation needed--the Force is not magic."
            ]

#Times loop to create three articles for each category, each a few versions and some unpublished drafts:

categories.length.times do |n|
  Category.create!(name: categories[n])
  master = masters.sample

  article1 = Article.create!( author_id: master.id )

  Version.create!( editor_id: master.id,
                   title: "Draft: " + m_titles[n],
                   body: "This is still a draft: " + m_bodies[n],
                   category_id: n+1,
                   article_id: article1.id,
                   published: false )


  Version.create!( editor_id: master.id,
                   title: m_titles[n],
                   body: m_bodies[n],
                   category_id: n+1,
                   article_id: article1.id,
                   published: true )

  Version.create!( editor_id: lords.sample.id,
                   title: l_titles[n],
                   body: l_bodies[n],
                   category_id: n+1,
                   article_id: article1.id,
                   published: true )

  master = masters.sample

  article2 = Article.create!( author_id: master.id )

  Version.create!( editor_id: master.id,
                   title: "Draft: " + seed_titles1[n],
                   body: "This is still a draft: " + seed_bodies1[n],
                   category_id: n+1,
                   article_id: article2.id,
                   published: false )


  Version.create!(editor_id: master.id,
                 title: seed_titles1[n],
                 body: seed_bodies1[n],
                 category_id: n+1,
                 article_id: article2.id,
                 published: true )


  master = masters.sample

  article3 = Article.create!( author_id: master.id )

  Version.create!( editor_id: master.id,
                   title: "Draft: " + seed_titles1[n],
                   body: "This is still a draft: " + seed_bodies1[n],
                   category_id: n+1,
                   article_id: article3.id,
                   published: false )


  Version.create!( editor_id: master.id,
                   title: seed_titles2[n],
                   body: seed_bodies2[n],
                   category_id: n+1,
                   article_id: article3.id,
                   published: true )


  unpublished_article = Article.create!( author_id: master.id )

  Version.create!(editor_id: master.id,
                  title: Faker::StarWars.quote,
                  body: Faker::StarWars.wookie_sentence,
                  category_id: n+1,
                  article_id: unpublished_article.id,
                  published: false)

end

#This is a bunch of entries from Faker data with comments of one of the admins going around and commenting on them:

faker_categories = ["Planets", "Persons of Interest", "Droids", "Species", "Vehicles"]

faker_categories.length.times do |n|
  master = masters.sample

  title_array = []
  title_array << planet  = Faker::StarWars.planet
  title_array << char    = Faker::StarWars.character
  title_array << droid   = Faker::StarWars.droid
  title_array << species = Faker::StarWars.specie
  title_array << vehicle = Faker::StarWars.vehicle

  quote = Faker::StarWars.quote

  Category.create!(name: categories[n])

  faker_article1 = Article.create!( author_id: master.id)

  Version.create!( editor_id: master.id,
                   title: title_array[n],
                   body: quote,
                   category_id: n+1,
                   article_id: faker_article1.id,
                   published: true )


  master = masters.sample
  quote = Faker::StarWars.quote

  title_array = []
  title_array << planet  = Faker::StarWars.planet
  title_array << char    = Faker::StarWars.character
  title_array << droid   = Faker::StarWars.droid
  title_array << species = Faker::StarWars.specie
  title_array << vehicle = Faker::StarWars.vehicle


  faker_article2 = Article.create!(author_id: master.id)

  Version.create!( editor_id: master.id,
                   title: title_array[n],
                   body: quote,
                   category_id: n+1,
                   article_id: faker_article2.id,
                   published: true )

  Version.create!( editor_id: lords.sample.id,
                   title: title_array[n] + "--marked for review",
                   body: quote + " --I'm not sure of the value of such an article and have flagged it for review.",
                  category_id: n+1,
                  article_id: faker_article2.id,
                  published: true )

  Version.create!( editor_id: 1,
                   title: title_array[n] + "--Marked for Deletion",
                   body: "You lack of citations disturbs me. This is not fit for publication. You must cite more sources and be more evil. --EP",
                   category_id: n+1,
                   article_id: faker_article2.id,
                   published: true)

  master = masters.sample
  quote  = Faker::StarWars.quote

  title_array = []
  title_array << planet  = Faker::StarWars.planet
  title_array << char    = Faker::StarWars.character
  title_array << droid   = Faker::StarWars.droid
  title_array << species = Faker::StarWars.specie
  title_array << vehicle = Faker::StarWars.vehicle

  faker_article3 = Article.create!( author_id: master.id)

  Version.create!( editor_id: master.id,
                   title: title_array[n],
                   body: quote,
                   category_id: n+1,
                   article_id: faker_article3.id,
                   published: true )


  Version.create!( editor_id: lords.sample.id,
                   title: title_array[n] + "--marked for review",
                   body: quote + " --I'm not sure of the value of such an article and have flagged it for review.",
                    category_id: n+1,
                    article_id: faker_article3.id,
                    published: true )

end