def dictionary
  dictionary = {
    "hello" => 'hi',
    "to, two, too" => '2',
    "for, four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"}
end

def word_substituter(str)
  twt = str.split

  twt.each do |word|
    dictionary.each do |k, v|
      if word == k
        word.replace(v)
      elsif "to" == word.downcase ||"two" == word.downcase ||"too" == word.downcase
        word.replace("2")
      elsif word.downcase == "four" || word.downcase == "for"
        word.replace("4")
      end
    end
  end
  twt.join(" ")
end

def bulk_tweet_shortener(twt)
  twt.each { |i| puts word_substituter(i)}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
   tweet[0...140]
  else
    tweet
  end

end
