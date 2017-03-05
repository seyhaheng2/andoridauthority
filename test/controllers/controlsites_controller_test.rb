require 'test_helper'

class ControlsitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @controlsite = controlsites(:one)
  end

  test "should get index" do
    get controlsites_url
    assert_response :success
  end

  test "should get new" do
    get new_controlsite_url
    assert_response :success
  end

  test "should create controlsite" do
    assert_difference('Controlsite.count') do
      post controlsites_url, params: { controlsite: { ads1: @controlsite.ads1, ads2: @controlsite.ads2, ads3: @controlsite.ads3, ads4: @controlsite.ads4, facebook: @controlsite.facebook, google: @controlsite.google, logo: @controlsite.logo, pinterest: @controlsite.pinterest, plus: @controlsite.plus, post_id: @controlsite.post_id, twitter: @controlsite.twitter, youtube: @controlsite.youtube } }
    end

    assert_redirected_to controlsite_url(Controlsite.last)
  end

  test "should show controlsite" do
    get controlsite_url(@controlsite)
    assert_response :success
  end

  test "should get edit" do
    get edit_controlsite_url(@controlsite)
    assert_response :success
  end

  test "should update controlsite" do
    patch controlsite_url(@controlsite), params: { controlsite: { ads1: @controlsite.ads1, ads2: @controlsite.ads2, ads3: @controlsite.ads3, ads4: @controlsite.ads4, facebook: @controlsite.facebook, google: @controlsite.google, logo: @controlsite.logo, pinterest: @controlsite.pinterest, plus: @controlsite.plus, post_id: @controlsite.post_id, twitter: @controlsite.twitter, youtube: @controlsite.youtube } }
    assert_redirected_to controlsite_url(@controlsite)
  end

  test "should destroy controlsite" do
    assert_difference('Controlsite.count', -1) do
      delete controlsite_url(@controlsite)
    end

    assert_redirected_to controlsites_url
  end
end
