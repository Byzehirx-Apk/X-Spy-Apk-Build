.class public Lgnu/kawa/util/RangeTable;
.super Ljava/lang/Object;
.source "RangeTable.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field hash:Ljava/util/Hashtable;

.field index:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/RangeTable;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    move-object v1, v0

    const/16 v2, 0x80

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, v1, Lgnu/kawa/util/RangeTable;->index:[Ljava/lang/Object;

    .line 11
    move-object v1, v0

    new-instance v2, Ljava/util/Hashtable;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0xc8

    invoke-direct {v3, v4}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v2, v1, Lgnu/kawa/util/RangeTable;->hash:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/RangeTable;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/util/RangeTable;->copy()Lgnu/kawa/util/RangeTable;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/util/RangeTable;
    return-object v0
.end method

.method public copy()Lgnu/kawa/util/RangeTable;
    .locals 5

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/RangeTable;
    new-instance v2, Lgnu/kawa/util/RangeTable;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lgnu/kawa/util/RangeTable;-><init>()V

    move-object v1, v2

    .line 63
    .local v1, "copy":Lgnu/kawa/util/RangeTable;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/util/RangeTable;->index:[Ljava/lang/Object;

    invoke-virtual {v3}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    iput-object v3, v2, Lgnu/kawa/util/RangeTable;->index:[Ljava/lang/Object;

    .line 64
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/util/RangeTable;->hash:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;

    iput-object v3, v2, Lgnu/kawa/util/RangeTable;->hash:Ljava/util/Hashtable;

    .line 65
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/util/RangeTable;
    return-object v0
.end method

.method public lookup(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/RangeTable;
    move v1, p1

    .local v1, "key":I
    move-object v2, p2

    .local v2, "defaultValue":Ljava/lang/Object;
    move v3, v1

    const/16 v4, 0x7f

    and-int/lit8 v3, v3, 0x7f

    move v4, v1

    if-ne v3, v4, :cond_0

    .line 16
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/util/RangeTable;->index:[Ljava/lang/Object;

    move v4, v1

    aget-object v3, v3, v4

    move-object v0, v3

    .line 17
    .end local v0    # "this":Lgnu/kawa/util/RangeTable;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/util/RangeTable;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/util/RangeTable;->hash:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move v6, v1

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public remove(I)V
    .locals 5

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/RangeTable;
    move v1, p1

    .local v1, "key":I
    move-object v2, v0

    move v3, v1

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/util/RangeTable;->remove(II)V

    .line 58
    return-void
.end method

.method public remove(II)V
    .locals 9

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/RangeTable;
    move v1, p1

    .local v1, "lo":I
    move v2, p2

    .local v2, "hi":I
    move v4, v1

    move v5, v2

    if-le v4, v5, :cond_0

    .line 43
    .line 53
    :goto_0
    return-void

    .line 44
    :cond_0
    move v4, v1

    move v3, v4

    .line 46
    .local v3, "i":I
    :goto_1
    move v4, v3

    const/16 v5, 0x7f

    and-int/lit8 v4, v4, 0x7f

    move v5, v3

    if-ne v4, v5, :cond_1

    .line 47
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/util/RangeTable;->index:[Ljava/lang/Object;

    move v5, v3

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 50
    :goto_2
    move v4, v3

    move v5, v2

    if-ne v4, v5, :cond_2

    .line 51
    .line 53
    goto :goto_0

    .line 49
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/util/RangeTable;->hash:Ljava/util/Hashtable;

    new-instance v5, Ljava/lang/Integer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move v7, v3

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    .line 44
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public set(IILjava/lang/Object;)V
    .locals 10

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/RangeTable;
    move v1, p1

    .local v1, "lo":I
    move v2, p2

    .local v2, "hi":I
    move-object v3, p3

    .local v3, "value":Ljava/lang/Object;
    move v5, v1

    move v6, v2

    if-le v5, v6, :cond_0

    .line 23
    .line 33
    :goto_0
    return-void

    .line 24
    :cond_0
    move v5, v1

    move v4, v5

    .line 26
    .local v4, "i":I
    :goto_1
    move v5, v4

    const/16 v6, 0x7f

    and-int/lit8 v5, v5, 0x7f

    move v6, v4

    if-ne v5, v6, :cond_1

    .line 27
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/util/RangeTable;->index:[Ljava/lang/Object;

    move v6, v4

    move-object v7, v3

    aput-object v7, v5, v6

    .line 30
    :goto_2
    move v5, v4

    move v6, v2

    if-ne v5, v6, :cond_2

    .line 31
    .line 33
    goto :goto_0

    .line 29
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/util/RangeTable;->hash:Ljava/util/Hashtable;

    new-instance v6, Ljava/lang/Integer;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move v8, v4

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_2

    .line 24
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public set(ILjava/lang/Object;)V
    .locals 7

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/RangeTable;
    move v1, p1

    .local v1, "key":I
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    move v4, v1

    move v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/kawa/util/RangeTable;->set(IILjava/lang/Object;)V

    .line 38
    return-void
.end method
