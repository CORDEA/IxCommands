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

use Skip;
use Test;

plan 4;

my @result = skip-lines ["a", "b", "c"], 0;
ok (@result eqv ["b", "c"]), sprintf("actual: %s", @result.perl);

@result = skip-lines ["1", "2", "3"], 1;
ok (@result eqv ["3"]), sprintf("actual: %s", @result.perl);

@result = skip-lines ["aa", "bb", "cc", "dd"], 3;
ok (@result eqv []), sprintf("actual: %s", @result.perl);

@result = skip-lines ["aa", "bb", "cc", "dd"], 5;
ok (@result eqv []), sprintf("actual: %s", @result.perl);
