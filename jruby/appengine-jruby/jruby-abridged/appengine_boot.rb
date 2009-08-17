#! /usr/bin/ruby
# Copyright:: Copyright 2009 Google Inc.
# Original Author:: Ryan Brown (mailto:ribrdb@google.com)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

begin
  require 'rubygems'
rescue LoadError
end

begin
  # Install stubs and environment
  require 'appengine-apis/testing'
  AppEngine::Testing.boot
  require 'appengine-apis/urlfetch'
rescue Exception => e
  if ENV['VERBOSE']
    puts e.inspect
    puts e.backtrace
  end
end