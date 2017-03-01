def add_issue(title, description)
  visit issues_path
  click_link 'Report Issue'
  fill_in "Title", with: title
  fill_in "Description", with: description
  click_button "Create Issue"
end

def add_issue_with_location
  visit new_issue_path
  fill_in 'Title', with: "A test"
  fill_in 'Description', with: "A description of the test"
  first('input#latitude', visible: false).set("51.509865")
  first('input#longitude', visible: false).set("-0.118092")
  click_button 'Create Issue'
end