#!/usr/bin/env ruby
# Generated by Walrus <http://walrus.wincent.com/>

begin
  require 'rubygems'
rescue LoadError
  # installing Walrus via RubyGems is recommended
  # otherwise Walrus must be installed in the RUBYLIB load path
end

require 'walrus/document'
require File.join(File.dirname(__FILE__), '../../../buildtools/help', 'task').to_s

module Walrus
  class Grammar
    class LostLicenseCodes < Task
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
        set_value("page_title", instance_eval { 'What to do if you lose your license code' }) # Set directive 
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'lost_license_codes' }) # Set directive 
        accumulate('  ') # RawText
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'missing_license', "What to do if you haven't received your license"))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'purchasing', 'Purchasing Hextrapolate'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'backing_up_your_license'))
        accumulate('' + "\n") # RawText
      end
      
      def content
        accumulate('' + "\n") # RawText
        accumulate('If you lose your license code you can have it resent to you by an automated system.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('It is recommended that you keep backups of your license notices.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('<div id="task_box">' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('` From the Hextrapolate menu select Register…' + "\n") # RawText (continued)
        accumulate('` When the registration preference pane appears, click the "Retrieve lost license code" button' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('</div>' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Screenshots' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('<div class="screenshot"><img src="../gfx/registration-pane.png" width="464" height="389" alt="Registration preferences pane"></div>' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Alternatives' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('If you unable to obtain your license using this method, contact me via email at <a href="mailto:support@wincent.com">support@wincent.com</a>.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
      end
      

      if __FILE__ == $0   # if run from the command line
        new.run           # same as "walrus run __FILE__"
      end
    end # LostLicenseCodes
  end # Grammar
end # Walrus
