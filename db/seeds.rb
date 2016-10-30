require 'faker'

Deck.delete_all
Round.delete_all
Card.delete_all
Guess.delete_all



Deck.create( { name: "Waleetas Trivia Questions",
							 cards: [	Card.new(question:"What is the opposite of nocturnal?", answer: "diurnal"),
												Card.new(question:"What do the towns people in the movie Tremors call the monsters?", answer: "Graboids"),
												Card.new(question:"What year were women in the US legally granted the right to vote?", answer: "1920"),
												Card.new(question:"What was the original name of the Department of Defense?", answer: "Department of War"),
												Card.new(question:"What city was Duke Ellington born in?", answer: "Washington D.C.")
											 ]
						} )

Deck.create({ name: "World Capitals",
							cards: [Card.new(question: "Canada", answer: "Ottawa"),
											Card.new(question: "Austria", answer: "Vienna"),
											Card.new(question: "Turkey", answer: "Ankara"),
											Card.new(question: "Ethiopia", answer: "Addis Ababa"),
											Card.new(question: "Nepal", answer: "Kathmandu"),
											Card.new(question: "Estonia", answer: "Tallinn"),
											Card.new(question: "Vietnam", answer: "Hanoi"),
											Card.new(question: "Honduras", answer: "Tegucigalpa")]
						} )

Deck.create({ name: "Hipster Gibberish Challenge!",
							cards: [	Card.new(question: "#{Faker::Hipster.sentence.chop}?", answer: Faker::Hipster.word),
												Card.new(question: "#{Faker::Hipster.sentence.chop}?", answer: Faker::Hipster.word),
												Card.new(question: "#{Faker::Hipster.sentence.chop}?", answer: Faker::Hipster.word),
												Card.new(question: "#{Faker::Hipster.sentence.chop}?", answer: Faker::Hipster.word),
												Card.new(question: "#{Faker::Hipster.sentence.chop}?", answer: Faker::Hipster.word),
												Card.new(question: "#{Faker::Hipster.sentence.chop}?", answer: Faker::Hipster.word),
												Card.new(question: "#{Faker::Hipster.sentence.chop}?", answer: Faker::Hipster.word),
												Card.new(question: "#{Faker::Hipster.sentence.chop}?", answer: Faker::Hipster.word),
												Card.new(question: "#{Faker::Hipster.sentence.chop}?", answer: Faker::Hipster.word)
							]
	})
