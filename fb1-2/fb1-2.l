%%
"colour" { printf("flavor"); }
"flavour" { printf("flavor"); }
"clever" { printf("smart"); }
"smart" { printf("elegant"); }
"conservative" { printf("liberal"); }
. { printf("%s", yytext); }
%%

int main()
{
	yylex();
}
int yywrap() { return 1; }
