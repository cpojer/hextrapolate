#!/usr/bin/env ruby
# Generated by Walrus <http://walrus.wincent.com/>

begin
  require 'rubygems'
rescue LoadError
  # installing Walrus via RubyGems is recommended
  # otherwise Walrus must be installed in the RUBYLIB load path
end

require 'walrus/document'
require File.join(File.dirname(__FILE__), '../../../buildtools/help', 'basic').to_s

module Walrus
  class Grammar
    class LetMeType < Basic
      def template_body
        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 11 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id$
        accumulate('' + "\n") # RawText
        accumulate('' + "\n") # RawText
        accumulate('' + "\n") # RawText

      end

      def setup
        accumulate('  ') # RawText
        # Include (start): ../settings.txt:
                # Comment: settings.tmpl
                # Comment: A template for application-wide default settings
                # Comment: buildtools help templates
                # Comment:
                # Comment: Copyright 2006-2010 Wincent Colaiuta. All rights reserved.
                # Comment:
                # Comment: Redistribution and use in source and binary forms, with or without
                # Comment: modification, are permitted provided that the following conditions are met:
                # Comment:
                # Comment: 1. Redistributions of source code must retain the above copyright notice,
                # Comment:    this list of conditions and the following disclaimer.
                # Comment: 2. Redistributions in binary form must reproduce the above copyright notice,
                # Comment:    this list of conditions and the following disclaimer in the documentation
                # Comment:    and/or other materials provided with the distribution.
                # Comment:
                # Comment: THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
                # Comment: AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
                # Comment: IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
                # Comment: ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDERS OR CONTRIBUTORS BE
                # Comment: LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
                # Comment: CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
                # Comment: SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
                # Comment: INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
                # Comment: CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
                # Comment: ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
                # Comment: POSSIBILITY OF SUCH DAMAGE.
                accumulate('' + "\n") # RawText
                # Comment:
                # Comment: appliction-wide default settings go in here
                # Comment:
                accumulate('' + "\n") # RawText
                set_value("book_id", instance_eval { 'Hextrapolate Help' }) # Set directive 
                set_value("book_icon", instance_eval { 'Hextrapolate Help/gfx/icon16.png' }) # Set directive 
                set_value("author", instance_eval { 'Wincent Colaiuta' }) # Set directive 
                set_value("author_email", instance_eval { 'win@wincent.com' }) # Set directive 
                set_value("copyright", instance_eval { 'Copyright 2007-2010 Wincent Coliauta' }) # Set directive 
                accumulate('' + "\n") # RawText
                # Comment:
                # Comment: the page_title should be overridden on a per-page basis
                # Comment:
                accumulate('' + "\n") # RawText
                set_value("page_title", instance_eval { 'Help' }) # Set directive 
        accumulate('  ') # RawText
        set_value("page_title", instance_eval { "Why doesn't Hextrapolate let me type the characters I want?" }) # Set directive 
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'let_me_type' }) # Set directive 
        accumulate('  ') # RawText
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'binary_representation'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'octal_representation'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'decimal_representation'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'hexadecimal_representation'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'ascii', 'ASCII text encoding'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'text_encodings'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'bases'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to_category, 'troubleshooting'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:category, 'troubleshooting')
        accumulate('' + "\n") # RawText
      end
      
      def content
        accumulate('' + "\n") # RawText
        accumulate('Hextrapolate only allows you to type numbers and letters that are valid for a particular base or text encoding. The allowed characters for some of the common bases and text encodings are shown below:' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('* _Hexadecimal_: the digits 0 through 9, as well as the letters a through f' + "\n") # RawText (continued)
        accumulate('* _Decimal_: the digits 0 through 9' + "\n") # RawText (continued)
        accumulate('* _Octal_: the digits 0 through 7' + "\n") # RawText (continued)
        accumulate('* _Binary_: the digits 0 and 1' + "\n") # RawText (continued)
        accumulate('* _ASCII_: the 95 printable characters of the ASCII character encoding; these include all the 26 lowercase and uppercase letters of the Roman alphabet, the digits 0 through 9, and a number of punctuation and other characters (see ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'ascii', 'ASCII text encoding')
        accumulate(' for a full listing)' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
        accumulate('If a character you type is rejected Hextrapolate will show information about it in a tool-tip (see ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'digit_error', 'digit error (screenshot)')
        accumulate(' and ') # RawText
        lookup_and_accumulate_placeholder(:link_to, 'encoding_error', 'text encoding error (screenshot)')
        accumulate(').' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
      end
      

      if __FILE__ == $0   # if run from the command line
        new.run           # same as "walrus run __FILE__"
      end
    end # LetMeType
  end # Grammar
end # Walrus
