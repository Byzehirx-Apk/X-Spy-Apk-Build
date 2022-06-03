.class public Lgnu/kawa/util/AbstractWeakHashTable$WEntry;
.super Ljava/lang/ref/WeakReference;
.source "AbstractWeakHashTable.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/kawa/util/AbstractWeakHashTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TV;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field public hash:I

.field htable:Lgnu/kawa/util/AbstractWeakHashTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgnu/kawa/util/AbstractWeakHashTable",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field public next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lgnu/kawa/util/AbstractWeakHashTable;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lgnu/kawa/util/AbstractWeakHashTable",
            "<TK;TV;>;I)V"
        }
    .end annotation

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TV;"
    move-object v2, p2

    .local v2, "htable":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    move v3, p3

    .local v3, "hash":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    iget-object v6, v6, Lgnu/kawa/util/AbstractWeakHashTable;->rqueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v4, v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 160
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->htable:Lgnu/kawa/util/AbstractWeakHashTable;

    .line 161
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->hash:I

    .line 162
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 171
    .local v1, "v":Ljava/lang/Object;, "TV;"
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->htable:Lgnu/kawa/util/AbstractWeakHashTable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/util/AbstractWeakHashTable;->getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TV;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method
