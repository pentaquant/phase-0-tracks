



class Santa
  attr_reader :age 
  attr_accessor :gender, :ethnicity
  
  def initialize(gender, ethnicity)
    puts "Initializing new Santa instance."
    @gender = gender
    @ethnicity = ethnicity  
    @age = rand(1..140)
  end

  def speak
    puts "Ho ho ho happy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}"
  end

  def celebrate_birthday
    @age += 1
  end

  def reindeer_ranking
    @reindeer_ranking
    reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

  def get_mad_at(bad_reindeer)
    reindeer_ranking.delete(bad_reindeer)
    reindeer_ranking.push(bad_reindeer)
    p reindeer_ranking
  end

  def about
    puts "_----_----_----_----_----_"
    puts "Gender: #{@gender}"
    puts "Ethnicity: #{@ethnicity}"
    puts "Age #{@age}"
    puts "Santa Count #{santa_count}"
  end


#For preactice, it would be smart to refactor this part of the code.
end

genders = ["Bigendered","Crossdresser","Drag King","Drag Queen","Femme Queen","Female-to-Male","FTM","Gender Bender","Genderqueer","Male-to-Female","MTF","Non-Op","HIJRA","Pangender","Transexual/Transsexual","Trans Person","Woman","Man","Butch","Two-Spirit","Trans","Agender","Third Sex","Gender Fluid","Non-Binary Transgender","Androgyne","Gender Gifted","Gender Blender","Femme","Person of Transgender Experience","Androgynous"]
ethnicities = ["Afghans","Albanians","Algerians","Americans","Andorrans","Angolans","Argentines","Armenians","Aromanians","Arubans","Australians","Austrians","Azerbaijanis","Bahamians","Bahrainis","Bangladeshis","Barbadians","Basotho","Basques","Belarusians","Belgians","Belizeans","Bermudians","Boers","Bosniaks","Brazilians","Bretons","British","British Virgin Islanders","Bruneians","Bulgarians","Macedonian Bulgarians","Burkinabès","Burundians","Cambodians","Cameroonians","Canadians","Catalans","Cape Verdeans","Chadians","Chileans","Chinese","Colombians","Comorians","Congolese","Croatians","Cubans","Cypriots","Turkish Cypriots","Czechs","Danes","Dominicans (Republic)","Dominicans (Commonwealth)","Dutch","East Timorese","Ecuadorians","Egyptians","Emiratis","English","Eritreans","Estonians","Ethiopians","Falkland Islanders","Faroese","Finns","Finnish Swedish","Fijians","Filipinos","French citizens","Georgians","Germans","Baltic Germans","Ghanaians","Gibraltar","Greeks","Greek Macedonians","Grenadians","Guatemalans","Guianese (French)","Guineans","Guinea-Bissau nationals","Guyanese","Haitians","Hondurans","Hong Kong","Hungarians","Icelanders","I-Kiribati","Indians","Indonesians","Iranians","Iraqis","Irish","Israelis","Italians","Ivoirians","Jamaicans","Japanese","Jordanians","Kazakhs","Kenyans","Koreans","Kosovars","Kurds","Kuwaitis","Kyrgyzs","Lao","Latvians","Lebanese","Liberians","Libyans","Liechtensteiners","Lithuanians","Luxembourgers","Macao","Macedonians","Malagasy","Malaysians","Malawians","Maldivians","Malians","Maltese","Manx","Mauritians","Mexicans","Moldovans","Moroccans","Mongolians","Montenegrins","Namibians","Nepalese","New Zealanders","Nicaraguans","Nigerians","Norwegians","Pakistanis","Palauans","Palestinians","Panamanians","Papua New Guineans","Paraguayans","Peruvians","Poles","Portuguese","Puerto Ricans","Quebecers","Réunionnais","Romanians","Russians","Baltic Russians","Rwandans","Salvadorans","São Tomé and Príncipe","Saudis","Scots","Senegalese","Serbs","Sierra Leoneans","Singaporeans","Sindhian","Slovaks","Slovenes","Somalis","Somalilanders","South Africans","Spaniards","Sri Lankans","St Lucians","Sudanese","Surinamese","Swedes","Swiss","Syriacs","Syrians","Tajik","Taiwanese","Tanzanians","Thais","Tibetans","Tobagonians","Trinidadians","Tunisians","Turks","Tuvaluans","Ugandans","Ukrainians","Uruguayans","Uzbeks","Vanuatuans","Venezuelans","Vietnamese","Welsh","Yemenis","Zambians","Zimbabweans"]
santas = []

puts "How many instances of Santa would you like to create?"
santa_in = gets.chomp.to_i
santa_count = 1
santa_in.times do
  new_santa = Santa.new(genders.sample, ethnicities.sample)
  santas << new_santa
    puts "------------------------------------------|"
    puts "Gender: #{new_santa.gender}"
    puts "Ethnicity: #{new_santa.ethnicity}"
    puts "Age #{new_santa.age}"
    puts "Santa Count #{santa_count}"
  santa_count += 1
end


#### OLD Code ________________
# p santas
# yoyo.about
  # 10.times do |i|
  # santas  << Santa.new(genders[i], ethnicities[i]).about
  # end
# Santa.new.speak
# Santa.new.eat_milk_and_cookies("Snicker")

# #getter
# def name
#   @name
# end

# #setter
# def location=(new_location)
#   @name = new_name 
# end