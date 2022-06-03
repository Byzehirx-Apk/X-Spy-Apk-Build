.class public Lkawa/lib/syntax$frame0;
.super Lgnu/expr/ModuleBody;
.source "syntax.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/lib/syntax;->lambda5(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame0"
.end annotation


# instance fields
.field $unnamed$0:Lkawa/lang/TemplateScope;

.field $unnamed$1:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda6loop(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lkawa/lib/syntax$frame0;
    move-object v1, p1

    .local v1, "clauses":Ljava/lang/Object;
    move-object v4, v1

    const/4 v5, 0x5

    move-object v6, v0

    iget-object v6, v6, Lkawa/lib/syntax$frame0;->$unnamed$1:[Ljava/lang/Object;

    invoke-static {v5, v6}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    move-object v2, v4

    sget-object v4, Lkawa/lib/syntax;->Lit85:Lkawa/lang/SyntaxPattern;

    move-object v5, v1

    move-object v6, v3

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    sget-object v4, Lkawa/lib/syntax;->Lit86:Lkawa/lang/SyntaxTemplate;

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lkawa/lib/syntax$frame0;->$unnamed$0:Lkawa/lang/TemplateScope;

    invoke-virtual {v4, v5, v6}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v0

    sget-object v6, Lkawa/lib/syntax;->Lit87:Lkawa/lang/SyntaxTemplate;

    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Lkawa/lib/syntax$frame0;->$unnamed$0:Lkawa/lang/TemplateScope;

    invoke-virtual {v6, v7, v8}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lkawa/lib/syntax$frame0;->lambda6loop(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    :goto_0
    move-object v0, v4

    .end local v0    # "this":Lkawa/lib/syntax$frame0;
    return-object v0

    .restart local v0    # "this":Lkawa/lib/syntax$frame0;
    :cond_0
    sget-object v4, Lkawa/lib/syntax;->Lit88:Lkawa/lang/SyntaxPattern;

    move-object v5, v1

    move-object v6, v3

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_0

    :cond_1
    sget-object v4, Lkawa/lib/syntax;->Lit89:Lkawa/lang/SyntaxPattern;

    move-object v5, v1

    move-object v6, v3

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lkawa/lib/syntax;->Lit90:Lkawa/lang/SyntaxTemplate;

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lkawa/lib/syntax$frame0;->$unnamed$0:Lkawa/lang/TemplateScope;

    invoke-virtual {v4, v5, v6}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "invalid case-lambda clause"

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    instance-of v6, v6, [Ljava/lang/Object;

    if-eqz v6, :cond_2

    check-cast v5, [Ljava/lang/Object;

    :goto_1
    invoke-static {v4, v5}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    invoke-static {v4}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v9, v5

    move-object v10, v6

    move-object v5, v10

    move-object v6, v9

    move-object v7, v10

    move-object v9, v6

    move-object v10, v7

    move-object v6, v10

    move-object v7, v9

    const/4 v8, 0x0

    move-object v9, v7

    move v10, v8

    move v7, v10

    move-object v8, v9

    aput-object v8, v6, v7

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "syntax-case"

    move-object v5, v1

    invoke-static {v4, v5}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method
