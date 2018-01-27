require './lib/soundly/cli.rb'

describe Soundly::CLI.new.call do
  it "Greets the user" do
    expect{ Soundly::CLI.new.call }.to output("Main Menu").to_stdout
  end
end