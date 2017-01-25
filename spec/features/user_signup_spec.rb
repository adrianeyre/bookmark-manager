feature 'User sign up' do
  scenario 'Visitor can sign up as a new user' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome, joe@example.com')
    expect(User.first.email).to eq('joe@example.com')
  end

  scenario 'Requires confirmation password to match' do
    expect { sign_up(password_confirmation: 'wrong') }.not_to change(User, :count)
    expect(current_path).to eq('/users')
    expect(page).to have_content 'Password does not match the confirmation'
  end

  scenario 'Requires email input to sign up' do
    expect { sign_up(email: nil) }.not_to change(User, :count)
    expect(current_path).to eq('/users')
    expect(page).to have_content('Email must not be blank')
  end

  scenario 'Requires valid email address to sign up' do
    expect { sign_up(email: 'invalid@example') }.not_to change(User, :count)
    expect(current_path).to eq('/users')
    expect(page).to have_content('Email has an invalid format')
  end

  scenario 'Unable to sign up if email already used' do
    sign_up
    expect { sign_up }.to_not change(User, :count)
    expect(page).to have_content('Email is already taken')
  end
end
