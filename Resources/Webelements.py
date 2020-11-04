# Login Page
LoginPageUserNameElement = "id=user_login"
LoginPagePasswordElement = "id=user_password"
LoginPageSubmitButton = "name=submit"

# Base Page
MainPageUserName = "css=li.dropdown:nth-child(3) > a"
MainPageLogOut = "//a[normalize-space()='Logout']"
MainPageSearch = "id=searchTerm"

# Account Summary Page
AccountSummaryPageMainTitles = "//h2"


def get_list(list_of_items):
    for item in list_of_items:
        print(item)
