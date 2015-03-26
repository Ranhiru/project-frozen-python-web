class HomePage < SitePrism::Page
  set_url "/"
  set_url_matcher /\//
  element :facebook_login_link, ".login_link"
end
