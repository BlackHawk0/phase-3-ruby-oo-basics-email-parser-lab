# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    def initialize(email)
        @email = email
    end

    def parse
        # @email.split(/[,\s]/).reject(&:empty?).uniq
        # [] -> match any character in the set
        # \s -> matches any whitesp  character (spaces, tabs, line breaks)
        # ,  -> matches a comma
        # .uniq -> removes duplicates
        @email.split(/[\s,]+/).uniq
    end
end

mail1 = EmailAddressParser.new("avi@test.com, arel@test.com")

puts mail1.parse