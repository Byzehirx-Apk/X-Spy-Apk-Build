.class public Lgnu/kawa/util/IdentityHashTable;
.super Lgnu/kawa/util/GeneralHashTable;
.source "IdentityHashTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lgnu/kawa/util/GeneralHashTable",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/IdentityHashTable;, "Lgnu/kawa/util/IdentityHashTable<TK;TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/util/GeneralHashTable;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/IdentityHashTable;, "Lgnu/kawa/util/IdentityHashTable<TK;TV;>;"
    move v1, p1

    .local v1, "capacity":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lgnu/kawa/util/GeneralHashTable;-><init>(I)V

    .line 17
    return-void
.end method


# virtual methods
.method public hash(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/IdentityHashTable;, "Lgnu/kawa/util/IdentityHashTable<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v1

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/kawa/util/IdentityHashTable;, "Lgnu/kawa/util/IdentityHashTable<TK;TV;>;"
    return v0
.end method

.method public matches(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/IdentityHashTable;, "Lgnu/kawa/util/IdentityHashTable<TK;TV;>;"
    move-object v1, p1

    .local v1, "value1":Ljava/lang/Object;, "TK;"
    move-object v2, p2

    .local v2, "value2":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lgnu/kawa/util/IdentityHashTable;, "Lgnu/kawa/util/IdentityHashTable<TK;TV;>;"
    return v0

    .restart local v0    # "this":Lgnu/kawa/util/IdentityHashTable;, "Lgnu/kawa/util/IdentityHashTable<TK;TV;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
