require "application_system_test_case"

class ZombiesTest < ApplicationSystemTestCase
  setup do
    @zombie = zombies(:one)
  end

  test "visiting the index" do
    visit zombies_url
    assert_selector "h1", text: "Zombies"
  end

  test "creating a Zombie" do
    visit zombies_url
    click_on "New Zombie"

    check "Brain" if @zombie.brain
    fill_in "Kills", with: @zombie.kills
    fill_in "Weapon", with: @zombie.weapon
    click_on "Create Zombie"

    assert_text "Zombie was successfully created"
    click_on "Back"
  end

  test "updating a Zombie" do
    visit zombies_url
    click_on "Edit", match: :first

    check "Brain" if @zombie.brain
    fill_in "Kills", with: @zombie.kills
    fill_in "Weapon", with: @zombie.weapon
    click_on "Update Zombie"

    assert_text "Zombie was successfully updated"
    click_on "Back"
  end

  test "destroying a Zombie" do
    visit zombies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Zombie was successfully destroyed"
  end
end
