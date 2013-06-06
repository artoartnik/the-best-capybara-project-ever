require 'spec_helper'

feature 'Capybara demos' do

  scenario 'I visit the home page' do

    visit '/'
    page.should have_content 'Homepage'

  end

  scenario 'I see a div' do
    visit '/'

    within '#some-content' do
      page.should have_content 'This div has some content.'
    end

  end

  scenario 'I click a link to a page' do

    visit '/'
    click_link 'Link to another page'
    page.should have_content 'subpage'

  end

  scenario 'I fill and submit a form', js: true do
    visit '/'

    within ('#js-form') do
      fill_in('name', with: 'Martin')
      click_button 'Submit'
    end

    within ('#name-tag') do
      page.should have_content "Hello, my name is Martin"
    end

  end

  scenario 'Take a screenshot', js: true do

    visit '/'
    page.save_screenshot 'public/screen.png'
    File.exist?('public/screen.png').should be_true

  end

  scenario 'Test the poltergeist debug', js: true do

    visit '/'
    #page.driver.debug

  end

end
