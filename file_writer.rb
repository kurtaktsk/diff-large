(1..10000).each do |num|
  %w[en zh jp ko].each do |lan|
    random_name = (0...50).map { ('a'..'z').to_a[rand(26)] }.join
    File.write('./file.yml', "#{lan}:\n  name_#{num}: #{random_name}\n  age_#{num}: #{rand(80)}\n", mode: 'a')
  end
end