require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    # get the rooth path
    get root_path
    # and then assert that the home template is rendered
    assert_template 'static_pages/home'
    # then assert that the following links are present, and that they are correct
    assert_select "a[href=?]", root_path, count: 2 
    assert_select "a[href=?]", helf_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    assert_select "title", full_title
    get contact_path
    assert_select "title", full_title("Contact")
    get signup_path
    assert_select "title", full_title("Sign Up")
  end
end
