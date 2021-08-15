RSpec.describe TailwindForRuby do
  it "has a version number" do
    expect(TailwindForRuby::VERSION).not_to be nil
  end

  it "returns test print good" do
    expect(TailwindForRuby::Intro.TestPrint()).to eq("test print good")
  end  

  it "does something useful" do
    expect(false).to eq(true)
  end
end
