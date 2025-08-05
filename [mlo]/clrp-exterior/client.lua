local hwoodmetadatabbmin, hwoodmetadatabbmax = vec3(-90.15217, -84.14305, 2.118878), vec3(90.1521759, 84.14305, 18.3409271)
if not DoesScenarioBlockingAreaExist(hwoodmetadatabbmin, hwoodmetadatabbmax) then
  AddScenarioBlockingArea(hwoodmetadatabbmin, hwoodmetadatabbmax, 0, 1, 1, 1)
  print('blocking')
end
