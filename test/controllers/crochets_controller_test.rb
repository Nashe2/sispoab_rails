require "test_helper"

class CrochetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crochet = crochets(:one)
  end

  test "should get index" do
    get crochets_url
    assert_response :success
  end

  test "should get new" do
    get new_crochet_url
    assert_response :success
  end

  test "should create crochet" do
    assert_difference("Crochet.count") do
      post crochets_url, params: { crochet: { ending_price: @crochet.ending_price, sale: @crochet.sale } }
    end

    assert_redirected_to crochet_url(Crochet.last)
  end

  test "should show crochet" do
    get crochet_url(@crochet)
    assert_response :success
  end

  test "should get edit" do
    get edit_crochet_url(@crochet)
    assert_response :success
  end

  test "should update crochet" do
    patch crochet_url(@crochet), params: { crochet: { ending_price: @crochet.ending_price, sale: @crochet.sale } }
    assert_redirected_to crochet_url(@crochet)
  end

  test "should destroy crochet" do
    assert_difference("Crochet.count", -1) do
      delete crochet_url(@crochet)
    end

    assert_redirected_to crochets_url
  end
end
