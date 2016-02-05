When(/^I search google for a common term$/) do
  @browser.goto 'google.com'
  search_field = @browser.text_field(id: 'lst-ib')
  search_field.set('socks')
  search_field.send_keys(:enter)
  sleep 5
end

Then(/^each search result title contains the search term$/) do
  pending # Write code here that turns the phrase above into concrete actions
  # get the results
  # compare the search term to each of the result titles
  results = @browser.divs(class: 'g')
  results.each do |result|
    # do something with 'expect'
  end
end

And(/^each search result summary contains the search term$/) do
  pending # Write code here that turns the phrase above into concrete actions
  # go get the results
  # compare the search term to each result summary
end