gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class FindPatternTest < Minitest::Test

  def test_find_first_seven_letter_word
    words = ["capricious", "berry", "unicorn", "bag", "apple", "festering", "pretzel", "pencil"]
    found = nil
    words.each do |word|
      if word.length == 7
        found = word
        break
      end
    end
    assert_equal "unicorn", found
  end

  def test_no_waldo
    words = ["scarf", "sandcastle", "flag", "pretzel", "crow", "key"]
    found = nil
    words.each do |word|
      if word != "waldo"
        found = nil
      else
        found = word
      end
    end
    assert_nil found
  end

  def test_find_waldo

    words = ["noise", "dog", "fair", "house", "waldo", "bucket", "fish"]
    found = nil
      words.each do |word|
        if word == "waldo"
          found = word
        end
      end
    assert_equal "waldo", found
  end

  def test_cannot_find_3_letter_words

    words = ["piglet", "porridge", "bear", "blueberry"]
    found = nil
    words.each do |word|
      found << word if word.length == 3
    end
    assert_nil found
  end

  def test_find_13
    numbers = [2, 13, 19, 8, 3, 27]
    found = 0
    numbers.each do |number|
      found = number if number == 13
      end
    assert_equal 13, found
  end

  def test_find_first_even_number
    numbers = [3, 7, 13, 11, 10, 2, 17]
    found = 0
    numbers.each do |number|
      return found = number if number.even?
    end

    assert_equal 10, found
  end

  def test_find_first_multiple_of_3

    numbers = [2, 8, 9, 27, 24, 5]
    found = 0
    numbers.each do |number|
      return found = number if number % 3 == 0
    end
    assert_equal 9, found
  end

  def test_find_first_word_starting_with_q
    words = ["weirdo", "quill", "fast", "quaint", "quitter", "koala"]
    found = ""
    words.each do |word|
      return found = word if word[0] == "q"
    end
    assert_equal "quill", found
  end

  def test_find_first_word_ending_with_er

    words = ["biggest", "pour", "blight", "finger", "pie", "border"]
    found = ""
    words.each do |word|
      return found = word if word[-2, 2] == "er"
    end
    assert_equal "finger", found
  end

  def test_find_first_number_greater_than_20

    numbers = [1, 8, 19, 21, 29, 31, 34]
    found = 0
    numbers.each do |number|
      return found = number if number > 20
    end
    assert_equal 21, found
  end

end
