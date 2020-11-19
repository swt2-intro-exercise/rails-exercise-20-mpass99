require 'rails_helper'

describe "papers index page", type: :feature do

  it "should render without error" do
    visit papers_path
  end

  it "should have a link to create a new paper" do
    visit papers_path

    expect(page).to have_link 'New', href: new_paper_path
  end

  it "should have a link to edit a paper" do
    new_paper = Paper.create(title: "Alan")
    visit papers_path

    expect(page).to have_link 'Edit', href: edit_paper_path(new_paper.reload.id)
  end

  it "should have a link to delete a paper" do
    new_paper = Paper.create(title: "Alan")
    visit papers_path

    expect(page).to have_link 'Destroy', href: paper_path(new_paper.reload.id)
  end

  it "can delete an paper" do
    new_paper = Paper.create(title: "Alan")
    count = Paper.count
    visit papers_path

    click_link 'Destroy'

    expect(Paper.count).to eq(count - 1)
  end

  it "should have a table" do
    visit papers_path

    expect(page).to have_table
  end

end