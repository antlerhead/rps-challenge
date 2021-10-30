# the marketeer will be presented the choices (rock, paper and scissors)
feature 'user can choose RPS' do
  before do
    visit '/'
    fill_in :name, with: 'Max'
    click_button 'Submit'
  end

  scenario 'user sees RPS choices button' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'user can choose RPS button' do
    click_button 'Rock'
    expect(page).to have_content 'You selected Rock!!'
    # click_button 'Paper'
    # expect(page).to have_content 'You selected Paper!!'
    # click_button 'Scissors'
    # expect(page).to have_content 'You selected Scissors!!'
    save_and_open_page
    expect(page).to have_content 'You selected Rock!!'
  end
end
