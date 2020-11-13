require 'rails_helper'

describe "authors index page", type: :feature do

  it "should render without error" do
    visit authors_path
  end

  it "should have a link to create a new user" do
    visit new_author_path

    expect(page).to have_link 'New', href: new_author_path
  end

  it "should have a table with actors in it" do
    visit new_author_path

    expect(page).to have_table
  end

end