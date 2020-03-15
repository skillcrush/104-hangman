module Hangman
  module Graphics
    DEAD = <<HANG
    _______
   |/      |
   |      (_)
   |      \\|/
   |       |
   |      / \\
   |
  _|___
HANG

    ALIVE = <<WIN

  (•_•)
  <)  )╯
  /   \\
WIN

    OBFUSCATION_CHAR = "👾"

    def self.clear_screen
      # `system()` allows you to run any terminal command from inside your ruby
      # code!
      #
      # `clear` => clear screen on mac and linux
      # `cls`   => clear screen in windows cmd
      # if neither is working print 100 blank lines
      system("clear") || system("cls") || puts("\n" * 100)
    end

    def self.obfuscate_word word, guessed
      obfuscated = ''

      word.chars do |char|
        if guessed.include? char
          obfuscated << " #{char} "
        else
          obfuscated << " #{OBFUSCATION_CHAR}  "
        end
      end

      obfuscated
    end
  end
end
