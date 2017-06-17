require 'selenium-webdriver'
require 'rspec'
require_relative '../spec_helper'

describe "Google Search" do

	before(:each) do
		@driver = Selenium::WebDriver.for :firefox
		@base_url = "https://www.google.co.in/"
		@accept_next_alert = true
		@driver.manage.timeouts.implicit_wait = 30
	end

	after(:each) do
		@driver.quit
	end
	
	it "search text on google" do
		@driver.get(@base_url + "/")
		@driver.find_element(:id, "lst-ib").clear
		@driver.find_element(:id, "lst-ib").send_keys "testing"
		@driver.find_element(:name, "btnK").click
	end
end