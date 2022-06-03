.class public Lkawa/lib/prim_syntax$frame;
.super Lgnu/expr/ModuleBody;
.source "prim_syntax.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/lib/prim_syntax;->lambda3(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation


# instance fields
.field $unnamed$0:[Ljava/lang/Object;

.field out$Mnbindings:Ljava/lang/Object;

.field out$Mninits:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda4processBinding(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lkawa/lib/prim_syntax$frame;
    move-object v1, p1

    .local v1, "b":Ljava/lang/Object;
    move-object v5, v1

    const/16 v6, 0x8

    move-object v7, v0

    iget-object v7, v7, Lkawa/lib/prim_syntax$frame;->$unnamed$0:[Ljava/lang/Object;

    invoke-static {v6, v7}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    move-object v2, v5

    sget-object v5, Lkawa/lib/prim_syntax;->Lit34:Lkawa/lang/SyntaxPattern;

    move-object v6, v1

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 121
    :goto_0
    move-object v0, v5

    .end local v0    # "this":Lkawa/lib/prim_syntax$frame;
    return-object v0

    .line 104
    .restart local v0    # "this":Lkawa/lib/prim_syntax$frame;
    :cond_0
    sget-object v5, Lkawa/lib/prim_syntax;->Lit35:Lkawa/lang/SyntaxPattern;

    move-object v6, v1

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    move-object v5, v0

    new-instance v6, Lgnu/lists/Pair;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v8

    move-object v4, v8

    sget-object v8, Lkawa/lib/prim_syntax;->Lit36:Lkawa/lang/SyntaxTemplate;

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v8, v9, v10}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lkawa/lib/prim_syntax$frame;->out$Mnbindings:Ljava/lang/Object;

    invoke-direct {v7, v8, v9}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v6, v5, Lkawa/lib/prim_syntax$frame;->out$Mnbindings:Ljava/lang/Object;

    .line 111
    move-object v5, v0

    new-instance v6, Lgnu/lists/Pair;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v8

    move-object v4, v8

    sget-object v8, Lkawa/lib/prim_syntax;->Lit37:Lkawa/lang/SyntaxTemplate;

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v8, v9, v10}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lkawa/lib/prim_syntax$frame;->out$Mninits:Ljava/lang/Object;

    invoke-direct {v7, v8, v9}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v6, v5, Lkawa/lib/prim_syntax$frame;->out$Mninits:Ljava/lang/Object;

    .line 112
    move-object v5, v0

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v6

    move-object v4, v6

    sget-object v6, Lkawa/lib/prim_syntax;->Lit38:Lkawa/lang/SyntaxTemplate;

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lkawa/lib/prim_syntax$frame;->lambda4processBinding(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :cond_1
    sget-object v5, Lkawa/lib/prim_syntax;->Lit39:Lkawa/lang/SyntaxPattern;

    move-object v6, v1

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 114
    move-object v5, v0

    new-instance v6, Lgnu/lists/Pair;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v8

    move-object v4, v8

    sget-object v8, Lkawa/lib/prim_syntax;->Lit40:Lkawa/lang/SyntaxTemplate;

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v8, v9, v10}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lkawa/lib/prim_syntax$frame;->out$Mnbindings:Ljava/lang/Object;

    invoke-direct {v7, v8, v9}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v6, v5, Lkawa/lib/prim_syntax$frame;->out$Mnbindings:Ljava/lang/Object;

    .line 116
    move-object v5, v0

    new-instance v6, Lgnu/lists/Pair;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v8

    move-object v4, v8

    sget-object v8, Lkawa/lib/prim_syntax;->Lit41:Lkawa/lang/SyntaxTemplate;

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v8, v9, v10}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lkawa/lib/prim_syntax$frame;->out$Mninits:Ljava/lang/Object;

    invoke-direct {v7, v8, v9}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v6, v5, Lkawa/lib/prim_syntax$frame;->out$Mninits:Ljava/lang/Object;

    .line 117
    move-object v5, v0

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v6

    move-object v4, v6

    sget-object v6, Lkawa/lib/prim_syntax;->Lit42:Lkawa/lang/SyntaxTemplate;

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lkawa/lib/prim_syntax$frame;->lambda4processBinding(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    :cond_2
    sget-object v5, Lkawa/lib/prim_syntax;->Lit43:Lkawa/lang/SyntaxPattern;

    move-object v6, v1

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 119
    move-object v5, v1

    const-string/jumbo v6, "missing initializion in letrec"

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    instance-of v7, v7, [Ljava/lang/Object;

    if-eqz v7, :cond_3

    check-cast v6, [Ljava/lang/Object;

    :goto_1
    invoke-static {v5, v6}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v5

    goto/16 :goto_0

    :cond_3
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    move-object v8, v12

    move-object v11, v7

    move-object v12, v8

    move-object v7, v12

    move-object v8, v11

    const/4 v9, 0x0

    move-object v11, v8

    move v12, v9

    move v8, v12

    move-object v9, v11

    aput-object v9, v7, v8

    goto :goto_1

    :cond_4
    sget-object v5, Lkawa/lib/prim_syntax;->Lit44:Lkawa/lang/SyntaxPattern;

    move-object v6, v1

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 121
    move-object v5, v1

    const-string/jumbo v6, "invalid bindings syntax in letrec"

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    instance-of v7, v7, [Ljava/lang/Object;

    if-eqz v7, :cond_5

    check-cast v6, [Ljava/lang/Object;

    :goto_2
    invoke-static {v5, v6}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v5

    goto/16 :goto_0

    :cond_5
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    move-object v8, v12

    move-object v11, v7

    move-object v12, v8

    move-object v7, v12

    move-object v8, v11

    const/4 v9, 0x0

    move-object v11, v8

    move v12, v9

    move v8, v12

    move-object v9, v11

    aput-object v9, v7, v8

    goto :goto_2

    :cond_6
    const-string/jumbo v5, "syntax-case"

    move-object v6, v1

    invoke-static {v5, v6}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0
.end method
