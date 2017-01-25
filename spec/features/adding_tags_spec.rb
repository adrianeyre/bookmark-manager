feature 'Submit tags' do
  scenario 'Displays form to add new bookmark with tag' do
    new_link
    link = Link.first
    expect(link.tags.map(&:name)).to include('search')
  end
  scenario 'I can add multiple tags to a new link' do
  end
end
