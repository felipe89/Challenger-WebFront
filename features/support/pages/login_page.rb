class LoginPage
    include Capybara::DSL

    def go
        visit '/'
    end

    def faz_login(email, password)
        find("#email").set email
        find("input[name=passwd]").set password
        click_button "Sign in"
    end
end