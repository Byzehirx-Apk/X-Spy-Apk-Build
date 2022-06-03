.class public Lkawa/standard/syntax;
.super Lkawa/lang/Quote;
.source "syntax.java"


# static fields
.field static final makeTemplateScopeMethod:Lgnu/bytecode/Method;

.field public static final quasiSyntax:Lkawa/standard/syntax;

.field public static final syntax:Lkawa/standard/syntax;

.field static final typeTemplateScope:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 9
    new-instance v0, Lkawa/standard/syntax;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "syntax"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lkawa/standard/syntax;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/syntax;->syntax:Lkawa/standard/syntax;

    .line 10
    new-instance v0, Lkawa/standard/syntax;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "quasisyntax"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkawa/standard/syntax;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/syntax;->quasiSyntax:Lkawa/standard/syntax;

    .line 22
    const-string/jumbo v0, "kawa.lang.TemplateScope"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lkawa/standard/syntax;->typeTemplateScope:Lgnu/bytecode/ClassType;

    .line 24
    sget-object v0, Lkawa/standard/syntax;->typeTemplateScope:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "make"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lkawa/standard/syntax;->makeTemplateScopeMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lkawa/standard/syntax;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "isQuasi":Z
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lkawa/lang/Quote;-><init>(Ljava/lang/String;Z)V

    .line 15
    return-void
.end method

.method static makeSyntax(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 13

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "form":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "tr":Lkawa/lang/Translator;
    new-instance v6, Lkawa/lang/SyntaxTemplate;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    const/4 v9, 0x0

    move-object v10, v1

    invoke-direct {v7, v8, v9, v10}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lkawa/lang/Translator;)V

    move-object v2, v6

    .line 66
    .local v2, "template":Lkawa/lang/SyntaxTemplate;
    sget-object v6, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    move-object v3, v6

    .line 67
    .local v3, "matchArray":Lgnu/expr/Expression;
    move-object v6, v1

    iget-object v6, v6, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    move-object v4, v6

    .line 68
    .local v4, "patternScope":Lkawa/lang/PatternScope;
    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v4

    iget-object v6, v6, Lkawa/lang/PatternScope;->matchArray:Lgnu/expr/Declaration;

    if-eqz v6, :cond_0

    .line 69
    new-instance v6, Lgnu/expr/ReferenceExp;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v4

    iget-object v8, v8, Lkawa/lang/PatternScope;->matchArray:Lgnu/expr/Declaration;

    invoke-direct {v7, v8}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object v3, v6

    .line 70
    :cond_0
    const/4 v6, 0x3

    new-array v6, v6, [Lgnu/expr/Expression;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    new-instance v9, Lgnu/expr/QuoteExp;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v2

    invoke-direct {v10, v11}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x1

    move-object v9, v3

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x2

    new-instance v9, Lgnu/expr/ReferenceExp;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v1

    iget-object v11, v11, Lkawa/lang/Translator;->templateScopeDecl:Lgnu/expr/Declaration;

    invoke-direct {v10, v11}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v9, v7, v8

    move-object v5, v6

    .line 71
    .local v5, "args":[Lgnu/expr/Expression;
    new-instance v6, Lgnu/expr/ApplyExp;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string/jumbo v8, "kawa.lang.SyntaxTemplate"

    invoke-static {v8}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v8

    const-string/jumbo v9, "execute"

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v8

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v0, v6

    .end local v0    # "form":Ljava/lang/Object;
    return-object v0
.end method


# virtual methods
.method protected expandColonForms()Z
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lkawa/standard/syntax;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lkawa/standard/syntax;
    return v0
.end method

.method protected leaf(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 5

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lkawa/standard/syntax;
    move-object v1, p1

    .local v1, "val":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lkawa/standard/syntax;->makeSyntax(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lkawa/standard/syntax;
    return-object v0
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 13

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lkawa/standard/syntax;
    move-object v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lgnu/lists/Pair;

    if-eqz v7, :cond_0

    move-object v7, v1

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/lists/Pair;

    check-cast v7, Lgnu/lists/Pair;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v1, v8

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v7, v8, :cond_1

    .line 31
    :cond_0
    move-object v7, v2

    const-string/jumbo v8, "syntax forms requires a single form"

    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v7

    move-object v0, v7

    .line 54
    .end local v0    # "this":Lkawa/standard/syntax;
    :goto_0
    return-object v0

    .line 32
    .restart local v0    # "this":Lkawa/standard/syntax;
    :cond_1
    move-object v7, v2

    iget-object v7, v7, Lkawa/lang/Translator;->templateScopeDecl:Lgnu/expr/Declaration;

    move-object v3, v7

    .line 33
    .local v3, "saveTemplateScopeDecl":Lgnu/expr/Declaration;
    move-object v7, v3

    if-nez v7, :cond_2

    .line 35
    move-object v7, v2

    invoke-virtual {v7}, Lkawa/lang/Translator;->letStart()V

    .line 36
    new-instance v7, Lgnu/expr/ApplyExp;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    sget-object v9, Lkawa/standard/syntax;->makeTemplateScopeMethod:Lgnu/bytecode/Method;

    sget-object v10, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    invoke-direct {v8, v9, v10}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v4, v7

    .line 39
    .local v4, "init":Lgnu/expr/Expression;
    move-object v7, v2

    const/4 v8, 0x0

    sget-object v9, Lkawa/standard/syntax;->typeTemplateScope:Lgnu/bytecode/ClassType;

    move-object v10, v4

    invoke-virtual {v7, v8, v9, v10}, Lkawa/lang/Translator;->letVariable(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/Expression;)Lgnu/expr/Declaration;

    move-result-object v7

    move-object v5, v7

    .line 40
    .local v5, "templateScopeDecl":Lgnu/expr/Declaration;
    move-object v7, v5

    invoke-virtual {v7}, Lgnu/expr/Declaration;->setCanRead()V

    .line 41
    move-object v7, v2

    move-object v8, v5

    iput-object v8, v7, Lkawa/lang/Translator;->templateScopeDecl:Lgnu/expr/Declaration;

    .line 42
    move-object v7, v2

    invoke-virtual {v7}, Lkawa/lang/Translator;->letEnter()V

    .line 47
    .end local v4    # "init":Lgnu/expr/Expression;
    .end local v5    # "templateScopeDecl":Lgnu/expr/Declaration;
    :cond_2
    move-object v7, v0

    move-object v8, v0

    move-object v9, v1

    :try_start_0
    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v0

    iget-boolean v10, v10, Lkawa/standard/syntax;->isQuasi:Z

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    :goto_1
    move-object v11, v2

    invoke-virtual {v8, v9, v10, v11}, Lkawa/standard/syntax;->expand(Ljava/lang/Object;ILkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lkawa/standard/syntax;->coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v7

    move-object v4, v7

    .line 50
    .local v4, "body":Lgnu/expr/Expression;
    move-object v7, v3

    if-nez v7, :cond_4

    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->letDone(Lgnu/expr/Expression;)Lgnu/expr/LetExp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    :goto_2
    move-object v5, v7

    .line 54
    move-object v7, v2

    move-object v8, v3

    iput-object v8, v7, Lkawa/lang/Translator;->templateScopeDecl:Lgnu/expr/Declaration;

    move-object v7, v5

    move-object v0, v7

    goto :goto_0

    .line 47
    .end local v4    # "body":Lgnu/expr/Expression;
    :cond_3
    const/4 v10, -0x1

    goto :goto_1

    .line 50
    .restart local v4    # "body":Lgnu/expr/Expression;
    :cond_4
    move-object v7, v4

    goto :goto_2

    .line 54
    .end local v4    # "body":Lgnu/expr/Expression;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v2

    move-object v8, v3

    iput-object v8, v7, Lkawa/lang/Translator;->templateScopeDecl:Lgnu/expr/Declaration;

    move-object v7, v6

    throw v7
.end method
