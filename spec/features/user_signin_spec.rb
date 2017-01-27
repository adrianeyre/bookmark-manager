feature 'User sign in' do
  scenario 'User can sign in with exisiting account' do
    sign_up
    sign_in
    expect(page).to have_content('Welcome, joe@example.com')
  end
  scenario 'User cannot sign in with incorrect details' do
    sign_up
    sign_in(password: 'wrong')
    expect(page).to have_content 'The email or password is incorrect'
  end
end
