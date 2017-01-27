feature 'User sign in' do
  scenario 'User can sign in with exisiting account' do
    sign_up
    sign_in
    expect(page).to have_content('Welcome, joe@example.com')
  end
end
