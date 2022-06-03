.class public Lkawa/standard/begin;
.super Lkawa/lang/Syntax;
.source "begin.java"


# static fields
.field public static final begin:Lkawa/standard/begin;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Lkawa/standard/begin;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkawa/standard/begin;-><init>()V

    sput-object v0, Lkawa/standard/begin;->begin:Lkawa/standard/begin;

    .line 15
    sget-object v0, Lkawa/standard/begin;->begin:Lkawa/standard/begin;

    const-string/jumbo v1, "begin"

    invoke-virtual {v0, v1}, Lkawa/standard/begin;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lkawa/standard/begin;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 5

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lkawa/standard/begin;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lkawa/standard/begin;
    return-object v0
.end method

.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 9

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lkawa/standard/begin;
    move-object v1, p1

    .local v1, "st":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "defs":Lgnu/expr/ScopeExp;
    move-object v3, p3

    .local v3, "tr":Lkawa/lang/Translator;
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v2

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lkawa/lang/Translator;->scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Lgnu/lists/LList;

    move-result-object v5

    move-object v4, v5

    .line 25
    .local v4, "body":Lgnu/lists/LList;
    move-object v5, v4

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v5, v6, :cond_0

    .line 28
    move-object v5, v3

    iget-object v5, v5, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v6, v1

    move-object v7, v1

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v4

    invoke-static {v6, v7, v8}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 29
    :cond_0
    return-void
.end method
