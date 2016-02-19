When(/^I search google for a common term$/) do
  @browser.goto 'google.com'
  search_field = @browser.text_field(id: 'lst-ib')
  search_field.set('socks')
  search_field.send_keys(:enter)
  sleep 5
end

Then(/^each search result title contains the search term$/) do
  results = @browser.divs(class: 'g')
  results.each do |result|
    expect(result.div.h3.text.downcase).to include 'socks'
    puts result.div.h3.text
  end
end

And(/^each search result summary contains the search term$/) do
  results = @browser.divs(class: 'g')
  results.each do |result|
    expect(result.div.div.div.text.downcase).to include 'socks'
    puts result.div.div.div.text
  end
end