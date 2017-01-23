# As a time-pressed user
# So that I can save a website
# I would like to add the site's address and title to my bookmark manager

feature 'As a user I would like to see a list of links' do
  scenario 'Homepage lists links' do
    visit ('/new')

    fill_in('title', with: 'BBC')
    fill_in('url', with: 'http://www.bbc.co.uk')
    click_button('Submit')

    expect(page).to have_content 'http://www.bbc.co.uk'
  end
end
