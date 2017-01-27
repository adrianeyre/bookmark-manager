def new_link
  visit 'links/new'
  fill_in 'url', with: 'http://www.google.co.uk'
  fill_in 'name', with: 'Google UK'
  fill_in 'tags', with: 'search gmail'
  click_button 'submit'
end

def sign_up(email: 'joe@example.com',
            password: 'shoobydooby',
            password_confirmation: 'shoobydooby')
  visit 'users/new'
  fill_in 'email', with: email
  fill_in 'password', with: password
  fill_in 'password_confirmation', with: password_confirmation
  click_button 'submit'
end

def sign_in(email: 'joe@example.com',
            password: 'shoobydooby')
  visit 'sessions/new'
  fill_in 'email', with: email
  fill_in 'password', with: password
  click_button 'log in'
end
