require "rubycfn"

Dir[File.expand_path('../stacks/', __FILE__) + '/*.rb'].sort.each do |file|
  subdir = File.basename(file, ".rb") 
  Dir[File.expand_path('../stacks/', __FILE__) + "/#{subdir}/*.rb"].sort.each do |subfile|
    require subfile
  end
  require file
end
