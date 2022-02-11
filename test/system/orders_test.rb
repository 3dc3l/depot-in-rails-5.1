require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  test "check routing number" do

    visit store_index_url

    first(".catalog li").click_on 'Add to Cart'

    click_on 'Checkout'

    fill_in "order_name",	    with: "Edcel" 
    fill_in "order_address",	with: "Makati" 
    fill_in "order_email",	  with: "testemail@gmail.com" 

    assert_no_selector "#order_routing_number"

    select "Check", from: 'pay_type'

    assert_selector "#order_routing_number"

    fill_in "order_routing_number",	with: 23232
    fill_in "order_account_number",	with: 454545
  end 
end
