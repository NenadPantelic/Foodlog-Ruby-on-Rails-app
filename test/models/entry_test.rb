require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  test "is valid with valid attributes" do
    entry =  Entry.new(meal_type: "Breakfast", calories: 450, proteins: 40, carbohydrates: 30, fats: 20)
    assert entry.save
  end
  # not necessary
  test "should not save entry without meal_types" do
    entry = Entry.new(calories:40, proteins: 40, carbohydrates: 30, fats: 20)
    assert_not entry.save
  end

  test "should not save entry without calories" do
    entry = Entry.new(meal_type: "Breakfast", proteins: 40, carbohydrates: 30, fats: 20)
    assert_not entry.save
  end

  test "should not save entry without proteins" do
    entry = Entry.new(meal_type: "Breakfast", calories: 40, carbohydrates: 30, fats: 20)
    assert_not entry.save
  end

  test "should not save entry without carbs" do
    entry = Entry.new(meal_type: "Breakfast", calories: 40, proteins: 30, fats: 20)
    assert_not entry.save
  end

  test "should not save entry without fats" do
    entry = Entry.new(meal_type: "Breakfast", calories: 40, proteins: 30, carbohydrates: 30)
    assert_not entry.save
  end
end
