feature 'User recover password' do
  scenario 'User can request password reset if forgotten password' do
    visit '/sessions/new'
    click_link 'forgot password'
    expect(page).to have_content('Please enter your email address')
  end
  scenario 'User is informed to check inbox when email entered' do
    recover_password
    expect(page).to have_content 'Thanks, please check your inbox for the link.'
  end
  scenario 'Reset token assigned to user when trying to recover password' do
    expect { recover_password }.to change { User.first.password_token }
  end
  before do
    sign_up
    Capybara.reset!
  end
  let(:user) { User.first }
  scenario 'User not allowed to use token after an hour has elapsed' do
    recover_password
    Timecop.travel(60 * 60 * 60) do
      visit("/users/reset_password?token=#{user.password_token}")
      expect(page).to have_content 'Your token is invalid'
    end
  end
  scenario 'User is asked for new password when token is valid' do
    recover_password
    visit("/users/reset_password?token=#{user.password_token}")
    expect(page).to have_content('Please enter your new password')
  end
  scenario 'User can sign in after resetting password' do
    recover_password
    set_password(password: 'newpassword', password_confirmation: 'newpassword')
    fill_in 'email', with: 'joe@example.com'
    fill_in 'password', with: 'newpassword'
    click_button 'log in'
    expect(page).to have_content 'Welcome, joe@example.com'
  end
  scenario 'User is informed if passwords don\'t match' do
    recover_password
    set_password(password: 'newpassword', password_confirmation: 'wrongpassword')
    expect(page).to have_content('Password does not match the confirmation')
  end
  scenario 'it immediately resets token upon successful password update' do
    recover_password
    set_password(password: 'newpassword', password_confirmation: 'newpassword')
    visit("/users/reset_password?token=#{user.password_token}")
    expect(page).to have_content 'Your token is invalid'
  end
end
