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

use TakeWhile;
use Test;

plan 4;

my @result = take-while ["a", "b", "c"], '$it eq "a"', False;
ok (@result eqv ["a"]), sprintf("actual: %s", @result.perl);

@result = take-while ["1", "21", "23"], '$it.contains("2")', False;
ok (@result eqv []), sprintf("actual: %s", @result.perl);

@result = take-while ["12", "21", "3"], '$it.contains("2")', False;
ok (@result eqv ["12", "21"]), sprintf("actual: %s", @result.perl);

@result = take-while [1, 2, 3], '$it <= 2', True;
ok (@result eqv [1e0, 2e0]), sprintf("actual: %s", @result.perl);
