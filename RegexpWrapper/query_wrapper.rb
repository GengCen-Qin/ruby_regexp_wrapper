module RegexpWrapper
  class QueryWrapper
    attr_accessor :header, :body, :footer

    def initialize
      @header = ""
      @body = ""
      @footer = ""
    end

    def start_with!(content)
      @header = "^#{content}"
      self
    end

    def end_with!(content)
      @footer = "#{content}\\z"
      self
    end

    def has!(content)
      @body = @body + ".*#{content}"
      self
    end

    def to_regexp
      express = @header + @body + ".*" + @footer
      Regexp.new(express)
    end

    def =~(content)
      content.to_s =~ to_regexp
    end

  end
end