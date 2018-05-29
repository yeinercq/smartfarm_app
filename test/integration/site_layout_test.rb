require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

	test "layout links" do
		get root_path
		assert_template 'static_pages/home'
		assert_select "a[href=?]", root_path, 		count: 2
		assert_select "a[href=?]", help_path, 		test: "Help"
		assert_select "a[href=?]", about_path, 		test: "About"
		assert_select "a[href=?]", contact_path, 	test: "Contact"
		#este test es posible porque se ha incluido en test_helper.rb el modulo application_helper
		#donde se encuentra el bloque "full_title"
		get contact_path
		assert_select "title", full_title("Contact")
		get signup_path
		assert_select "title", full_title("Sign up")
	end
end
