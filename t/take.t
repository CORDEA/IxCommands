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
# date  : 2017-06-16

use lib 'lib';

use Take;
use Test;

plan 4;

my @result = take ["a", "b", "c"], 0;
ok (@result eqv ["a"]), sprintf("actual: %s", @result.perl);

@result = take ["1", "2", "3"], 1;
ok (@result eqv ["1", "2"]), sprintf("actual: %s", @result.perl);

@result = take ["aa", "bb", "cc", "dd"], 3;
ok (@result eqv ["aa", "bb", "cc", "dd"]), sprintf("actual: %s", @result.perl);

@result = take ["aa", "bb", "cc", "dd"], 5;
ok (@result eqv ["aa", "bb", "cc", "dd"]), sprintf("actual: %s", @result.perl);
