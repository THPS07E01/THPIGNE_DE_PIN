require 'faker'
require 'colorize'

puts `clear`
i = 0
30.times do |pyra|
	i += 1
	puts "#" * i
	sleep(0.05)
end
puts "Tu as demandé une pyramide de 30 étages c'est ça?"
sleep(2)
puts "Oups trompé d'exo !"
sleep(2)


puts `clear`
puts "                                          ##############################################################################"
puts "                                          ######## ~ L'ancienne base de donnée va être supprimée, KEEP CALM ! ~ ########"
puts ""
puts "                                          ------------------------------------------------------------------------------"

#Permet de supprimer l'ancienne base de données en remettant le compteur d'id à partir de 1.
Pin.destroy_all
Comment.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'users'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'pins'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'comments'")
puts `clear`


puts "                                          ##############################################################################"
puts "                                          ############## ~ Construction de la nouvelle base de donnée ! ~ ##############"
puts ""
puts "                                          ------------------------------------------------------------------------------"

puts ""
puts ""

# Permet de créer 30 utilisateurs avec un nom et un email
30.times do |use|
	i += 1
	user = User.create!(name: Faker::Simpsons.character, email: Faker::Internet.email)
	print "."
	sleep(0.05)
	print "\u{1F490}"	
end
puts ""
puts ""
sleep(1)
puts "De jolies fleurs pour les correcteurs \u{1F493} "
sleep(2)

puts `clear`
puts "                                          ##############################################################################"
puts "                                          ############## ~ Construction de la nouvelle base de donnée ! ~ ##############"
puts ""
puts "                                          ------------------------------------------------------------------------------"
puts ""
puts ""
joke = ["Arrêtez de vous battez.", "Je suis quelqu'un que j'aime beaucoup rigoler.", "Je me sens énormément très bien avec ces joueurs.", "On dirait que c'était comme si y avait rien changé hier.", "Le touquet, c'est toujours une ville que j'aime bien venir.", "J'espère que la routourne va vite tourner.", "Je pense qu'on espère qu'on va gagner.", "On sait qu'on va tomber face à une équipe qui va être regroupé je pense qui va jouer tous derrière.", "Je suis passé par d'autres chemins aussi qu'à pas été facile.", "J'ai revenu en coupe du monde j'avais beaucoup d'envie.", "J'ai qu'ça qu'à dire.", "J'ai couru jusqu'à ce que je pouvais.", "On a dur, franchement on a dur.", "Maintenant, faudra faire avec sans Zizou.", "Chaque année je vieillis d'un an.", "Y'en a z'ont eu peur, y en a y z'ont rigolé."]
puts "Pour te faire patienter voici une sélection des meilleurs phrases de Ribery \u{1F383}"
puts ""

#Permet de créer 50 pins avec un url et un title, les pins seront rattachés à des utilisateurs avec le user_id.
50.times do |pi|
	pin = Pin.create!(user_id: rand(1..30), url: Faker::Internet.url, title: Faker::HarryPotter.location)
	if pi %5 == 0
	puts joke.sample
	sleep(0.5)
else
	sleep(0.5)
 end
end

puts `clear`
puts "                                          ##############################################################################"
puts "                                          ############## ~ Construction de la nouvelle base de donnée ! ~ ##############"
puts ""
puts "                                          ------------------------------------------------------------------------------"
puts ""
puts ""

puts "Quel saison tu préfères? 1: Printemps 2: été 3: Automne 4: Hiver"
sleep(4)
puts "Dommage ça sera moi qui choisi l'affichage !"
sleep(2)
puts " "

# Permet de créer 75 commentaires. Ils sont rattachés à un pin et à un utilisateur.  
75.times do |comm|
	comment = Comment.create!(user_id: rand(1..30), pin_id: rand(1..50), body: Faker::Hobbit.quote )
	print ' '
	print "\u{1F363}"
end
puts `clear`
puts "                                          ##############################################################################"
puts "                                          ######################## ~ Merci pour ta patience ! ~ ########################"
puts "                                                                           Des bisous"
puts "                                          ------------------------------------------------------------------------------"
sleep(2)

puts `clear`
puts "                                                     D'OH !"
puts "                                                            -Homer Simpson"


puts ""
puts ""
puts ""
puts "                                                                 .:----:-`              "  
sleep(0.05)                              
puts "                                                              .-+/-::/+:-s-:-           "   
sleep(0.05)                             
puts "                                                           .::-.------:+/s- ./          "    
sleep(0.05)                            
puts "                                                          /-.----------:/y//-o          "   
sleep(0.05)                             
puts "                                                         +.-------------://:+s          "    
sleep(0.05)                            
puts "                                                        /---------------:////+.         "   
sleep(0.05)                             
puts "                                                      `-/.--------------://////          "    
sleep(0.05)                           
puts "                                                      o-----------------:///:+.          "  
sleep(0.05)                             
puts "                                                     -+:---:+///:--::/-:////:o           "    
sleep(0.05)                           
puts "                                                    /:::::::y/:::::::/s:///:+-           "   
sleep(0.05)                            
puts "                                                    +  .o `:/````:+./+y/+s/:o            "   
sleep(0.05)                            
puts "                                                    /:::::-/+    `. ..s+sy:ss`           "    
sleep(0.05)                           
puts "                                                     s------:/-`  `.:++s/ys:+            "     
sleep(0.05)                          
puts "                                                     +o////////////:////+os`/            "      
sleep(0.05)                         
puts "                                   ..`              /:::////:://++/--///os+o             "      
sleep(0.05)                         
puts "                                ./yosy/            /:------------:os++///o/+             "      
sleep(0.05)                         
puts "                               /syydyhy+-         .+---------------:+oo+o+-`             "         
sleep(0.05)                      
puts "                            `.:yyhyysyhsy`        +:----------::----:/s/+-               "         
sleep(0.05)                      
puts "                            +:-:yhhyoshhho.       `-////+//+++oo/---//s/o.                "        
sleep(0.05)                      
puts "                            +-/yhyhyyyhdss-            `o+/::-----:/so//+.                 "           
sleep(0.05)                  
puts "                            -+:///yyhyysyy.              `y+/:::://oo///+-                 "             
sleep(0.05)                
puts "                            .+::::/hysso++`           `..-o//++o+++//////s:`               "             
sleep(0.05)                
puts "                            /:--:/y//:::o`           `/+.+:-://::::::::::-`/               "            
sleep(0.05)                 
puts "                            o-:+/+s/o--:o         ``.+-.+o-/:`/     .......+                "            
sleep(0.05)                
puts "                            -/------o-:/+   `.---...s/+``+:.  --    `----:/s`                "        
sleep(0.05)                   
puts "                             ./--------:/+`/oo.    `:+         /:::::::/+/:/--:-`            "        
sleep(0.05)                   
puts "                              .+--------:/+/::+/  `-+            `...-/-  ......::`           "       
sleep(0.05)                   
puts "                               o---------:----:/+.-+              ...o`    .......:-          "       
sleep(0.05)                   
puts "                               ::--------------:o:+`              `.::      .......--         "    
sleep(0.05)                      
puts "                                o-------------://h-                .o       `......./`        "       
sleep(0.05)                   
puts "                                `+-----------:///o                 .+`   `-::/++++/o+/        "    
sleep(0.05)                      
puts "                                  //-----::/:/++:`                 .:::o//---://////+         "    
sleep(0.05)                      
puts "                                    -::::::-:+-                   `..:/s------:////:o         "     
sleep(0.05)                     
puts "                                           -:                      `...+:-----:////:s         "                          


