require 'find'

Find.find('.') do |path|
    if path =~ /.*\.jpg$/ then
        puts "resizing #{path}"
        system "magick mogrify -geometry 1000x #{path}" 
    end
end