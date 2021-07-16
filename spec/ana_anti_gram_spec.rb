require('rspec')
require('ana_anti_gram')
require('pry')

describe('ana_anti_gram?') do
  it("will return the appropriate boolean case if the two arguments are the same or not ") do
    expect(ana_anti_gram?("hello", "hello")).to(eq(true))
    expect(ana_anti_gram?("hello", "ello")).to(eq(false))
  end
end