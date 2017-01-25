def new_link
  visit 'links/new'
  fill_in 'url', with: 'http://www.google.co.uk'
  fill_in 'name', with: 'Google UK'
  fill_in 'tags', with: 'search gmail'
  click_button 'submit'
end

def sign_up
  visit 'users/new'
  fill_in 'email', with: 'joe@example.com'
  fill_in 'password', with: 'shoobydooby'
  click_button 'submit'
end
