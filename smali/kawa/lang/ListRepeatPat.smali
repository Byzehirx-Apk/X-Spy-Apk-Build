.class public Lkawa/lang/ListRepeatPat;
.super Lkawa/lang/Pattern;
.source "ListRepeatPat.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Ljava/io/Externalizable;


# instance fields
.field element_pattern:Lkawa/lang/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lkawa/lang/ListRepeatPat;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Pattern;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Lkawa/lang/Pattern;)V
    .locals 4

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lkawa/lang/ListRepeatPat;
    move-object v1, p1

    .local v1, "element_pattern":Lkawa/lang/Pattern;
    move-object v2, v0

    invoke-direct {v2}, Lkawa/lang/Pattern;-><init>()V

    .line 16
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkawa/lang/ListRepeatPat;->element_pattern:Lkawa/lang/Pattern;

    .line 17
    return-void
.end method

.method public static make(Lkawa/lang/Pattern;)Lkawa/lang/ListRepeatPat;
    .locals 5

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "element_pattern":Lkawa/lang/Pattern;
    new-instance v1, Lkawa/lang/ListRepeatPat;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lkawa/lang/ListRepeatPat;-><init>(Lkawa/lang/Pattern;)V

    move-object v0, v1

    .end local v0    # "element_pattern":Lkawa/lang/Pattern;
    return-object v0
.end method


# virtual methods
.method public match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 14

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lkawa/lang/ListRepeatPat;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "vars":[Ljava/lang/Object;
    move/from16 v3, p3

    .local v3, "start_vars":I
    move-object v10, v1

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v10

    move v4, v10

    .line 41
    .local v4, "length":I
    move v10, v4

    if-gez v10, :cond_0

    .line 42
    const/4 v10, 0x0

    move v0, v10

    .line 64
    .end local v0    # "this":Lkawa/lang/ListRepeatPat;
    :goto_0
    return v0

    .line 44
    .restart local v0    # "this":Lkawa/lang/ListRepeatPat;
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Lkawa/lang/ListRepeatPat;->element_pattern:Lkawa/lang/Pattern;

    invoke-virtual {v10}, Lkawa/lang/Pattern;->varCount()I

    move-result v10

    move v5, v10

    .line 45
    .local v5, "var_count":I
    move v10, v5

    move v6, v10

    .local v6, "i":I
    :goto_1
    add-int/lit8 v6, v6, -0x1

    move v10, v6

    if-ltz v10, :cond_1

    .line 46
    move-object v10, v2

    move v11, v3

    move v12, v6

    add-int/2addr v11, v12

    move v12, v4

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v12, v10, v11

    goto :goto_1

    .line 47
    :cond_1
    move v10, v5

    new-array v10, v10, [Ljava/lang/Object;

    move-object v6, v10

    .line 48
    .local v6, "element_vars":[Ljava/lang/Object;
    const/4 v10, 0x0

    move v7, v10

    .local v7, "j":I
    :goto_2
    move v10, v7

    move v11, v4

    if-ge v10, v11, :cond_4

    .line 50
    move-object v10, v1

    check-cast v10, Lgnu/lists/Pair;

    move-object v8, v10

    .line 58
    .local v8, "pair":Lgnu/lists/Pair;
    move-object v10, v0

    iget-object v10, v10, Lkawa/lang/ListRepeatPat;->element_pattern:Lkawa/lang/Pattern;

    move-object v11, v8

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v6

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 59
    const/4 v10, 0x0

    move v0, v10

    goto :goto_0

    .line 60
    :cond_2
    const/4 v10, 0x0

    move v9, v10

    .local v9, "i":I
    :goto_3
    move v10, v9

    move v11, v5

    if-ge v10, v11, :cond_3

    .line 61
    move-object v10, v2

    move v11, v3

    move v12, v9

    add-int/2addr v11, v12

    aget-object v10, v10, v11

    check-cast v10, [Ljava/lang/Object;

    check-cast v10, [Ljava/lang/Object;

    move v11, v7

    move-object v12, v6

    move v13, v9

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    .line 60
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 62
    :cond_3
    move-object v10, v8

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    .line 48
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 64
    .end local v8    # "pair":Lgnu/lists/Pair;
    .end local v9    # "i":I
    :cond_4
    const/4 v10, 0x1

    move v0, v10

    goto :goto_0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 4

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lkawa/lang/ListRepeatPat;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v2, v1

    const-string/jumbo v3, "#<list-repeat-pattern "

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 27
    move-object v2, v0

    iget-object v2, v2, Lkawa/lang/ListRepeatPat;->element_pattern:Lkawa/lang/Pattern;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lkawa/lang/Pattern;->print(Lgnu/lists/Consumer;)V

    .line 28
    move-object v2, v1

    const/16 v3, 0x3e

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(I)V

    .line 29
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lkawa/lang/ListRepeatPat;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkawa/lang/Pattern;

    iput-object v3, v2, Lkawa/lang/ListRepeatPat;->element_pattern:Lkawa/lang/Pattern;

    .line 81
    return-void
.end method

.method public varCount()I
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lkawa/lang/ListRepeatPat;
    move-object v1, v0

    iget-object v1, v1, Lkawa/lang/ListRepeatPat;->element_pattern:Lkawa/lang/Pattern;

    invoke-virtual {v1}, Lkawa/lang/Pattern;->varCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lkawa/lang/ListRepeatPat;
    return v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lkawa/lang/ListRepeatPat;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lkawa/lang/ListRepeatPat;->element_pattern:Lkawa/lang/Pattern;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 75
    return-void
.end method
