module Jekyll
  module Convertible

    def read_yaml(base, name)
      self.content = File.read(File.join(base, name))

      if self.content =~ /^(---\s*\n.*?\n?)^(---\s*$\n?)/m
        self.content = $POSTMATCH

        begin
          self.data = YAML.load($1)
          self.data["layout"] = 'default'
        rescue => e
          puts "YAML Exception reading #{name}: #{e.message}"
        end
      end

      self.data ||= {}
    end

  end
end