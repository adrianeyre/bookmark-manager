def sign_up
  visit('/users/new')
  fill_in('email', with: "paulyjgooders@gmail.com")
  fill_in('password', with: "password")
  click_button('submit')
end
