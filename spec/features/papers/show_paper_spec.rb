require 'rails_helper'

describe "Show paper page", type: :feature do

  it "renders the authors full name" do
    @paper = Paper.create(title: "MyPaper", venue: "Potsdam", year: 2)
    @paper.authors.create(first_name: "Alan", last_name: "Turing")
    visit paper_path(@paper)

    expect(page).to have_text("Alan Turing")
  end

end