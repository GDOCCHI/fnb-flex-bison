%{
 #include "fb1-5.tab.h"
 int yyerror(char *s);
 extern int yylval;
%}

%%
"+" { return ADD; }
"-" { return SUB; }
"*" { return MUL; }
"/" { return DIV; }
"|" { return ABS; }
[0-9]+ { yylval = atoi(yytext); return NUMBER; }
\n { return EOL; }
"//".*
[ \t] { /* ignore white space */ }
. { printf("Mystery character %c\n", *yytext); }
%%
