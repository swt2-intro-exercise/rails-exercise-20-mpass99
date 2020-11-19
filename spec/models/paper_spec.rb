
describe "New paper model", type: :model do
  it "should contain the attributes" do
    paper = Paper.new(title: "MyPaper", venue: "Potsdam", year: 20201101)
    expect(paper.title).to eq("MyPaper")
    expect(paper.venue).to eq("Potsdam")
    expect(paper.year).to eq(20201101)
  end

  "#{it "should not be valid without las_name" do
    author = Author.new(first_name: "Alan", last_name: "")
    expect(author).to_not be_valid
  end}"
end
