typedef int YYSTYPE;

%{
#include "y.tab.h"
#include <math.h>

extern YYSTYPE yylval;
%}

%%
[0-9]+  { yylval = atoi(yytext); return NUM; }
[+]     { return '+'; }
[-]     { return '-'; }
[*]     { return '*'; }
[/]     { return '/'; }
[\t]+   ;
" "     { }
[\n]    { return 0; }
.       { return yytext[0]; }
%%

