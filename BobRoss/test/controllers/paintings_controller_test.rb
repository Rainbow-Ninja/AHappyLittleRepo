require 'test_helper'

class PaintingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @painting = paintings(:one)
  end

  test "should get index" do
    get paintings_url
    assert_response :success
  end

  test "should get new" do
    get new_painting_url
    assert_response :success
  end

  test "should create painting" do
    assert_difference('Painting.count') do
      post paintings_url, params: { painting: { animalguest: @painting.animalguest, cabin: @painting.cabin, guest: @painting.guest, likes: @painting.likes, picture: @painting.picture, profile_id: @painting.profile_id, river: @painting.river, shape: @painting.shape, startcolour: @painting.startcolour, trees: @painting.trees, waterfall: @painting.waterfall } }
    end

    assert_redirected_to painting_url(Painting.last)
  end

  test "should show painting" do
    get painting_url(@painting)
    assert_response :success
  end

  test "should get edit" do
    get edit_painting_url(@painting)
    assert_response :success
  end

  test "should update painting" do
    patch painting_url(@painting), params: { painting: { animalguest: @painting.animalguest, cabin: @painting.cabin, guest: @painting.guest, likes: @painting.likes, picture: @painting.picture, profile_id: @painting.profile_id, river: @painting.river, shape: @painting.shape, startcolour: @painting.startcolour, trees: @painting.trees, waterfall: @painting.waterfall } }
    assert_redirected_to painting_url(@painting)
  end

  test "should destroy painting" do
    assert_difference('Painting.count', -1) do
      delete painting_url(@painting)
    end

    assert_redirected_to paintings_url
  end
end
