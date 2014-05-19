# seed user login called username: admin password: password

User.create(username:"admin",
                  password:"password")

# seed ruby terminology deck

ruby_deck =  Deck.create(title: "Ruby Terminology", user_id: 1)

flashcard_array = []
File.open("db/ruby_terminology.txt").readlines.each do |line|
    flashcard_array.push(line)
end

flashcard_array.map do |line|
    line.gsub!(/\n/, '')
end

flashcard_array.reject! {|line| line.empty?}

until flashcard_array.empty?
    answer = flashcard_array.pop
    question = flashcard_array.pop
    ruby_deck.cards << Card.create(question: question,
                                                      answer: answer)
end



