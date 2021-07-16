require('rspec')
require('ana_anti_gram')
require('pry')

describe('ana_anti_gram?') do
  it("will return true if the two arguments are the same ") do
    expect(ana_anti_gram?("hello", "hello")).to(eq(true))
  end
end