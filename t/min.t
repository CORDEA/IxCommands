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
# date  : 2017-06-23

use lib 'lib';

use Min;
use Test;

plan 4;

my @result = min-lines ["3", "3", "4", "2"];
ok (@result eq [2e0]), sprintf("actual: %s", @result.perl);

@result = min-lines ["1", "2"];
ok (@result eqv [1e0]), sprintf("actual: %s", @result.perl);

@result = min-lines ["1", "1"];
ok (@result eqv [1e0]), sprintf("actual: %s", @result.perl);

@result = min-lines ["1", "1.1"];
ok (@result eqv [1e0]), sprintf("actual: %s", @result.perl);
