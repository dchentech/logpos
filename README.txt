= logpos

* http://github.com/mvj3/logpos

== DESCRIPTION:

Use binary search to seek a position in logs, see http://mvj3.github.com/2011/09/17/use-binary-search-to-seek-a-position-in-rails-logs

== FEATURES/PROBLEMS:

* Custome Time format

== SYNOPSIS:

require 'logpos'

pos = Logpos.seek_pos_before log_path, time
# or
lg = Logpos.new
lg.time_parser = proc {|line| line.match(/^Started/) && TIME_PARSER_CLASS.parse(line.split(/for [0-9\.]* at /)[-1]) }
pos = lg.seek_pos_before log_path, time

== REQUIREMENTS:

== INSTALL:

* [sudo] gem install logpos

== DEVELOPERS:

After checking out the source, run:

  $ rake newb

This task will install any missing dependencies, run the tests/specs,
and generate the RDoc.

== LICENSE:

(The MIT License)

Copyright (c) 2011 eoe, Inc.

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
