describe User do
  let!(:user) do
    User.create(email: 'joe@example.com',
                password: 'shoobydooby',
                password_confirmation: 'shoobydooby')
  end

  it 'authenticates when given a valid email/password combo' do
    authenticated_user = User.authenticate(user.email, user.password)
    expect(authenticated_user).to eq user
  end
  it 'does not authenticate when given an incorrect password' do
    expect(User.authenticate(user.email, 'wrong_password')).to be_nil
  end
  it 'saves a password recovery token when we generate a token' do
    Timecop.freeze do
      user.generate_token
      expect(user.password_token_time).to eq Time.now
    end
  end
  it 'can\'t find a user with a token generated > 1 hour ago' do
    user.generate_token
    Timecop.travel(60 * 60 * 1) do
      expect(User.find_by_valid_token(user.password_token)).to eq nil
    end
  end
end
