class CucumberGreeter
  def greeter
    "Hello World!"
  end
end

Given /^a greeter$/ do
  @greeter = CucumberGreeter.new
end

When /^I sent it the great message$/ do
  @message = @greeter.greet
end

Then /^I should see "([^"]*)$"/ do |greeting|
  @message.should == greeting
end
