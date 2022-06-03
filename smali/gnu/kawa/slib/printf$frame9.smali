.class public Lgnu/kawa/slib/printf$frame9;
.super Lgnu/expr/ModuleBody;
.source "printf.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/printf;->stdio$ClIprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame9"
.end annotation


# instance fields
.field args:Lgnu/lists/LList;

.field fc:Ljava/lang/Object;

.field fl:I

.field format$Mnstring:Ljava/lang/Object;

.field out:Ljava/lang/Object;

.field pos:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda18mustAdvance()Ljava/lang/Object;
    .locals 10

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/printf$frame9;
    move-object v2, v0

    sget-object v3, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v4, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame9;->pos:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lgnu/kawa/slib/printf$frame9;->pos:Ljava/lang/Object;

    sget-object v2, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    .line 199
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/printf$frame9;->pos:Ljava/lang/Object;

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/slib/printf$frame9;->fl:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/slib/printf$frame9;->lambda20incomplete()Ljava/lang/Object;

    move-result-object v2

    .line 200
    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/slib/printf$frame9;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/slib/printf$frame9;
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/printf$frame9;->format$Mnstring:Ljava/lang/Object;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v1, v4

    :try_start_0
    check-cast v3, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/printf$frame9;->pos:Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v1, v5

    :try_start_1
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    invoke-static {v3, v4}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v3

    invoke-static {v3}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v3

    iput-object v3, v2, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    move-object v8, v2

    move-object v9, v3

    move-object v2, v9

    move-object v3, v8

    move-object v4, v9

    move-object v8, v3

    move-object v9, v4

    move-object v3, v9

    move-object v4, v8

    const-string/jumbo v5, "string-ref"

    const/4 v6, 0x1

    move-object v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_1
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    move-object v8, v2

    move-object v9, v3

    move-object v2, v9

    move-object v3, v8

    move-object v4, v9

    move-object v8, v3

    move-object v9, v4

    move-object v3, v9

    move-object v4, v8

    const-string/jumbo v5, "string-ref"

    const/4 v6, 0x2

    move-object v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method

.method public lambda19isEndOfFormat()Z
    .locals 4

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/printf$frame9;
    sget-object v1, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/printf$frame9;->pos:Ljava/lang/Object;

    move-object v3, v0

    iget v3, v3, Lgnu/kawa/slib/printf$frame9;->fl:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/slib/printf$frame9;
    return v0
.end method

.method public lambda20incomplete()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/printf$frame9;
    sget-object v1, Lgnu/kawa/slib/printf;->Lit34:Lgnu/mapping/SimpleSymbol;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string/jumbo v5, "conversion specification incomplete"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame9;->format$Mnstring:Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-static {v1, v2}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/slib/printf$frame9;
    return-object v0
.end method

.method public lambda21out$St(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/printf$frame9;
    move-object v1, p1

    .local v1, "strs":Ljava/lang/Object;
    move-object v5, v1

    invoke-static {v5}, Lkawa/lib/strings;->isString(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 213
    .end local v1    # "strs":Ljava/lang/Object;
    :goto_0
    move-object v0, v5

    .end local v0    # "this":Lgnu/kawa/slib/printf$frame9;
    return-object v0

    .line 211
    .restart local v0    # "this":Lgnu/kawa/slib/printf$frame9;
    .restart local v1    # "strs":Ljava/lang/Object;
    :cond_0
    move-object v5, v1

    move-object v2, v5

    .line 212
    .end local v1    # "strs":Ljava/lang/Object;
    .local v2, "strs":Ljava/lang/Object;
    :goto_1
    move-object v5, v2

    invoke-static {v5}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v5

    move v3, v5

    .local v3, "x":Z
    move v5, v3

    if-eqz v5, :cond_2

    move v5, v3

    if-eqz v5, :cond_1

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    goto :goto_0

    :cond_1
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 213
    :cond_2
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    sget-object v7, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v8, v2

    invoke-virtual {v7, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .local v4, "x":Ljava/lang/Object;
    move-object v5, v4

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .end local v3    # "x":Z
    if-eq v5, v6, :cond_3

    .line 214
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    goto :goto_1

    .line 213
    :cond_3
    move-object v5, v4

    goto :goto_0
.end method
