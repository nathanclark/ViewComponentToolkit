namespace :version do
  desc 'Bump version (patch, minor, major)'
  task :bump, [:part] do |t, args|
    part = args[:part] || 'patch'

    version_file = 'lib/view_component_toolkit/version.rb'
    version_content = File.read(version_file)

    current_version = version_content.match(/VERSION = "(.*?)"/)[1]
    new_version = bump_version(current_version, part)

    puts "Bumping version from #{current_version} to #{new_version}"

    new_content = version_content.gsub(current_version, new_version)
    File.write(version_file, new_content)

    system("git add #{version_file}")
    system("git commit -m 'Bump version to #{new_version}'")
    #system("git tag v#{new_version}")

    puts "Version bumped to #{new_version}"
    puts "Don't forget to push with tags: git push origin main --tags"
  end

  def bump_version(version, part)
    major, minor, patch = version.split('.').map(&:to_i)
    case part
    when 'major'
      "#{major + 1}.0.0"
    when 'minor'
      "#{major}.#{minor + 1}.0"
    else # patch
      "#{major}.#{minor}.#{patch + 1}"
    end
  end
end
