Deck.delete_all
Round.delete_all
Card.delete_all
Guess.delete_all


deck = Deck.create(name: "Waleetas Trivia Questions")
card1 = Card.create(question:"What is the opposite of nocturnal?",answer:"diurnal",deck_id:deck.id)
card2 = Card.create(question:"What do the towns people in the movie Tremors call the monsters?",answer:"Graboids",deck_id:deck.id)
card3 = Card.create(question:"What year were women in the US legally granted the right to vote?",answer:"1920",deck_id:deck.id)
card4 = Card.create(question:"What was the original name of the Department of Defense?",answer:"Department of War",deck_id:deck.id)
card5 = Card.create(question:"What city was Duke Ellington born in?",answer:"Washington D.C.",deck_id:deck.id)
round = Round.create(deck_id: deck.id)
