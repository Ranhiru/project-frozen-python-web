class Navbar < SitePrism::Section
  element :home_link, "a#home"
  element :popular_link, "a#popular"
  element :most_shared_link, "a#most_shared"
  element :new_link, "a#new"
  element :current_user_link, "a#current_user"
  element :sign_in_register_link, "a#signin_login"
end
