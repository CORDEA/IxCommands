# Copyright 2017 Yoshihiro Tanaka
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#
# Author: Yoshihiro Tanaka <contact@cordea.jp>
# date  : 2017-07-07

use lib 'lib';

use Last;
use Test;

plan 2;

my @result = lines-last ["a", "b", "c"];
ok (@result eq "c"), sprintf("actual: %s", @result.perl);

@result = lines-last ["1", "2", "3"];
ok (@result eq "3"), sprintf("actual: %s", @result.perl);
