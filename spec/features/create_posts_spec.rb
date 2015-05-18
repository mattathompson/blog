require 'rails_helper'


describe 'The Post Creation Process', :type => :feature do
  it 'allows me to fill in the new post form' do
    visit '/posts/new'
    expect(page).to have_content "Create New Post"
    within('#new_post') do
      fill_in 'post_title', :with => 'Sample Title'
      fill_in 'post_body',  :with => 'Sample body'
      fill_in 'post_tags',  :with => 'random tags'
      fill_in 'post_pub_date',   :with => Date.today
    end
    click_button 'Create Post'
    expect(page).to have_content('Sample Title')
  end


  it 'Can edit/remove posts if Current_User', :type => :feature do
    user = FactoryGirl.create :user
    visit '/users/sign_in'
    within('#new_user') do
      fill_in "user_email", :with => user.email
      fill_in "user_password", :with => 'randompass'
    end
    click_button 'Log in'

    post = FactoryGirl.create :post
    visit "/posts/#{post.id}"
    click_link 'Edit'

    expect(page).to have_content("Edit Post")

  end

  it "displays multiple posts at the /posts" do
    5.times do
      FactoryGirl.create :post
    end

    visit '/posts'

    expect(page).to have_content("All Posts")
  end

end
