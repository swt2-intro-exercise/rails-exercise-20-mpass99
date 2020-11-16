require 'rails_helper'

describe "authors index page", type: :feature do

  it "should render without error" do
    visit authors_path
  end

  it "should have a link to create a new user" do
    visit authors_path

    expect(page).to have_link 'New', href: new_author_path
  end

  it "should have a table" do
    visit authors_path

    expect(page).to have_table
  end

end

describe "validation", type: :controller do

  it "should not be valid without las_name" do
    author = Author.new(first_name: "Alan", last_name: "")
    expect(author).to_not be_valid
  end

end