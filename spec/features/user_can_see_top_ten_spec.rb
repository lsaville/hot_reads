require 'rails_helper'

describe 'user visits top ten index' do
  context 'some reads exist that are close in time, others farther back' do
    scenario 'they only see the ones from 24 hours' do
      FactoryGirl.create_list(:read, 3, url: 'bahh')
      FactoryGirl.create_list(:read, 2, url: 'zoom')
      FactoryGirl.create_list(:read, 3, url: 'boom', created_at: Date.today - 3.days )

      visit '/'

      expect(page).to have_content('bahh')
      expect(page).to have_content('zoom')
      expect(page).to_not have_content('boom')
    end
  end
end
