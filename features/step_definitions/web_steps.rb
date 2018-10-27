# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file was generated by Cucumber-Rails and is only here to get you a head start
# These step definitions are thin wrappers around the Capybara/Webrat API that lets you
# visit pages, interact with widgets and make assertions about page content.
#
# If you use these step definitions as basis for your features you will quickly end up
# with features that are:
#
# * Hard to maintain
# * Verbose to read
#
# A much better approach is to write your own higher level step definitions, following
# the advice in the following blog posts:
#
# * http://benmabey.com/2008/05/19/imperative-vs-declarative-scenarios-in-user-stories.html
# * http://dannorth.net/2011/01/31/whose-domain-is-it-anyway/
# * http://elabs.se/blog/15-you-re-cuking-it-wrong
#


require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

module WithinHelpers
  def with_scope(locator)
    locator ? within(*selector_for(locator)) { yield } : yield
  end
end
World(WithinHelpers)

# Single-line step scoper
When /^(.*) within (.*[^:])$/ do |step, parent|
  with_scope(parent) { When step }
end

# Multi-line step scoper
When /^(.*) within (.*[^:]):$/ do |step, parent, table_or_string|
  with_scope(parent) { When "#{step}:", table_or_string }
end

When /^(?:|I )go to (.+)$/ do |page_name|
  visit path_to(page_name)
end

When /^(?:|I )press "([^"]*)"$/ do |button|
  click_button(button)
end

When /^(?:|I )follow "([^"]*)"$/ do |link|
  click_link(link)
end

When /^(?:|I )click on "([^"]*)"$/ do
  find("img[alt='EMAIL']").click
end

And /^select box "([^"]*)" is selected with "([^"]*)"$/ do |dropdown, selected_text|
   assert page.has_select?(dropdown, selected: selected_text)
end

When /^(?:|I )fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

When /^(?:|I )fill in "([^"]*)" for "([^"]*)"$/ do |value, field|
  fill_in(field, :with => value)
end

Given /^I am a registered user$/ do
  @user = User.create!({:uid => 1, :email => "antonini.andrealuca@gmail.com", :password => "10101010", :password_confirmation => "10101010" })
end

When /^I sign in with (.*) provider$/ do |provider|
  visit "/users/auth/#{provider.downcase}"
end

Given /^I am on the sign up page$/ do
  step "I am on the home page"
    if @user == nil
		step 'I follow "Esci"'
    end
    step 'I follow "Registrati"'
end

Given /^I am on the home page$/ do
  visit root_path
end

Given /^I am on the login page$/ do
  step "I am on the home page"
    if @user == nil
		step 'I follow "Esci"'
    end
    step 'I follow "Accedi"'
end

And /^I am on my profile page$/ do
   visit edit_user_registration_path
end

When /^I log in$/ do
  steps %Q{
    Given I am on the login page
    When I fill in "Email" with "antonini.andrealuca@gmail.com"
    And I fill in "Password" with "10101010"
    And I follow "Accedi"
    Then I should be on the home page
  }
end

Given /^I am not logged in$/ do
   @user = nil
end

Given /^I am a company user$/ do
   @user == :company_user
end

When /^(?:|I )attach the file "([^"]*)" to "([^"]*)"$/ do |path, file_field|
  attach_file(file_field, File.expand_path(path))
end

Then /^I should be on the login page$/ do
  visit new_user_session_path
end

Then /^I should be on the sign up page$/ do
   visit new_user_registration_path
end

Then /^I should be on the home page$/ do
   visit root_path
end

Then /^I should be on the mail page$/ do
   pending
end

When /^(?:|I )fill in the following:$/ do |fields|
  fields.rows_hash.each do |name, value|
    When %{I fill in "#{name}" with "#{value}"}
  end
end

Then /^I should be redirected on Skyscanner results for car$/ do
  visit 'https://www.skyscanner.it/autonoleggio/risultati/*'
end

Then /^(?:|I )should see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    expect(page).to have_content(text)
  else
    assert page.has_content?(text)
  end
end

Then /^(?:|I )should see \/([^\/]*)\/$/ do |regexp|
  regexp = Regexp.new(regexp)

  if page.respond_to? :should
    expect(page).to have_xpath('//*', :text => regexp)
  else
    assert page.has_xpath?('//*', :text => regexp)
  end
end

Then /^I should see my avatar$/ do
  User.last.avatar_file_name != nil
end

When(/^I select the option containing "([^\"]*)" in "([^\"]*)"$/) do |text, field|
  select text, from: field
end

And /^show me the page$/ do
   save_and_open_page
end

When /^I log out$/ do
  steps %Q{
    When I am on the home page
    And I follow "Esci"
    Then I should be on the home page
  }
end
