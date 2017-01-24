feature 'it redirects to links/index' do
  scenario 'on loading app user is directed to links page' do
    Link.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    visit '/'
    expect(page).to have_content 'Makers Academy'
  end
end
