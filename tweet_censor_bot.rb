banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]

puts "Please enter a tweet."
tweet = gets.chomp.downcase.strip

i = 0
while i < banned_phrases.size
    if tweet.include?(banned_phrases[i]) == true
        tweet.gsub!((banned_phrases[i]), "CENSORED")
    end
i += 1
end

puts "Your tweet violates our terms of service. 
Therefore, we have filtered your tweet to read: '#{tweet}'"