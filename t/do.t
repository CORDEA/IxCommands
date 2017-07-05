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

use Do;
use Test;

plan 3;

my @result = do-lines ["a", "b", "c"], '$it ~ "b"', False;
ok (@result eqv ["ab", "bb", "cb"]), sprintf("actual: %s", @result.perl);

@result = do-lines ["1", "2", "3"], '$it ~ "2"', False;
ok (@result eqv ["12", "22", "32"]), sprintf("actual: %s", @result.perl);

@result = do-lines ["1", "2", "3"], '$it * $it', True;
ok (@result eqv [1e0, 4e0, 9e0]), sprintf("actual: %s", @result.perl);
