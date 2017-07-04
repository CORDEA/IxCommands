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

use Parser;
use Test;

plan 7;

my @result = parse ["a", "b", "c"], "\n";
ok (@result eqv ["a", "b", "c"]), sprintf("actual: %s", @result.perl);

@result = parse ["1", "2", "4"], "\n";
ok (@result eqv ["1", "2", "4"]), sprintf("actual: %s", @result.perl);

@result = parse ["a,b,c"], ",";
ok (@result eqv ["a", "b", "c"]), sprintf("actual: %s", @result.perl);

@result = parse ["a,b,c,"], ",";
ok (@result eqv ["a", "b", "c", ""]), sprintf("actual: %s", @result.perl);

@result = parse ["a,b,c,d", ""], ",";
ok (@result eqv ["a", "b", "c", "d"]), sprintf("actual: %s", @result.perl);

@result = parse ["a\td", ""], ",";
ok (@result eqv ["a\td"]), sprintf("actual: %s", @result.perl);

@result = parse ["", "a,b,c"], ",";
ok (@result eqv [""]), sprintf("actual: %s", @result.perl);
