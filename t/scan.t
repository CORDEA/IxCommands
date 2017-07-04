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

use Scan;
use Test;

plan 4;

my @result = scan ["a", "b", "c"], '$x ~ $y', False;
ok (@result eqv ["a", "ab", "abc"]), sprintf("actual: %s", @result.perl);

@result = scan ["1", "2", "3"], '$x ~ $y', False;
ok (@result eqv ["1", "12", "123"]), sprintf("actual: %s", @result.perl);

@result = scan ["1", "2", "3"], '$x * $y', True;
ok (@result eqv [0e0, 0e0, 0e0]), sprintf("actual: %s", @result.perl);

@result = scan ["1", "2", "3"], '$x + $y', True;
ok (@result eqv [1e0, 3e0, 6e0]), sprintf("actual: %s", @result.perl);
