.class public Lkawa/lang/VarListPat;
.super Lkawa/lang/Pattern;
.source "VarListPat.java"


# instance fields
.field min_length:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lkawa/lang/VarListPat;
    move v1, p1

    .local v1, "min":I
    move-object v2, v0

    invoke-direct {v2}, Lkawa/lang/Pattern;-><init>()V

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lkawa/lang/VarListPat;->min_length:I

    return-void
.end method


# virtual methods
.method public match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 9

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lkawa/lang/VarListPat;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "vars":[Ljava/lang/Object;
    move v3, p3

    .local v3, "start_vars":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move-object v7, v0

    iget v7, v7, Lkawa/lang/VarListPat;->min_length:I

    if-ge v6, v7, :cond_1

    .line 23
    move-object v6, v1

    instance-of v6, v6, Lgnu/lists/Pair;

    if-eqz v6, :cond_0

    .line 25
    move-object v6, v1

    check-cast v6, Lgnu/lists/Pair;

    move-object v5, v6

    .line 26
    .local v5, "p":Lgnu/lists/Pair;
    move-object v6, v2

    move v7, v3

    move v8, v4

    add-int/2addr v7, v8

    move-object v8, v5

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    .line 27
    move-object v6, v5

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    .line 21
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 30
    .end local v5    # "p":Lgnu/lists/Pair;
    :cond_0
    const/4 v6, 0x0

    move v0, v6

    .line 33
    .end local v0    # "this":Lkawa/lang/VarListPat;
    :goto_1
    return v0

    .line 32
    .restart local v0    # "this":Lkawa/lang/VarListPat;
    :cond_1
    move-object v6, v2

    move v7, v3

    move v8, v4

    add-int/2addr v7, v8

    move-object v8, v1

    aput-object v8, v6, v7

    .line 33
    const/4 v6, 0x1

    move v0, v6

    goto :goto_1
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lkawa/lang/VarListPat;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v2, v1

    const-string/jumbo v3, "#<varlist-pattern min:"

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 41
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lkawa/lang/VarListPat;->min_length:I

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 42
    move-object v2, v1

    const/16 v3, 0x3e

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(I)V

    .line 43
    return-void
.end method

.method public varCount()I
    .locals 3

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lkawa/lang/VarListPat;
    move-object v1, v0

    iget v1, v1, Lkawa/lang/VarListPat;->min_length:I

    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .end local v0    # "this":Lkawa/lang/VarListPat;
    return v0
.end method
