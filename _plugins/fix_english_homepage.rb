# Jekyll plugin to fix English homepage location and language switcher
# This addresses Jekyll Polyglot generating the English homepage in the wrong location

Jekyll::Hooks.register :site, :post_write do |site|
  # Fix English homepage location
  source_file = File.join(site.dest, 'en', 'en', 'index.html')
  target_file = File.join(site.dest, 'en', 'index.html')
  
  if File.exist?(source_file)
    # Copy the file to the correct location
    FileUtils.cp(source_file, target_file)
    puts "✓ Fixed English homepage location"
    
    # Fix language switcher in the copied file
    content = File.read(target_file)
    fixed_content = content.gsub('href=" /en/"', 'href="/"')
    File.write(target_file, fixed_content)
    puts "✓ Fixed English homepage language switcher"
  end
end
