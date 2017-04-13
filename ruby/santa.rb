class Santa
#getter and setter shortcuts
  attr_reader :age, :ethnicity
  attr_accessor :gender, :age

#initialized new classes
  def initialize(gender, ethnicity)
    puts "Initializing Santa instance....."
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    reindeer_rankings = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end
  
  def get_mad_at(reindeer_name)
    reindeer_rankings.delete(reindeer_name)
    reindeer_rankings << reindeer_name
  end
  
  def gender=(new_gender)
    @gender = new_gender
    puts "This santa is now #{@gender} gender"
  end
  
  def celebrate_birthday
    @age += 1
    puts "This santa is now #{@age} y/o!"
  end

  def speak
    puts "Ho, ho, ho! Haaapy holidays!"
  end
  
  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}"
  end
end

genders = ["Bigendered",
"Crossdresser",
"Drag King",
"Drag Queen",
"Femme Queen",
"Female-to-Male",
"FTM",
"Gender Bender",
"Genderqueer",
"Male-to-Female",
"MTF",
"Non-Op",
"HIJRA",
"Pangender",
"Transexual/Transsexual",
"Trans Person",
"Woman",
"Man",
"Butch",
"Two-Spirit",
"Trans",
"Agender",
"Third Sex",
"Gender Fluid",
"Non-Binary Transgender",
"Androgyne",
"Gender Gifted",
"Gender Blender",
"Femme",
"Person of Transgender Experience",
"Androgynous"]


ethnicities = [
  "Afghans",
  "Albanians",
  "Algerians",
  "Americans",
  "Andorrans",
  "Angolans",
  "Argentines",
  "Armenians",
  "Aromanians",
  "Arubans",
  "Australians",
  "Austrians",
  "Azerbaijanis",
  "Bahamians",
  "Bahrainis",
  "Bangladeshis",
  "Barbadians",
  "Basotho",
  "Basques",
  "Belarusians",
  "Belgians",
  "Belizeans",
  "Bermudians",
  "Boers",
  "Bosniaks",
  "Brazilians",
  "Bretons",
  "British",
  "British Virgin Islanders",
  "Bruneians",
  "Bulgarians",
  "Macedonian Bulgarians",
  "Burkinabès",
  "Burundians",
  "Cambodians",
  "Cameroonians",
  "Canadians",
  "Catalans",
  "Cape Verdeans",
  "Chadians",
  "Chileans",
  "Chinese",
  "Colombians",
  "Comorians",
  "Congolese",
  "Croatians",
  "Cubans",
  "Cypriots",
  "Turkish Cypriots",
  "Czechs",
  "Danes",
  "Dominicans (Republic)",
  "Dominicans (Commonwealth)",
  "Dutch",
  "East Timorese",
  "Ecuadorians",
  "Egyptians",
  "Emiratis",
  "English",
  "Eritreans",
  "Estonians",
  "Ethiopians",
  "Falkland Islanders",
  "Faroese",
  "Finns",
  "Finnish Swedish",
  "Fijians",
  "Filipinos",
  "French citizens",
  "Georgians",
  "Germans",
  "Baltic Germans",
  "Ghanaians",
  "Gibraltar",
  "Greeks",
  "Greek Macedonians",
  "Grenadians",
  "Guatemalans",
  "Guianese (French)",
  "Guineans",
  "Guinea-Bissau nationals",
  "Guyanese",
  "Haitians",
  "Hondurans",
  "Hong Kong",
  "Hungarians",
  "Icelanders",
  "I-Kiribati",
  "Indians",
  "Indonesians",
  "Iranians",
  "Iraqis",
  "Irish",
  "Israelis",
  "Italians",
  "Ivoirians",
  "Jamaicans",
  "Japanese",
  "Jordanians",
  "Kazakhs",
  "Kenyans",
  "Koreans",
  "Kosovars",
  "Kurds",
  "Kuwaitis",
  "Kyrgyzs",
  "Lao",
  "Latvians",
  "Lebanese",
  "Liberians",
  "Libyans",
  "Liechtensteiners",
  "Lithuanians",
  "Luxembourgers",
  "Macao",
  "Macedonians",
  "Malagasy",
  "Malaysians",
  "Malawians",
  "Maldivians",
  "Malians",
  "Maltese",
  "Manx",
  "Mauritians",
  "Mexicans",
  "Moldovans",
  "Moroccans",
  "Mongolians",
  "Montenegrins",
  "Namibians",
  "Nepalese",
  "New Zealanders",
  "Nicaraguans",
  "Nigeriens",
  "Nigerians",
  "Norwegians",
  "Pakistanis",
  "Palauans",
  "Palestinians",
  "Panamanians",
  "Papua New Guineans",
  "Paraguayans",
  "Peruvians",
  "Poles",
  "Portuguese",
  "Puerto Ricans",
  "Quebecers",
  "Réunionnais",
  "Romanians",
  "Russians",
  "Baltic Russians",
  "Rwandans",
  "Salvadorans",
  "São Tomé and Príncipe",
  "Saudis",
  "Scots",
  "Senegalese",
  "Serbs",
  "Sierra Leoneans",
  "Singaporeans",
  "Sindhian",
  "Slovaks",
  "Slovenes",
  "Somalis",
  "Somalilanders",
  "South Africans",
  "Spaniards",
  "Sri Lankans",
  "St Lucians",
  "Sudanese",
  "Surinamese",
  "Swedes",
  "Swiss",
  "Syriacs",
  "Syrians",
  "Tajik",
  "Taiwanese",
  "Tanzanians",
  "Thais",
  "Tibetans",
  "Tobagonians",
  "Trinidadians",
  "Tunisians",
  "Turks",
  "Tuvaluans",
  "Ugandans",
  "Ukrainians",
  "Uruguayans",
  "Uzbeks",
  "Vanuatuans",
  "Venezuelans",
  "Vietnamese",
  "Welsh",
  "Yemenis",
  "Zambians",
  "Zimbabweans"
]

puts "How many santas would you like to create"
santa_amount = gets.chomp.to_i
santa_id = 1
 santa_amount.times do 
   santa = Santa.new(genders.sample, ethnicities.sample)
   puts "Age: #{santa.age}"
   puts "Gender: #{santa.gender}"
   puts "Ethnicity: #{santa.ethnicity}"
   puts "Santa ID: #{santa_id}"
  santa_id += 1
end
