.class public Lgnu/kawa/lispexpr/ResolveNamespace;
.super Lkawa/lang/Syntax;
.source "ResolveNamespace.java"


# static fields
.field public static final resolveNamespace:Lgnu/kawa/lispexpr/ResolveNamespace;

.field public static final resolveQName:Lgnu/kawa/lispexpr/ResolveNamespace;


# instance fields
.field resolvingQName:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 12
    new-instance v0, Lgnu/kawa/lispexpr/ResolveNamespace;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "$resolve-namespace$"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lgnu/kawa/lispexpr/ResolveNamespace;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lgnu/kawa/lispexpr/ResolveNamespace;->resolveNamespace:Lgnu/kawa/lispexpr/ResolveNamespace;

    .line 14
    new-instance v0, Lgnu/kawa/lispexpr/ResolveNamespace;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "$resolve-qname"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lgnu/kawa/lispexpr/ResolveNamespace;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lgnu/kawa/lispexpr/ResolveNamespace;->resolveQName:Lgnu/kawa/lispexpr/ResolveNamespace;

    .line 25
    sget-object v0, Lgnu/kawa/lispexpr/ResolveNamespace;->resolveNamespace:Lgnu/kawa/lispexpr/ResolveNamespace;

    const-string/jumbo v1, "$resolve-namespace$"

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/ResolveNamespace;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ResolveNamespace;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "resolvingQName":Z
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 22
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lgnu/kawa/lispexpr/ResolveNamespace;->resolvingQName:Z

    .line 23
    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 13

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ResolveNamespace;
    move-object v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v8, v1

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/lists/Pair;

    move-object v3, v8

    .line 30
    .local v3, "pair":Lgnu/lists/Pair;
    move-object v8, v2

    move-object v9, v3

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v8

    move-object v4, v8

    .line 31
    .local v4, "prefix":Lgnu/expr/Expression;
    move-object v8, v2

    move-object v9, v4

    invoke-virtual {v8, v9}, Lkawa/lang/Translator;->namespaceResolvePrefix(Lgnu/expr/Expression;)Lgnu/mapping/Namespace;

    move-result-object v8

    move-object v5, v8

    .line 32
    .local v5, "namespace":Lgnu/mapping/Namespace;
    move-object v8, v5

    if-nez v8, :cond_0

    .line 34
    move-object v8, v3

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 35
    .local v6, "pstr":Ljava/lang/String;
    move-object v8, v6

    const-string/jumbo v9, "[default-element-namespace]"

    if-ne v8, v9, :cond_1

    .line 36
    sget-object v8, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    move-object v5, v8

    .line 45
    .end local v6    # "pstr":Ljava/lang/String;
    :cond_0
    :goto_0
    move-object v8, v0

    iget-boolean v8, v8, Lgnu/kawa/lispexpr/ResolveNamespace;->resolvingQName:Z

    if-eqz v8, :cond_2

    .line 47
    move-object v8, v3

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/lists/Pair;

    move-object v3, v8

    .line 48
    move-object v8, v3

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 49
    .local v6, "local":Ljava/lang/String;
    new-instance v8, Lgnu/expr/QuoteExp;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v5

    move-object v11, v6

    invoke-virtual {v10, v11}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v10

    invoke-direct {v9, v10}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v0, v8

    .line 52
    .end local v0    # "this":Lgnu/kawa/lispexpr/ResolveNamespace;
    .end local v6    # "local":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 39
    .restart local v0    # "this":Lgnu/kawa/lispexpr/ResolveNamespace;
    .local v6, "pstr":Ljava/lang/String;
    :cond_1
    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v8, v9}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .line 40
    .local v7, "savePos":Ljava/lang/Object;
    move-object v8, v2

    const/16 v9, 0x65

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unknown namespace prefix "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 41
    move-object v8, v2

    move-object v9, v7

    invoke-virtual {v8, v9}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 42
    move-object v8, v6

    move-object v9, v6

    invoke-static {v8, v9}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v8

    move-object v5, v8

    goto :goto_0

    .line 52
    .end local v6    # "pstr":Ljava/lang/String;
    .end local v7    # "savePos":Ljava/lang/Object;
    :cond_2
    new-instance v8, Lgnu/expr/QuoteExp;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v5

    invoke-direct {v9, v10}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v0, v8

    goto :goto_1
.end method
