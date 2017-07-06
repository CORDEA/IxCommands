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

use SkipWhile;
use Test;

plan 5;

my @result = skip-while ["a", "b", "c"], '$it eq "a"', False;
ok (@result eqv ["b", "c"]), sprintf("actual: %s", @result.perl);

@result = skip-while ["a", "a", "b", "c", "a", "b"], '$it eq "a"', False;
ok (@result eqv ["b", "c", "a", "b"]), sprintf("actual: %s", @result.perl);

@result = skip-while ["1", "21", "23"], '$it.contains("2")', False;
ok (@result eqv ["1", "21", "23"]), sprintf("actual: %s", @result.perl);

@result = skip-while ["12", "21", "3"], '$it.contains("2")', False;
ok (@result eqv ["3"]), sprintf("actual: %s", @result.perl);

@result = skip-while [1, 2, 3], '$it <= 2', True;
ok (@result eqv [3e0]), sprintf("actual: %s", @result.perl);
