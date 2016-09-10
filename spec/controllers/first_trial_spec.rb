describe "The Moka Journey", :type => :feature do
	before :all do
		Capybara.current_driver = :selenium
		page.driver.browser.manage.window.maximize
		# page.driver.browser.manage.window.resize_to(1024, 768)
		visit 'http://staging.mokapos.com'
	end

	it "Login MokaStage" do
		click_link('Login')
		fill_in('Email', :with => 'dhimas22staging@mailinator.com')
		fill_in('Password', :with => '123456')
		click_button('Sign In')
		page.has_content?('SALES SUMMARY')
	end

	after :all do
		Capybara.use_default_driver
	end
end

describe "The Moka Sign Up", :type => :feature do
	before :all do
		Capybara.current_driver = :selenium
		page.driver.browser.manage.window.maximize
		# page.driver.browser.manage.window.resize_to(1024, 768)
		visit 'http://staging.mokapos.com'
	end

	it "Sign Up MokaStage" do
		click_link('SIGN UP NOW')
		fill_in('Email', :with => 'devil@mailinator.com')
		fill_in('Password', :with => '123456')
		fill_in('Confirm Password', :with => '123456')
		click_button('Create Account')
		page.has_content?('PROFILE SETUP')
		fill_in('Business Name', :with => 'Dhim King Devil')
		select('Beauty & Personal Care', :from => 'business_business_type_id')
		select('Spa', :from => 'business_business_category_id')
		fill_in('Address', :with => 'Jalan Mangga Besar')
		fill_in('City', :with => 'Jakarta Pusat')
		fill_in('State', :with => 'DKI Jakarta')
		fill_in('Zip', :with => '12943')
		fill_in('First Name', :with => 'Dhim')
		fill_in('Last Name', :with => 'King')
		fill_in('user_phone', :with => '081234723122')
	end

	after :all do
		# page.driver.browser.close
		Capybara.use_default_driver
	end
end