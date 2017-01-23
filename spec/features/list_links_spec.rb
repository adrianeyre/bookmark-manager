# As a time-pressed user
# So that I can quickly go to web sites I regularly visit
# I would like to see a list of links on the homepage

feature 'As a user I would like to see a list of links' do
  scenario 'Homepage lists links' do
    Link.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    visit ('/')

    expect(page.status_code).to eq 200

    expect(page).to have_content 'http://www.makersacademy.com'
  end
end
