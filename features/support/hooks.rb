After('@logout') do
    click_link "Sign out"
end

Before do 
    page.current_window.resize_to(1440, 900)
end

After do |scenario|
    nome_cenario = scenario.name.gsub(/[^A-Za-z0-9 ]/, '')
    nome_cenario = nome_cenario.gsub(' ', '_').downcase!
    screenshot = "log/screenshot/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Evidencia')
end


    