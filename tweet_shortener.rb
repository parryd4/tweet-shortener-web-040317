# Write your code here.
def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "four" => "4",
    "for" => "4",
    "For" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  broken_up = tweet.split(' ')
  count = 0
  return_string = ""
  while count < broken_up.size
    dictionary.each do |key, value|
      if broken_up[count] == key
        broken_up[count] = value
      end
    end
    if count != 0
      return_string +=" "
    end
    return_string += "#{broken_up[count]}"
    count += 1
  end
  return_string
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    "#{word_substituter(tweet)[0..135]}...}"
  else
    tweet
  end
end
