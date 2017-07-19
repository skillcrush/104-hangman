module Hangman
  module Dictionary
    WORDS = %w{
      banana avocado apple chocolate froyo peanut
    }

    def self.random
      WORDS.sample
    end
  end
end
