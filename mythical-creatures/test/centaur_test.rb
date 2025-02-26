gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/centaur'


class CentaurTest < Minitest::Test
  def test_it_has_a_name
    centaur = Centaur.new("George","Palomino")
    assert_equal "George", centaur.name
  end

  def test_it_has_a_horse_breed

    centaur = Centaur.new("George","Palomino")
    assert_equal "Palomino", centaur.breed
  end

  def test_it_has_excellent_bow_skills

    centaur = Centaur.new("George","Palomino")
    assert_equal "Twang!!!", centaur.shoot
  end

  def test_it_makes_a_horse_sound_when_it_runs

    centaur = Centaur.new("George","Palomino")
    assert_equal "Clop clop clop clop!!!", centaur.run
  end

  def test_when_first_created_it_is_not_cranky

    centaur = Centaur.new("George","Palomino")
    refute centaur.cranky?
  end

  def test_when_first_created_it_is_standing_up

    centaur = Centaur.new("George","Palomino")
    assert centaur.standing?
  end

  def test_after_running_or_shooting_a_bow_three_times_it_gets_cranky

    centaur = Centaur.new("George","Palomino")
    refute centaur.cranky?
    centaur.shoot
    centaur.run
    centaur.shoot
    assert centaur.cranky?
  end

  def test_when_cranky_it_will_not_shoot_a_bow

    centaur = Centaur.new("George","Palomino")
    3.times { centaur.shoot }
    assert_equal "NO!", centaur.shoot
  end

  def test_when_cranky_it_will_not_run

    centaur = Centaur.new("George","Palomino")
    3.times { centaur.shoot }
    assert_equal "NO!", centaur.run
  end

  def test_when_standing_it_will_not_sleep

    centaur = Centaur.new("George","Palomino")
    assert_equal "NO!", centaur.sleep
  end

  def test_after_laying_down_it_is_not_standing

    centaur = Centaur.new("George","Palomino")
    centaur.lay_down
    refute centaur.standing?
    assert centaur.laying?
  end

  def test_it_can_sleep_when_laying_down

    centaur = Centaur.new("George","Palomino")
    centaur.lay_down
    refute_equal "NO!", centaur.sleep
  end

  def test_when_laying_down_it_cannot_shoot_a_bow

    centaur = Centaur.new("George","Palomino")
    centaur.lay_down
    assert_equal "NO!", centaur.shoot
  end

  def test_when_laying_down_it_cannot_run

    centaur = Centaur.new("George","Palomino")
    centaur.lay_down
    assert_equal "NO!", centaur.run
  end

  def test_it_can_stand_up

    centaur = Centaur.new("George","Palomino")
    centaur.lay_down
    centaur.stand_up
    assert centaur.standing?
  end

  def test_after_sleeping_it_is_no_longer_cranky

    centaur = Centaur.new("George","Palomino")

    centaur.shoot
    centaur.run
    centaur.shoot

    assert centaur.cranky?

    centaur.lay_down
    centaur.sleep

    refute centaur.cranky?

    centaur.stand_up

    assert_equal "Twang!!!", centaur.shoot
    assert_equal "Clop clop clop clop!!!", centaur.run
  end

  def test_becomes_rested_after_drinking_a_potion

    centaur = Centaur.new("George","Palomino")

    centaur.shoot
    centaur.run
    centaur.shoot

    refute centaur.rested?

    centaur.drink_potion

    assert centaur.rested?

  end


  def test_can_only_drink_potion_while_standing
    

    centaur = Centaur.new("George", "Palomino")

    centaur.shoot
    centaur.run
    centaur.shoot

    refute centaur.rested?

    centaur.drink_potion

    assert centaur.rested?

  end

  end

  def test_gets_sick_if_drinks_potion_while_rested


    centaur = Centaur.new("George", "Palomino")

    assert centaur.rested?

    centaur.drink_potion

    assert centaur.sick?

  end
