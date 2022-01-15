require "test_helper"

class InvestorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @investor = investors(:one)
  end

  test "should get index" do
    get investors_url
    assert_response :success
  end

  test "should get new" do
    get new_investor_url
    assert_response :success
  end

  test "should create investor" do
    assert_difference("Investor.count") do
      post investors_url, params: {
        investor: {
          dob: @investor.dob,
          first_name: @investor.first_name,
          last_name: @investor.last_name,
          phone_number: @investor.phone_number,
          state: @investor.state,
          street_address: @investor.street_address,
          zip_code: @investor.zip_code,
          email: "three@example.com",
        }
      }
    end

    assert_redirected_to investor_url(Investor.last)
  end

  test "should show investor" do
    get investor_url(@investor)
    assert_response :success
  end

  test "should get edit" do
    get edit_investor_url(@investor)
    assert_response :success
  end

  test "should update investor" do
    new_email = "unique@example.com"

    patch investor_url(@investor), params: {
      investor: {
        dob: @investor.dob,
        first_name: @investor.first_name,
        last_name: @investor.last_name,
        phone_number: @investor.phone_number,
        state: @investor.state,
        street_address: @investor.street_address,
        zip_code: @investor.zip_code,
        email: new_email,
      }
    }

    assert_redirected_to investor_url(@investor)
    assert_equal(@investor.reload.email, new_email)
  end

  test "should destroy investor" do
    assert_difference("Investor.count", -1) do
      delete investor_url(@investor)
    end

    assert_redirected_to investors_url
  end
end
