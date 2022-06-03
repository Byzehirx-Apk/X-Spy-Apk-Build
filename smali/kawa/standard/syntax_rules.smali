.class public Lkawa/standard/syntax_rules;
.super Lkawa/lang/Syntax;
.source "syntax_rules.java"


# static fields
.field public static final syntax_rules:Lkawa/standard/syntax_rules;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lkawa/standard/syntax_rules;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkawa/standard/syntax_rules;-><init>()V

    sput-object v0, Lkawa/standard/syntax_rules;->syntax_rules:Lkawa/standard/syntax_rules;

    .line 11
    sget-object v0, Lkawa/standard/syntax_rules;->syntax_rules:Lkawa/standard/syntax_rules;

    const-string/jumbo v1, "syntax-rules"

    invoke-virtual {v0, v1}, Lkawa/standard/syntax_rules;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lkawa/standard/syntax_rules;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 12

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lkawa/standard/syntax_rules;
    move-object v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/lists/Pair;

    move-object v3, v6

    .line 17
    .local v3, "pair":Lgnu/lists/Pair;
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v2

    invoke-static {v6, v7, v8}, Lkawa/lang/SyntaxPattern;->getLiteralsList(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lkawa/lang/Translator;)[Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 19
    .local v4, "literal_identifiers":[Ljava/lang/Object;
    new-instance v6, Lkawa/lang/SyntaxRules;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v4

    move-object v9, v3

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v2

    invoke-direct {v7, v8, v9, v10}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;)V

    move-object v5, v6

    .line 21
    .local v5, "rules":Lkawa/lang/SyntaxRules;
    new-instance v6, Lgnu/expr/QuoteExp;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v5

    invoke-direct {v7, v8}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v0, v6

    .end local v0    # "this":Lkawa/standard/syntax_rules;
    return-object v0
.end method
