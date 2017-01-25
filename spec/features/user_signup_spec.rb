feature 'User sign up' do
  scenario 'Visitor can sign up as a new user' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome, joe@example.com')
    expect(User.first.email).to eq('joe@example.com')
  end

  scenario 'Requires confirmation password to match' do
    expect { sign_up(password_confirmation: 'wrong') }.not_to change(User, :count)
    expect(current_path).to eq('/users')
    expect(page).to have_content 'Password and confirmation password do not match'
  end
end
