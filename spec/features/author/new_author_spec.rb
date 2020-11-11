require 'rails_helper'

describe "New author page", type: :feature do

  it "should render withour error" do
    visit new_author_path
  end

  it "should contain input fields" do
    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end
end