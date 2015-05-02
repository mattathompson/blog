require 'rails_helper'


describe 'The Post Creation Process', :type => :feature do
  it 'allows me to fill in the new post form' do
    visit '/posts/new'
    expect(page).to have_content "Create New Post"
    within('#new_post') do
      fill_in 'post_title', :with => 'Sample Title'
      fill_in 'post_body', :with => 'Sample body'
      fill_in 'post_tags', :with => 'random tags'
    end
    click_button 'Create Post'
    expect(page)
  end


end
