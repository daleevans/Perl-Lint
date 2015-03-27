# DO NOT EDIT!!! This test suite generated by t/Policy/Variables/require_localized_punctuation_vars.PL

use strict;
use warnings;
use Perl::Lint::Policy::Variables::RequireLocalizedPunctuationVars;
use t::Policy::Util qw/fetch_violations/;
use Test::Base::Less;

my $class_name = 'Variables::RequireLocalizedPunctuationVars';

filters {
    params => [qw/eval/], # TODO wrong!
};

for my $block (blocks) {
    my $violations = fetch_violations($class_name, $block->input, $block->params);
    is scalar @$violations, $block->failures, $block->dscr;
}

done_testing;

__DATA__

===
--- dscr: Named magic variables, special case passes
--- failures: 0
--- params:
--- input
local ($_, $RS) = ();
local $SIG{__DIE__} = sub { print "AAAAAAARRRRRGGGGHHHHH....\n"; };
$_ = 1;
$ARG = 1;
@_ = (1, 2, 3);

===
--- dscr: Named magic variables, pass local
--- failures: 0
--- params:
--- input
local @+ = ();
local $LAST_MATCH_END = ();
local @- = ();
local @LAST_MATCH_START = ();
local @ARGV = ();
local @F = ();
local @INC = ();
local @_ = ();
local @ARG = ();
local %OVERLOAD = ();
local %+ = ();
local %LAST_MATCH_END = ();
local %- = ();
local %LAST_MATCH_START = ();
local %! = ();
local %OS_ERROR = ();
local %ERRNO = ();
local %^H = ();
local %INC = ();
local %ENV = ();
local %SIG = ();
local $a = ();
local $b = ();
local $_ = ();
local $ARG = ();
local $& = ();
local $MATCH = ();
local $` = ();
local $PREMATCH = ();
local $' = ();
local $POSTMATCH = ();
local $+ = ();
local $LAST_PAREN_MATCH = ();
local $* = ();
local $MULTILINE_MATCHING = ();
local $. = ();
local $INPUT_LINE_NUMBER = ();
local $NR = ();
local $/ = ();
local $INPUT_RECORD_SEPARATOR = ();
local $RS = ();
local $| = ();
local $OUTPUT_AUTO_FLUSH = ();
local $, = ();
local $OUTPUT_FIELD_SEPARATOR = ();
local $OFS = ();
local $\ = ();
local $OUTPUT_RECORD_SEPARATOR = ();
local $ORS = ();
local $" = ();
local $LIST_SEPARATOR = ();
local $; = ();
local $SUBSCRIPT_SEPARATOR = ();
local $SUBSEP = ();
local $# = ();
local $OFMT = ();
local $% = ();
local $FORMAT_PAGE_NUMBER = ();
local $= = ();
local $FORMAT_LINES_PER_PAGE = ();
local $- = ();
local $FORMAT_LINES_LEFT = ();
local $~ = ();
local $FORMAT_NAME = ();
local $^ = ();
local $FORMAT_TOP_NAME = ();
local $: = ();
local $FORMAT_LINE_BREAK_CHARACTERS = ();
local $? = ();
local $CHILD_ERROR = ();
local $^CHILD_ERROR_NATIVE = ();
local $! = ();
local $ERRNO = ();
local $OS_ERROR = ();
local $@ = ();
local $EVAL_ERROR = ();
local $$ = ();
local $PROCESS_ID = ();
local $PID = ();
local $< = ();
local $REAL_USER_ID = ();
local $UID = ();
local $> = ();
local $EFFECTIVE_USER_ID = ();
local $EUID = ();
local $( = ();
local $REAL_GROUP_ID = ();
local $GID = ();
local $) = ();
local $EFFECTIVE_GROUP_ID = ();
local $EGID = ();
local $0 = ();
local $PROGRAM_NAME = ();
local $[ = ();
local $] = ();
local $^A = ();
local $ACCUMULATOR = ();
local $^C = ();
local $COMPILING = ();
local $^CHILD_ERROR_NATIVE = ();
local $^D = ();
local $DEBUGGING = ();
local $^E = ();
local $EXTENDED_OS_ERROR = ();
local $^ENCODING = ();
local $^F = ();
local $SYSTEM_FD_MAX = ();
local $^GLOBAL_PHASE = ();
local $^H = ();
local $^I = ();
local $INPLACE_EDIT = ();
local $^L = ();
local $FORMAT_FORMFEED = ();
local $^LAST_FH = ();
local $^M = ();
local $^MATCH = ();
local $^N = ();
local $LAST_SUBMATCH_RESULT = ();
local $^O = ();
local $OSNAME = ();
local $^OPEN = ();
local $^P = ();
local $PERLDB = ();
local $^PREMATCH = ();
local $^POSTMATCH = ();
local $^R = ();
local $LAST_REGEXP_CODE_RESULT = ();
local $^RE_DEBUG_FLAGS = ();
local $^RE_TRIE_MAXBUF = ();
local $^S = ();
local $EXCEPTIONS_BEING_CAUGHT = ();
local $^T = ();
local $BASETIME = ();
local $^TAINT = ();
local $^UNICODE = ();
local $^UTF8CACHE = ();
local $^UTF8LOCALE = ();
local $^V = ();
local $PERL_VERSION = ();
local $^W = ();
local $WARNING = ();
local $^WARNING_BITS = ();
local $^WIDE_SYSTEM_CALLS = ();
local $^WIN32_SLOPPY_STAT = ();
local $^X = ();
local $EXECUTABLE_NAME = ();
local $ARGV = ();
local *ARGV = ();
local *_ = ();
local *ARGVOUT = ();
local *DATA = ();
local *STDIN = ();
local *STDOUT = ();
local *STDERR = ();

===
--- dscr: Named magic variables, pass local()
--- failures: 0
--- params:
--- input
local (@+) = ();
local ($LAST_MATCH_END) = ();
local (@-) = ();
local (@LAST_MATCH_START) = ();
local (@ARGV) = ();
local (@F) = ();
local (@INC) = ();
local (@_) = ();
local (@ARG) = ();
local (%OVERLOAD) = ();
local (%+) = ();
local (%LAST_MATCH_END) = ();
local (%-) = ();
local (%LAST_MATCH_START) = ();
local (%!) = ();
local (%OS_ERROR) = ();
local (%ERRNO) = ();
local (%^H) = ();
local (%INC) = ();
local (%ENV) = ();
local (%SIG) = ();
local ($a) = ();
local ($b) = ();
local ($_) = ();
local ($ARG) = ();
local ($&) = ();
local ($MATCH) = ();
local ($`) = ();
local ($PREMATCH) = ();
local ($') = ();
local ($POSTMATCH) = ();
local ($+) = ();
local ($LAST_PAREN_MATCH) = ();
local ($*) = ();
local ($MULTILINE_MATCHING) = ();
local ($.) = ();
local ($INPUT_LINE_NUMBER) = ();
local ($NR) = ();
local ($/) = ();
local ($INPUT_RECORD_SEPARATOR) = ();
local ($RS) = ();
local ($|) = ();
local ($OUTPUT_AUTO_FLUSH) = ();
local ($,) = ();
local ($OUTPUT_FIELD_SEPARATOR) = ();
local ($OFS) = ();
local ($\) = ();
local ($OUTPUT_RECORD_SEPARATOR) = ();
local ($ORS) = ();
local ($") = ();
local ($LIST_SEPARATOR) = ();
local ($;) = ();
local ($SUBSCRIPT_SEPARATOR) = ();
local ($SUBSEP) = ();
local ($#) = ();
local ($OFMT) = ();
local ($%) = ();
local ($FORMAT_PAGE_NUMBER) = ();
local ($=) = ();
local ($FORMAT_LINES_PER_PAGE) = ();
local ($-) = ();
local ($FORMAT_LINES_LEFT) = ();
local ($~) = ();
local ($FORMAT_NAME) = ();
local ($^) = ();
local ($FORMAT_TOP_NAME) = ();
local ($:) = ();
local ($FORMAT_LINE_BREAK_CHARACTERS) = ();
local ($?) = ();
local ($CHILD_ERROR) = ();
local ($^CHILD_ERROR_NATIVE) = ();
local ($!) = ();
local ($ERRNO) = ();
local ($OS_ERROR) = ();
local ($@) = ();
local ($EVAL_ERROR) = ();
local ($$) = ();
local ($PROCESS_ID) = ();
local ($PID) = ();
local ($<) = ();
local ($REAL_USER_ID) = ();
local ($UID) = ();
local ($>) = ();
local ($EFFECTIVE_USER_ID) = ();
local ($EUID) = ();
local ($() = ();
local ($REAL_GROUP_ID) = ();
local ($GID) = ();
local ($)) = ();
local ($EFFECTIVE_GROUP_ID) = ();
local ($EGID) = ();
local ($0) = ();
local ($PROGRAM_NAME) = ();
local ($[) = ();
local ($]) = ();
local ($^A) = ();
local ($ACCUMULATOR) = ();
local ($^C) = ();
local ($COMPILING) = ();
local ($^CHILD_ERROR_NATIVE) = ();
local ($^D) = ();
local ($DEBUGGING) = ();
local ($^E) = ();
local ($EXTENDED_OS_ERROR) = ();
local ($^ENCODING) = ();
local ($^F) = ();
local ($SYSTEM_FD_MAX) = ();
local ($^GLOBAL_PHASE) = ();
local ($^H) = ();
local ($^I) = ();
local ($INPLACE_EDIT) = ();
local ($^L) = ();
local ($FORMAT_FORMFEED) = ();
local ($^LAST_FH) = ();
local ($^M) = ();
local ($^MATCH) = ();
local ($^N) = ();
local ($LAST_SUBMATCH_RESULT) = ();
local ($^O) = ();
local ($OSNAME) = ();
local ($^OPEN) = ();
local ($^P) = ();
local ($PERLDB) = ();
local ($^PREMATCH) = ();
local ($^POSTMATCH) = ();
local ($^R) = ();
local ($LAST_REGEXP_CODE_RESULT) = ();
local ($^RE_DEBUG_FLAGS) = ();
local ($^RE_TRIE_MAXBUF) = ();
local ($^S) = ();
local ($EXCEPTIONS_BEING_CAUGHT) = ();
local ($^T) = ();
local ($BASETIME) = ();
local ($^TAINT) = ();
local ($^UNICODE) = ();
local ($^UTF8CACHE) = ();
local ($^UTF8LOCALE) = ();
local ($^V) = ();
local ($PERL_VERSION) = ();
local ($^W) = ();
local ($WARNING) = ();
local ($^WARNING_BITS) = ();
local ($^WIDE_SYSTEM_CALLS) = ();
local ($^WIN32_SLOPPY_STAT) = ();
local ($^X) = ();
local ($EXECUTABLE_NAME) = ();
local ($ARGV) = ();
local (*ARGV) = ();
local (*_) = ();
local (*ARGVOUT) = ();
local (*DATA) = ();
local (*STDIN) = ();
local (*STDOUT) = ();
local (*STDERR) = ();

===
--- dscr: Named magic variables, pass (local)
--- failures: 0
--- params:
--- input
(local @+) = ();
(local $LAST_MATCH_END) = ();
(local @-) = ();
(local @LAST_MATCH_START) = ();
(local @ARGV) = ();
(local @F) = ();
(local @INC) = ();
(local @_) = ();
(local @ARG) = ();
(local %OVERLOAD) = ();
(local %+) = ();
(local %LAST_MATCH_END) = ();
(local %-) = ();
(local %LAST_MATCH_START) = ();
(local %!) = ();
(local %OS_ERROR) = ();
(local %ERRNO) = ();
(local %^H) = ();
(local %INC) = ();
(local %ENV) = ();
(local %SIG) = ();
(local $a) = ();
(local $b) = ();
(local $_) = ();
(local $ARG) = ();
(local $&) = ();
(local $MATCH) = ();
(local $`) = ();
(local $PREMATCH) = ();
(local $') = ();
(local $POSTMATCH) = ();
(local $+) = ();
(local $LAST_PAREN_MATCH) = ();
(local $*) = ();
(local $MULTILINE_MATCHING) = ();
(local $.) = ();
(local $INPUT_LINE_NUMBER) = ();
(local $NR) = ();
(local $/) = ();
(local $INPUT_RECORD_SEPARATOR) = ();
(local $RS) = ();
(local $|) = ();
(local $OUTPUT_AUTO_FLUSH) = ();
(local $,) = ();
(local $OUTPUT_FIELD_SEPARATOR) = ();
(local $OFS) = ();
(local $\) = ();
(local $OUTPUT_RECORD_SEPARATOR) = ();
(local $ORS) = ();
(local $") = ();
(local $LIST_SEPARATOR) = ();
(local $;) = ();
(local $SUBSCRIPT_SEPARATOR) = ();
(local $SUBSEP) = ();
(local $#) = ();
(local $OFMT) = ();
(local $%) = ();
(local $FORMAT_PAGE_NUMBER) = ();
(local $=) = ();
(local $FORMAT_LINES_PER_PAGE) = ();
(local $-) = ();
(local $FORMAT_LINES_LEFT) = ();
(local $~) = ();
(local $FORMAT_NAME) = ();
(local $^) = ();
(local $FORMAT_TOP_NAME) = ();
(local $:) = ();
(local $FORMAT_LINE_BREAK_CHARACTERS) = ();
(local $?) = ();
(local $CHILD_ERROR) = ();
(local $^CHILD_ERROR_NATIVE) = ();
(local $!) = ();
(local $ERRNO) = ();
(local $OS_ERROR) = ();
(local $@) = ();
(local $EVAL_ERROR) = ();
(local $$) = ();
(local $PROCESS_ID) = ();
(local $PID) = ();
(local $<) = ();
(local $REAL_USER_ID) = ();
(local $UID) = ();
(local $>) = ();
(local $EFFECTIVE_USER_ID) = ();
(local $EUID) = ();
(local $() = ();
(local $REAL_GROUP_ID) = ();
(local $GID) = ();
(local $)) = ();
(local $EFFECTIVE_GROUP_ID) = ();
(local $EGID) = ();
(local $0) = ();
(local $PROGRAM_NAME) = ();
(local $[) = ();
(local $]) = ();
(local $^A) = ();
(local $ACCUMULATOR) = ();
(local $^C) = ();
(local $COMPILING) = ();
(local $^CHILD_ERROR_NATIVE) = ();
(local $^D) = ();
(local $DEBUGGING) = ();
(local $^E) = ();
(local $EXTENDED_OS_ERROR) = ();
(local $^ENCODING) = ();
(local $^F) = ();
(local $SYSTEM_FD_MAX) = ();
(local $^GLOBAL_PHASE) = ();
(local $^H) = ();
(local $^I) = ();
(local $INPLACE_EDIT) = ();
(local $^L) = ();
(local $FORMAT_FORMFEED) = ();
(local $^LAST_FH) = ();
(local $^M) = ();
(local $^MATCH) = ();
(local $^N) = ();
(local $LAST_SUBMATCH_RESULT) = ();
(local $^O) = ();
(local $OSNAME) = ();
(local $^OPEN) = ();
(local $^P) = ();
(local $PERLDB) = ();
(local $^PREMATCH) = ();
(local $^POSTMATCH) = ();
(local $^R) = ();
(local $LAST_REGEXP_CODE_RESULT) = ();
(local $^RE_DEBUG_FLAGS) = ();
(local $^RE_TRIE_MAXBUF) = ();
(local $^S) = ();
(local $EXCEPTIONS_BEING_CAUGHT) = ();
(local $^T) = ();
(local $BASETIME) = ();
(local $^TAINT) = ();
(local $^UNICODE) = ();
(local $^UTF8CACHE) = ();
(local $^UTF8LOCALE) = ();
(local $^V) = ();
(local $PERL_VERSION) = ();
(local $^W) = ();
(local $WARNING) = ();
(local $^WARNING_BITS) = ();
(local $^WIDE_SYSTEM_CALLS) = ();
(local $^WIN32_SLOPPY_STAT) = ();
(local $^X) = ();
(local $EXECUTABLE_NAME) = ();
(local $ARGV) = ();
(local *ARGV) = ();
(local *_) = ();
(local *ARGVOUT) = ();
(local *DATA) = ();
(local *STDIN) = ();
(local *STDOUT) = ();
(local *STDERR) = ();

===
--- dscr: Named magic variables, pass = (local) =
--- failures: 0
--- params:
--- input
@foo = (local @+) = ();
@foo = (local $LAST_MATCH_END) = ();
@foo = (local @-) = ();
@foo = (local @LAST_MATCH_START) = ();
@foo = (local @ARGV) = ();
@foo = (local @F) = ();
@foo = (local @INC) = ();
@foo = (local @_) = ();
@foo = (local @ARG) = ();
@foo = (local %OVERLOAD) = ();
@foo = (local %+) = ();
@foo = (local %LAST_MATCH_END) = ();
@foo = (local %-) = ();
@foo = (local %LAST_MATCH_START) = ();
@foo = (local %!) = ();
@foo = (local %OS_ERROR) = ();
@foo = (local %ERRNO) = ();
@foo = (local %^H) = ();
@foo = (local %INC) = ();
@foo = (local %ENV) = ();
@foo = (local %SIG) = ();
@foo = (local $a) = ();
@foo = (local $b) = ();
@foo = (local $_) = ();
@foo = (local $ARG) = ();
@foo = (local $&) = ();
@foo = (local $MATCH) = ();
@foo = (local $`) = ();
@foo = (local $PREMATCH) = ();
@foo = (local $') = ();
@foo = (local $POSTMATCH) = ();
@foo = (local $+) = ();
@foo = (local $LAST_PAREN_MATCH) = ();
@foo = (local $*) = ();
@foo = (local $MULTILINE_MATCHING) = ();
@foo = (local $.) = ();
@foo = (local $INPUT_LINE_NUMBER) = ();
@foo = (local $NR) = ();
@foo = (local $/) = ();
@foo = (local $INPUT_RECORD_SEPARATOR) = ();
@foo = (local $RS) = ();
@foo = (local $|) = ();
@foo = (local $OUTPUT_AUTO_FLUSH) = ();
@foo = (local $,) = ();
@foo = (local $OUTPUT_FIELD_SEPARATOR) = ();
@foo = (local $OFS) = ();
@foo = (local $\) = ();
@foo = (local $OUTPUT_RECORD_SEPARATOR) = ();
@foo = (local $ORS) = ();
@foo = (local $") = ();
@foo = (local $LIST_SEPARATOR) = ();
@foo = (local $;) = ();
@foo = (local $SUBSCRIPT_SEPARATOR) = ();
@foo = (local $SUBSEP) = ();
@foo = (local $#) = ();
@foo = (local $OFMT) = ();
@foo = (local $%) = ();
@foo = (local $FORMAT_PAGE_NUMBER) = ();
@foo = (local $=) = ();
@foo = (local $FORMAT_LINES_PER_PAGE) = ();
@foo = (local $-) = ();
@foo = (local $FORMAT_LINES_LEFT) = ();
@foo = (local $~) = ();
@foo = (local $FORMAT_NAME) = ();
@foo = (local $^) = ();
@foo = (local $FORMAT_TOP_NAME) = ();
@foo = (local $:) = ();
@foo = (local $FORMAT_LINE_BREAK_CHARACTERS) = ();
@foo = (local $?) = ();
@foo = (local $CHILD_ERROR) = ();
@foo = (local $^CHILD_ERROR_NATIVE) = ();
@foo = (local $!) = ();
@foo = (local $ERRNO) = ();
@foo = (local $OS_ERROR) = ();
@foo = (local $@) = ();
@foo = (local $EVAL_ERROR) = ();
@foo = (local $$) = ();
@foo = (local $PROCESS_ID) = ();
@foo = (local $PID) = ();
@foo = (local $<) = ();
@foo = (local $REAL_USER_ID) = ();
@foo = (local $UID) = ();
@foo = (local $>) = ();
@foo = (local $EFFECTIVE_USER_ID) = ();
@foo = (local $EUID) = ();
@foo = (local $() = ();
@foo = (local $REAL_GROUP_ID) = ();
@foo = (local $GID) = ();
@foo = (local $)) = ();
@foo = (local $EFFECTIVE_GROUP_ID) = ();
@foo = (local $EGID) = ();
@foo = (local $0) = ();
@foo = (local $PROGRAM_NAME) = ();
@foo = (local $[) = ();
@foo = (local $]) = ();
@foo = (local $^A) = ();
@foo = (local $ACCUMULATOR) = ();
@foo = (local $^C) = ();
@foo = (local $COMPILING) = ();
@foo = (local $^CHILD_ERROR_NATIVE) = ();
@foo = (local $^D) = ();
@foo = (local $DEBUGGING) = ();
@foo = (local $^E) = ();
@foo = (local $EXTENDED_OS_ERROR) = ();
@foo = (local $^ENCODING) = ();
@foo = (local $^F) = ();
@foo = (local $SYSTEM_FD_MAX) = ();
@foo = (local $^GLOBAL_PHASE) = ();
@foo = (local $^H) = ();
@foo = (local $^I) = ();
@foo = (local $INPLACE_EDIT) = ();
@foo = (local $^L) = ();
@foo = (local $FORMAT_FORMFEED) = ();
@foo = (local $^LAST_FH) = ();
@foo = (local $^M) = ();
@foo = (local $^MATCH) = ();
@foo = (local $^N) = ();
@foo = (local $LAST_SUBMATCH_RESULT) = ();
@foo = (local $^O) = ();
@foo = (local $OSNAME) = ();
@foo = (local $^OPEN) = ();
@foo = (local $^P) = ();
@foo = (local $PERLDB) = ();
@foo = (local $^PREMATCH) = ();
@foo = (local $^POSTMATCH) = ();
@foo = (local $^R) = ();
@foo = (local $LAST_REGEXP_CODE_RESULT) = ();
@foo = (local $^RE_DEBUG_FLAGS) = ();
@foo = (local $^RE_TRIE_MAXBUF) = ();
@foo = (local $^S) = ();
@foo = (local $EXCEPTIONS_BEING_CAUGHT) = ();
@foo = (local $^T) = ();
@foo = (local $BASETIME) = ();
@foo = (local $^TAINT) = ();
@foo = (local $^UNICODE) = ();
@foo = (local $^UTF8CACHE) = ();
@foo = (local $^UTF8LOCALE) = ();
@foo = (local $^V) = ();
@foo = (local $PERL_VERSION) = ();
@foo = (local $^W) = ();
@foo = (local $WARNING) = ();
@foo = (local $^WARNING_BITS) = ();
@foo = (local $^WIDE_SYSTEM_CALLS) = ();
@foo = (local $^WIN32_SLOPPY_STAT) = ();
@foo = (local $^X) = ();
@foo = (local $EXECUTABLE_NAME) = ();
@foo = (local $ARGV) = ();
@foo = (local *ARGV) = ();
@foo = (local *_) = ();
@foo = (local *ARGVOUT) = ();
@foo = (local *DATA) = ();
@foo = (local *STDIN) = ();
@foo = (local *STDOUT) = ();
@foo = (local *STDERR) = ();

===
--- dscr: Named magic variables, pass local dereferenced
--- failures: 0
--- params:
--- input
local $+[0] = 'bar';
local $-[0] = 'bar';
local $LAST_MATCH_START[0] = 'bar';
local $ARGV[0] = 'bar';
local $F[0] = 'bar';
local $INC[0] = 'bar';
local $_[0] = 'bar';
local $ARG[0] = 'bar';
local $OVERLOAD{foo} = 'bar';
local $+{foo} = 'bar';
local $LAST_MATCH_END{foo} = 'bar';
local $-{foo} = 'bar';
local $LAST_MATCH_START{foo} = 'bar';
local $!{foo} = 'bar';
local $OS_ERROR{foo} = 'bar';
local $ERRNO{foo} = 'bar';
local $^H{foo} = 'bar';
local $INC{foo} = 'bar';
local $ENV{foo} = 'bar';
local $SIG{foo} = 'bar';

===
--- dscr: Named magic variables, pass non-local but in exception list
--- failures: 0
--- params: {require_localized_punctuation_vars =>  {allow => '@+ $LAST_MATCH_END @- @LAST_MATCH_START @ARGV @F @INC @_ @ARG %OVERLOAD %+ %LAST_MATCH_END %- %LAST_MATCH_START %! %OS_ERROR %ERRNO %^H %INC %ENV %SIG $a $b $_ $ARG $& $MATCH $` $PREMATCH $\' $POSTMATCH $+ $LAST_PAREN_MATCH $* $MULTILINE_MATCHING $. $INPUT_LINE_NUMBER $NR $/ $INPUT_RECORD_SEPARATOR $RS $| $OUTPUT_AUTO_FLUSH $, $OUTPUT_FIELD_SEPARATOR $OFS $\\ $OUTPUT_RECORD_SEPARATOR $ORS $" $LIST_SEPARATOR $; $SUBSCRIPT_SEPARATOR $SUBSEP $# $OFMT $% $FORMAT_PAGE_NUMBER $= $FORMAT_LINES_PER_PAGE $- $FORMAT_LINES_LEFT $~ $FORMAT_NAME $^ $FORMAT_TOP_NAME $: $FORMAT_LINE_BREAK_CHARACTERS $? $CHILD_ERROR $^CHILD_ERROR_NATIVE $! $ERRNO $OS_ERROR $@ $EVAL_ERROR $$ $PROCESS_ID $PID $< $REAL_USER_ID $UID $> $EFFECTIVE_USER_ID $EUID $( $REAL_GROUP_ID $GID $) $EFFECTIVE_GROUP_ID $EGID $0 $PROGRAM_NAME $[ $] $^A $ACCUMULATOR $^C $COMPILING $^CHILD_ERROR_NATIVE $^D $DEBUGGING $^E $EXTENDED_OS_ERROR $^ENCODING $^F $SYSTEM_FD_MAX $^GLOBAL_PHASE $^H $^I $INPLACE_EDIT $^L $FORMAT_FORMFEED $^LAST_FH $^M $^MATCH $^N $LAST_SUBMATCH_RESULT $^O $OSNAME $^OPEN $^P $PERLDB $^PREMATCH $^POSTMATCH $^R $LAST_REGEXP_CODE_RESULT $^RE_DEBUG_FLAGS $^RE_TRIE_MAXBUF $^S $EXCEPTIONS_BEING_CAUGHT $^T $BASETIME $^TAINT $^UNICODE $^UTF8CACHE $^UTF8LOCALE $^V $PERL_VERSION $^W $WARNING $^WARNING_BITS $^WIDE_SYSTEM_CALLS $^WIN32_SLOPPY_STAT $^X $EXECUTABLE_NAME $ARGV *ARGV *_ *ARGVOUT *DATA *STDIN *STDOUT *STDERR'}}
--- input
@+ = ();
$LAST_MATCH_END = ();
@- = ();
@LAST_MATCH_START = ();
@ARGV = ();
@F = ();
@INC = ();
@ARG = ();
%OVERLOAD = ();
%+ = ();
%LAST_MATCH_END = ();
%- = ();
%LAST_MATCH_START = ();
%! = ();
%OS_ERROR = ();
%ERRNO = ();
%^H = ();
%INC = ();
%ENV = ();
%SIG = ();
$a = ();
$b = ();
$& = ();
$MATCH = ();
$` = ();
$PREMATCH = ();
$' = ();
$POSTMATCH = ();
$+ = ();
$LAST_PAREN_MATCH = ();
$* = ();
$MULTILINE_MATCHING = ();
$. = ();
$INPUT_LINE_NUMBER = ();
$NR = ();
$/ = ();
$INPUT_RECORD_SEPARATOR = ();
$RS = ();
$| = ();
$OUTPUT_AUTO_FLUSH = ();
$, = ();
$OUTPUT_FIELD_SEPARATOR = ();
$OFS = ();
$\ = ();
$OUTPUT_RECORD_SEPARATOR = ();
$ORS = ();
$" = ();
$LIST_SEPARATOR = ();
$; = ();
$SUBSCRIPT_SEPARATOR = ();
$SUBSEP = ();
$# = ();
$OFMT = ();
$% = ();
$FORMAT_PAGE_NUMBER = ();
$= = ();
$FORMAT_LINES_PER_PAGE = ();
$- = ();
$FORMAT_LINES_LEFT = ();
$~ = ();
$FORMAT_NAME = ();
$^ = ();
$FORMAT_TOP_NAME = ();
$: = ();
$FORMAT_LINE_BREAK_CHARACTERS = ();
$? = ();
$CHILD_ERROR = ();
$^CHILD_ERROR_NATIVE = ();
$! = ();
$ERRNO = ();
$OS_ERROR = ();
$@ = ();
$EVAL_ERROR = ();
$$ = ();
$PROCESS_ID = ();
$PID = ();
$< = ();
$REAL_USER_ID = ();
$UID = ();
$> = ();
$EFFECTIVE_USER_ID = ();
$EUID = ();
$( = ();
$REAL_GROUP_ID = ();
$GID = ();
$) = ();
$EFFECTIVE_GROUP_ID = ();
$EGID = ();
$0 = ();
$PROGRAM_NAME = ();
$[ = ();
$] = ();
$^A = ();
$ACCUMULATOR = ();
$^C = ();
$COMPILING = ();
$^CHILD_ERROR_NATIVE = ();
$^D = ();
$DEBUGGING = ();
$^E = ();
$EXTENDED_OS_ERROR = ();
$^ENCODING = ();
$^F = ();
$SYSTEM_FD_MAX = ();
$^GLOBAL_PHASE = ();
$^H = ();
$^I = ();
$INPLACE_EDIT = ();
$^L = ();
$FORMAT_FORMFEED = ();
$^LAST_FH = ();
$^M = ();
$^MATCH = ();
$^N = ();
$LAST_SUBMATCH_RESULT = ();
$^O = ();
$OSNAME = ();
$^OPEN = ();
$^P = ();
$PERLDB = ();
$^PREMATCH = ();
$^POSTMATCH = ();
$^R = ();
$LAST_REGEXP_CODE_RESULT = ();
$^RE_DEBUG_FLAGS = ();
$^RE_TRIE_MAXBUF = ();
$^S = ();
$EXCEPTIONS_BEING_CAUGHT = ();
$^T = ();
$BASETIME = ();
$^TAINT = ();
$^UNICODE = ();
$^UTF8CACHE = ();
$^UTF8LOCALE = ();
$^V = ();
$PERL_VERSION = ();
$^W = ();
$WARNING = ();
$^WARNING_BITS = ();
$^WIDE_SYSTEM_CALLS = ();
$^WIN32_SLOPPY_STAT = ();
$^X = ();
$EXECUTABLE_NAME = ();
$ARGV = ();
*ARGV = ();
*_ = ();
*ARGVOUT = ();
*DATA = ();
*STDIN = ();
*STDOUT = ();
*STDERR = ();

===
--- dscr: Named magic variables, fail non-local, non-carats
--- failures: 114
--- params:
--- input
@+ = ();
$LAST_MATCH_END = ();
@- = ();
@LAST_MATCH_START = ();
@ARGV = ();
@F = ();
@INC = ();
@ARG = ();
%OVERLOAD = ();
%+ = ();
%LAST_MATCH_END = ();
%- = ();
%LAST_MATCH_START = ();
%! = ();
%OS_ERROR = ();
%ERRNO = ();
%INC = ();
%ENV = ();
%SIG = ();
$a = ();
$b = ();
$& = ();
$MATCH = ();
$` = ();
$PREMATCH = ();
$' = ();
$POSTMATCH = ();
$+ = ();
$LAST_PAREN_MATCH = ();
$* = ();
$MULTILINE_MATCHING = ();
$. = ();
$INPUT_LINE_NUMBER = ();
$NR = ();
$/ = ();
$INPUT_RECORD_SEPARATOR = ();
$RS = ();
$| = ();
$OUTPUT_AUTO_FLUSH = ();
$, = ();
$OUTPUT_FIELD_SEPARATOR = ();
$OFS = ();
$\ = ();
$OUTPUT_RECORD_SEPARATOR = ();
$ORS = ();
$" = ();
$LIST_SEPARATOR = ();
$; = ();
$SUBSCRIPT_SEPARATOR = ();
$SUBSEP = ();
$# = ();
$OFMT = ();
$% = ();
$FORMAT_PAGE_NUMBER = ();
$= = ();
$FORMAT_LINES_PER_PAGE = ();
$- = ();
$FORMAT_LINES_LEFT = ();
$~ = ();
$FORMAT_NAME = ();
$^ = ();
$FORMAT_TOP_NAME = ();
$: = ();
$FORMAT_LINE_BREAK_CHARACTERS = ();
$? = ();
$CHILD_ERROR = ();
$! = ();
$ERRNO = ();
$OS_ERROR = ();
$@ = ();
$EVAL_ERROR = ();
$$ = ();
$PROCESS_ID = ();
$PID = ();
$< = ();
$REAL_USER_ID = ();
$UID = ();
$> = ();
$EFFECTIVE_USER_ID = ();
$EUID = ();
$( = ();
$REAL_GROUP_ID = ();
$GID = ();
$) = ();
$EFFECTIVE_GROUP_ID = ();
$EGID = ();
$0 = ();
$PROGRAM_NAME = ();
$[ = ();
$] = ();
$ACCUMULATOR = ();
$COMPILING = ();
$DEBUGGING = ();
$EXTENDED_OS_ERROR = ();
$SYSTEM_FD_MAX = ();
$INPLACE_EDIT = ();
$FORMAT_FORMFEED = ();
$LAST_SUBMATCH_RESULT = ();
$OSNAME = ();
$PERLDB = ();
$LAST_REGEXP_CODE_RESULT = ();
$EXCEPTIONS_BEING_CAUGHT = ();
$BASETIME = ();
$PERL_VERSION = ();
$WARNING = ();
$EXECUTABLE_NAME = ();
$ARGV = ();
*ARGV = ();
*_ = ();
*ARGVOUT = ();
*DATA = ();
*STDIN = ();
*STDOUT = ();
*STDERR = ();

===
--- dscr: Named magic variables, fail non-local, carats
--- failures: 37
--- params:
--- input
%^H = ();
$^CHILD_ERROR_NATIVE = ();
$^A = ();
$^C = ();
$^CHILD_ERROR_NATIVE = ();
$^D = ();
$^E = ();
$^ENCODING = ();
$^F = ();
$^GLOBAL_PHASE = ();
$^H = ();
$^I = ();
$^L = ();
$^LAST_FH = ();
$^M = ();
$^MATCH = ();
$^N = ();
$^O = ();
$^OPEN = ();
$^P = ();
$^PREMATCH = ();
$^POSTMATCH = ();
$^R = ();
$^RE_DEBUG_FLAGS = ();
$^RE_TRIE_MAXBUF = ();
$^S = ();
$^T = ();
$^TAINT = ();
$^UNICODE = ();
$^UTF8CACHE = ();
$^UTF8LOCALE = ();
$^V = ();
$^W = ();
$^WARNING_BITS = ();
$^WIDE_SYSTEM_CALLS = ();
$^WIN32_SLOPPY_STAT = ();
$^X = ();

===
--- dscr: Named magic variables, fail non-local, carats, no space
--- failures: 37
--- params:
--- input
%^H= ();
$^CHILD_ERROR_NATIVE= ();
$^A= ();
$^C= ();
$^CHILD_ERROR_NATIVE= ();
$^D= ();
$^E= ();
$^ENCODING= ();
$^F= ();
$^GLOBAL_PHASE= ();
$^H= ();
$^I= ();
$^L= ();
$^LAST_FH= ();
$^M= ();
$^MATCH= ();
$^N= ();
$^O= ();
$^OPEN= ();
$^P= ();
$^PREMATCH= ();
$^POSTMATCH= ();
$^R= ();
$^RE_DEBUG_FLAGS= ();
$^RE_TRIE_MAXBUF= ();
$^S= ();
$^T= ();
$^TAINT= ();
$^UNICODE= ();
$^UTF8CACHE= ();
$^UTF8LOCALE= ();
$^V= ();
$^W= ();
$^WARNING_BITS= ();
$^WIDE_SYSTEM_CALLS= ();
$^WIN32_SLOPPY_STAT= ();
$^X= ();

===
--- dscr: Named magic variables, fail = (non-local) =
--- failures: 151
--- params:
--- input
@foo = (@+) = ();
@foo = ($LAST_MATCH_END) = ();
@foo = (@-) = ();
@foo = (@LAST_MATCH_START) = ();
@foo = (@ARGV) = ();
@foo = (@F) = ();
@foo = (@INC) = ();
@foo = (@ARG) = ();
@foo = (%OVERLOAD) = ();
@foo = (%+) = ();
@foo = (%LAST_MATCH_END) = ();
@foo = (%-) = ();
@foo = (%LAST_MATCH_START) = ();
@foo = (%!) = ();
@foo = (%OS_ERROR) = ();
@foo = (%ERRNO) = ();
@foo = (%^H) = ();
@foo = (%INC) = ();
@foo = (%ENV) = ();
@foo = (%SIG) = ();
@foo = ($a) = ();
@foo = ($b) = ();
@foo = ($&) = ();
@foo = ($MATCH) = ();
@foo = ($`) = ();
@foo = ($PREMATCH) = ();
@foo = ($') = ();
@foo = ($POSTMATCH) = ();
@foo = ($+) = ();
@foo = ($LAST_PAREN_MATCH) = ();
@foo = ($*) = ();
@foo = ($MULTILINE_MATCHING) = ();
@foo = ($.) = ();
@foo = ($INPUT_LINE_NUMBER) = ();
@foo = ($NR) = ();
@foo = ($/) = ();
@foo = ($INPUT_RECORD_SEPARATOR) = ();
@foo = ($RS) = ();
@foo = ($|) = ();
@foo = ($OUTPUT_AUTO_FLUSH) = ();
@foo = ($,) = ();
@foo = ($OUTPUT_FIELD_SEPARATOR) = ();
@foo = ($OFS) = ();
@foo = ($\) = ();
@foo = ($OUTPUT_RECORD_SEPARATOR) = ();
@foo = ($ORS) = ();
@foo = ($") = ();
@foo = ($LIST_SEPARATOR) = ();
@foo = ($;) = ();
@foo = ($SUBSCRIPT_SEPARATOR) = ();
@foo = ($SUBSEP) = ();
@foo = ($#) = ();
@foo = ($OFMT) = ();
@foo = ($%) = ();
@foo = ($FORMAT_PAGE_NUMBER) = ();
@foo = ($=) = ();
@foo = ($FORMAT_LINES_PER_PAGE) = ();
@foo = ($-) = ();
@foo = ($FORMAT_LINES_LEFT) = ();
@foo = ($~) = ();
@foo = ($FORMAT_NAME) = ();
@foo = ($^) = ();
@foo = ($FORMAT_TOP_NAME) = ();
@foo = ($:) = ();
@foo = ($FORMAT_LINE_BREAK_CHARACTERS) = ();
@foo = ($?) = ();
@foo = ($CHILD_ERROR) = ();
@foo = ($^CHILD_ERROR_NATIVE) = ();
@foo = ($!) = ();
@foo = ($ERRNO) = ();
@foo = ($OS_ERROR) = ();
@foo = ($@) = ();
@foo = ($EVAL_ERROR) = ();
@foo = ($$) = ();
@foo = ($PROCESS_ID) = ();
@foo = ($PID) = ();
@foo = ($<) = ();
@foo = ($REAL_USER_ID) = ();
@foo = ($UID) = ();
@foo = ($>) = ();
@foo = ($EFFECTIVE_USER_ID) = ();
@foo = ($EUID) = ();
@foo = ($() = ();
@foo = ($REAL_GROUP_ID) = ();
@foo = ($GID) = ();
@foo = ($)) = ();
@foo = ($EFFECTIVE_GROUP_ID) = ();
@foo = ($EGID) = ();
@foo = ($0) = ();
@foo = ($PROGRAM_NAME) = ();
@foo = ($[) = ();
@foo = ($]) = ();
@foo = ($^A) = ();
@foo = ($ACCUMULATOR) = ();
@foo = ($^C) = ();
@foo = ($COMPILING) = ();
@foo = ($^CHILD_ERROR_NATIVE) = ();
@foo = ($^D) = ();
@foo = ($DEBUGGING) = ();
@foo = ($^E) = ();
@foo = ($EXTENDED_OS_ERROR) = ();
@foo = ($^ENCODING) = ();
@foo = ($^F) = ();
@foo = ($SYSTEM_FD_MAX) = ();
@foo = ($^GLOBAL_PHASE) = ();
@foo = ($^H) = ();
@foo = ($^I) = ();
@foo = ($INPLACE_EDIT) = ();
@foo = ($^L) = ();
@foo = ($FORMAT_FORMFEED) = ();
@foo = ($^LAST_FH) = ();
@foo = ($^M) = ();
@foo = ($^MATCH) = ();
@foo = ($^N) = ();
@foo = ($LAST_SUBMATCH_RESULT) = ();
@foo = ($^O) = ();
@foo = ($OSNAME) = ();
@foo = ($^OPEN) = ();
@foo = ($^P) = ();
@foo = ($PERLDB) = ();
@foo = ($^PREMATCH) = ();
@foo = ($^POSTMATCH) = ();
@foo = ($^R) = ();
@foo = ($LAST_REGEXP_CODE_RESULT) = ();
@foo = ($^RE_DEBUG_FLAGS) = ();
@foo = ($^RE_TRIE_MAXBUF) = ();
@foo = ($^S) = ();
@foo = ($EXCEPTIONS_BEING_CAUGHT) = ();
@foo = ($^T) = ();
@foo = ($BASETIME) = ();
@foo = ($^TAINT) = ();
@foo = ($^UNICODE) = ();
@foo = ($^UTF8CACHE) = ();
@foo = ($^UTF8LOCALE) = ();
@foo = ($^V) = ();
@foo = ($PERL_VERSION) = ();
@foo = ($^W) = ();
@foo = ($WARNING) = ();
@foo = ($^WARNING_BITS) = ();
@foo = ($^WIDE_SYSTEM_CALLS) = ();
@foo = ($^WIN32_SLOPPY_STAT) = ();
@foo = ($^X) = ();
@foo = ($EXECUTABLE_NAME) = ();
@foo = ($ARGV) = ();
@foo = (*ARGV) = ();
@foo = (*_) = ();
@foo = (*ARGVOUT) = ();
@foo = (*DATA) = ();
@foo = (*STDIN) = ();
@foo = (*STDOUT) = ();
@foo = (*STDERR) = ();

===
--- dscr: Named magic variables, fail (non-local)
--- failures: 151
--- params:
--- input
(@+) = ();
($LAST_MATCH_END) = ();
(@-) = ();
(@LAST_MATCH_START) = ();
(@ARGV) = ();
(@F) = ();
(@INC) = ();
(@ARG) = ();
(%OVERLOAD) = ();
(%+) = ();
(%LAST_MATCH_END) = ();
(%-) = ();
(%LAST_MATCH_START) = ();
(%!) = ();
(%OS_ERROR) = ();
(%ERRNO) = ();
(%^H) = ();
(%INC) = ();
(%ENV) = ();
(%SIG) = ();
($a) = ();
($b) = ();
($&) = ();
($MATCH) = ();
($`) = ();
($PREMATCH) = ();
($') = ();
($POSTMATCH) = ();
($+) = ();
($LAST_PAREN_MATCH) = ();
($*) = ();
($MULTILINE_MATCHING) = ();
($.) = ();
($INPUT_LINE_NUMBER) = ();
($NR) = ();
($/) = ();
($INPUT_RECORD_SEPARATOR) = ();
($RS) = ();
($|) = ();
($OUTPUT_AUTO_FLUSH) = ();
($,) = ();
($OUTPUT_FIELD_SEPARATOR) = ();
($OFS) = ();
($\) = ();
($OUTPUT_RECORD_SEPARATOR) = ();
($ORS) = ();
($") = ();
($LIST_SEPARATOR) = ();
($;) = ();
($SUBSCRIPT_SEPARATOR) = ();
($SUBSEP) = ();
($#) = ();
($OFMT) = ();
($%) = ();
($FORMAT_PAGE_NUMBER) = ();
($=) = ();
($FORMAT_LINES_PER_PAGE) = ();
($-) = ();
($FORMAT_LINES_LEFT) = ();
($~) = ();
($FORMAT_NAME) = ();
($^) = ();
($FORMAT_TOP_NAME) = ();
($:) = ();
($FORMAT_LINE_BREAK_CHARACTERS) = ();
($?) = ();
($CHILD_ERROR) = ();
($^CHILD_ERROR_NATIVE) = ();
($!) = ();
($ERRNO) = ();
($OS_ERROR) = ();
($@) = ();
($EVAL_ERROR) = ();
($$) = ();
($PROCESS_ID) = ();
($PID) = ();
($<) = ();
($REAL_USER_ID) = ();
($UID) = ();
($>) = ();
($EFFECTIVE_USER_ID) = ();
($EUID) = ();
($() = ();
($REAL_GROUP_ID) = ();
($GID) = ();
($)) = ();
($EFFECTIVE_GROUP_ID) = ();
($EGID) = ();
($0) = ();
($PROGRAM_NAME) = ();
($[) = ();
($]) = ();
($^A) = ();
($ACCUMULATOR) = ();
($^C) = ();
($COMPILING) = ();
($^CHILD_ERROR_NATIVE) = ();
($^D) = ();
($DEBUGGING) = ();
($^E) = ();
($EXTENDED_OS_ERROR) = ();
($^ENCODING) = ();
($^F) = ();
($SYSTEM_FD_MAX) = ();
($^GLOBAL_PHASE) = ();
($^H) = ();
($^I) = ();
($INPLACE_EDIT) = ();
($^L) = ();
($FORMAT_FORMFEED) = ();
($^LAST_FH) = ();
($^M) = ();
($^MATCH) = ();
($^N) = ();
($LAST_SUBMATCH_RESULT) = ();
($^O) = ();
($OSNAME) = ();
($^OPEN) = ();
($^P) = ();
($PERLDB) = ();
($^PREMATCH) = ();
($^POSTMATCH) = ();
($^R) = ();
($LAST_REGEXP_CODE_RESULT) = ();
($^RE_DEBUG_FLAGS) = ();
($^RE_TRIE_MAXBUF) = ();
($^S) = ();
($EXCEPTIONS_BEING_CAUGHT) = ();
($^T) = ();
($BASETIME) = ();
($^TAINT) = ();
($^UNICODE) = ();
($^UTF8CACHE) = ();
($^UTF8LOCALE) = ();
($^V) = ();
($PERL_VERSION) = ();
($^W) = ();
($WARNING) = ();
($^WARNING_BITS) = ();
($^WIDE_SYSTEM_CALLS) = ();
($^WIN32_SLOPPY_STAT) = ();
($^X) = ();
($EXECUTABLE_NAME) = ();
($ARGV) = ();
(*ARGV) = ();
(*_) = ();
(*ARGVOUT) = ();
(*DATA) = ();
(*STDIN) = ();
(*STDOUT) = ();
(*STDERR) = ();

===
--- dscr: Named magic variables, fail non-local dereferenced
--- failures: 19
--- params:
--- input
$+[0] = 'bar';
$-[0] = 'bar';
$LAST_MATCH_START[0] = 'bar';
$ARGV[0] = 'bar';
$F[0] = 'bar';
$INC[0] = 'bar';
$ARG[0] = 'bar';
$OVERLOAD{foo} = 'bar';
$+{foo} = 'bar';
$LAST_MATCH_END{foo} = 'bar';
$-{foo} = 'bar';
$LAST_MATCH_START{foo} = 'bar';
$!{foo} = 'bar';
$OS_ERROR{foo} = 'bar';
$ERRNO{foo} = 'bar';
$^H{foo} = 'bar';
$INC{foo} = 'bar';
$ENV{foo} = 'bar';
$SIG{foo} = 'bar';

===
--- dscr: Allowing a variable with a particular sigil doesn't allow other variables with the same name but different sigils
--- failures: 1
--- params: {require_localized_punctuation_vars => {allow => '$ARGV'}}
--- input
@ARGV = (1, 2, 3);

===
--- dscr: Allow "my" as well, RT #33937
--- failures: 0
--- params:
--- input
for my $entry (
   sort {
       my @a = split m{,}xms, $a;
       my @b = split m{,}xms, $b;
       $a[0] cmp $b[0] || $a[1] <=> $b[1]
   } qw( b,6 c,3 )
   )
{
   print;
}

===
--- dscr: no lint
--- failures: 4
--- params:
--- input
$+[0] = 'bar';
$-[0] = 'bar';
$LAST_MATCH_START[0] = 'bar'; ## no lint
$ARGV[0] = 'bar';
$F[0] = 'bar';
