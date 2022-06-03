.class public Lkawa/lang/PatternScope;
.super Lgnu/expr/LetExp;
.source "PatternScope.java"


# instance fields
.field public matchArray:Lgnu/expr/Declaration;

.field public patternNesting:Ljava/lang/StringBuffer;

.field public pattern_names:Ljava/util/Vector;

.field previousSyntax:Lkawa/lang/PatternScope;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lkawa/lang/PatternScope;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 30
    return-void
.end method

.method public static pop(Lkawa/lang/Translator;)V
    .locals 3

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "tr":Lkawa/lang/Translator;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    iget-object v2, v2, Lkawa/lang/PatternScope;->previousSyntax:Lkawa/lang/PatternScope;

    iput-object v2, v1, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    .line 56
    return-void
.end method

.method public static push(Lkawa/lang/Translator;)Lkawa/lang/PatternScope;
    .locals 8

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "tr":Lkawa/lang/Translator;
    new-instance v3, Lkawa/lang/PatternScope;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lkawa/lang/PatternScope;-><init>()V

    move-object v1, v3

    .line 35
    .local v1, "newScope":Lkawa/lang/PatternScope;
    move-object v3, v0

    iget-object v3, v3, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    move-object v2, v3

    .line 36
    .local v2, "oldScope":Lkawa/lang/PatternScope;
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lkawa/lang/PatternScope;->previousSyntax:Lkawa/lang/PatternScope;

    .line 37
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    .line 38
    move-object v3, v2

    if-nez v3, :cond_0

    .line 40
    move-object v3, v1

    new-instance v4, Ljava/util/Vector;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v4, v3, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    .line 41
    move-object v3, v1

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v4, v3, Lkawa/lang/PatternScope;->patternNesting:Ljava/lang/StringBuffer;

    .line 49
    :goto_0
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v4

    iput-object v4, v3, Lkawa/lang/PatternScope;->outer:Lgnu/expr/ScopeExp;

    .line 50
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "tr":Lkawa/lang/Translator;
    return-object v0

    .line 45
    .restart local v0    # "tr":Lkawa/lang/Translator;
    :cond_0
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Vector;

    iput-object v4, v3, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    .line 46
    move-object v3, v1

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    iget-object v6, v6, Lkawa/lang/PatternScope;->patternNesting:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Lkawa/lang/PatternScope;->patternNesting:Ljava/lang/StringBuffer;

    goto :goto_0
.end method
