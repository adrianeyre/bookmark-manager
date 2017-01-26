feature 'User Sign with invalid email' do
  scenario 'cannot sign up' do
    expect { sign_up(email: nil) }.not_to change(User, :count)
    expect { sign_up(email: 'new@new') }.not_to change(User, :count)
  end
end
