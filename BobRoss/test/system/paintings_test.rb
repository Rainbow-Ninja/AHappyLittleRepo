require "application_system_test_case"

class PaintingsTest < ApplicationSystemTestCase
  setup do
    @painting = paintings(:one)
  end

  test "visiting the index" do
    visit paintings_url
    assert_selector "h1", text: "Paintings"
  end

  test "creating a Painting" do
    visit paintings_url
    click_on "New Painting"

    check "Animalguest" if @painting.animalguest
    check "Cabin" if @painting.cabin
    check "Guest" if @painting.guest
    fill_in "Likes", with: @painting.likes
    fill_in "Picture", with: @painting.picture
    fill_in "Profile", with: @painting.profile_id
    check "River" if @painting.river
    fill_in "Shape", with: @painting.shape
    fill_in "Startcolour", with: @painting.startcolour
    check "Trees" if @painting.trees
    check "Waterfall" if @painting.waterfall
    click_on "Create Painting"

    assert_text "Painting was successfully created"
    click_on "Back"
  end

  test "updating a Painting" do
    visit paintings_url
    click_on "Edit", match: :first

    check "Animalguest" if @painting.animalguest
    check "Cabin" if @painting.cabin
    check "Guest" if @painting.guest
    fill_in "Likes", with: @painting.likes
    fill_in "Picture", with: @painting.picture
    fill_in "Profile", with: @painting.profile_id
    check "River" if @painting.river
    fill_in "Shape", with: @painting.shape
    fill_in "Startcolour", with: @painting.startcolour
    check "Trees" if @painting.trees
    check "Waterfall" if @painting.waterfall
    click_on "Update Painting"

    assert_text "Painting was successfully updated"
    click_on "Back"
  end

  test "destroying a Painting" do
    visit paintings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Painting was successfully destroyed"
  end
end
