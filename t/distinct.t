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

use Distinct;
use Test;

plan 5;

my @result = distinct ["a", "b", "c"];
ok (@result eqv ["a", "b", "c"]), sprintf("actual: %s", @result.perl);

@result = distinct ["a", "b", "c", "a"];
ok (@result eqv ["a", "b", "c"]), sprintf("actual: %s", @result.perl);

@result = distinct ["a", "b", "c", "a", "b", "a", "c"];
ok (@result eqv ["a", "b", "c"]), sprintf("actual: %s", @result.perl);

@result = distinct ["1", "2", "3"];
ok (@result eqv ["1", "2", "3"]), sprintf("actual: %s", @result.perl);

@result = distinct ["1", "2", "3", "1"];
ok (@result eqv ["1", "2", "3"]), sprintf("actual: %s", @result.perl);
