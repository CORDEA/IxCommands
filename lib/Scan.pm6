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

use MONKEY-SEE-NO-EVAL;
use MONKEY;

unit module Scan;

sub eval($line, $stat, $prev) {
    EVAL sprintf 'sub ev($x, $y) { %s }; ev($prev, $line)', $stat;
}

sub scan(@lines, $stat, $n) is export {
    @lines = @lines.map: { .Num } if $n;
    my @results = [];
    my $prev = $n ?? 0 !! "";
    for @lines -> $line {
        $prev = eval($line, $stat, $prev);
        @results.push($prev);
    }
    @results;
}
