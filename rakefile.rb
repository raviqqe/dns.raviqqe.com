%i(apply plan destroy).each do |name|
  task name do
    sh "terraform #{name}"
  end
end
