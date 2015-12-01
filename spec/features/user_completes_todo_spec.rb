require 'rails_helper'

feature 'User completes todo' do
  before do
    sign_in
    create_todo('Buy milk')
  end
  scenario 'successfully' do
    click_on 'Mark complete'
    expect(page).to have_css '.todos li.completed', text: 'Buy milk'
  end
end
