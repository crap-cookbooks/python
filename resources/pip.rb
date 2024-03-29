#
# Author:: Seth Chisamore <schisamo@chef.io>
# Cookbook Name:: python
# Resource:: pip
#
# Copyright:: 2011, Chef Software, Inc <legal@chef.io>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

actions :install, :upgrade, :remove, :purge
default_action :install if defined?(default_action) # Chef > 10.8

# Default action for Chef <= 10.8
def initialize(*args)
  super
  @action = :install
end

attribute :package_name, kind_of: String, name_attribute: true
attribute :version, default: nil
attribute :timeout, default: 900
attribute :virtualenv, kind_of: String
attribute :user, regex: Chef::Config[:user_valid_regex]
attribute :group, regex: Chef::Config[:group_valid_regex]
attribute :options, kind_of: String, default: ''
attribute :environment, kind_of: Hash, default: {}
