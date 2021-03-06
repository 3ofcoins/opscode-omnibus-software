#
# Copyright 2012-2015 Chef Software, Inc.
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

name "binutils"
default_version "2.25-tdm64-1"

dependency "msys-base"

source url: "http://iweb.dl.sourceforge.net/project/tdm-gcc/GNU%20binutils/binutils-#{version}.tar.lzma"
version("2.25-tdm64-1") { source sha256: "4722bb7b4d46cef714234109e25e5d1cfd29f4e53365b6d615c8a00735f60e40" }

build do
  copy "*", "#{install_dir}/embedded"
end
