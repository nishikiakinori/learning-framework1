require "application_system_test_case"

class TitlesTest < ApplicationSystemTestCase
  setup do
    @title = titles(:one)
  end

  test "visiting the index" do
    visit titles_url
    assert_selector "h1", text: "Titles"
  end

  test "creating a Title" do
    visit titles_url
    click_on "New Title"

    fill_in "Author", with: @title.author
    fill_in "Memo", with: @title.memo
    fill_in "Picture", with: @title.picture
    click_on "Create Title"

    assert_text "Title was successfully created"
    click_on "Back"
  end

  test "updating a Title" do
    visit titles_url
    click_on "Edit", match: :first

    fill_in "Author", with: @title.author
    fill_in "Memo", with: @title.memo
    fill_in "Picture", with: @title.picture
    click_on "Update Title"

    assert_text "Title was successfully updated"
    click_on "Back"
  end

  test "destroying a Title" do
    visit titles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Title was successfully destroyed"
  end
end
