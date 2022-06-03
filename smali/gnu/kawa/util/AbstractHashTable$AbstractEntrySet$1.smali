.class Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;
.super Ljava/lang/Object;
.source "AbstractHashTable.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TEntry;>;"
    }
.end annotation


# instance fields
.field curIndex:I

.field currentEntry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TEntry;"
        }
    .end annotation
.end field

.field nextEntry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TEntry;"
        }
    .end annotation
.end field

.field nextIndex:I

.field previousEntry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TEntry;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;


# direct methods
.method constructor <init>(Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;)V
    .locals 4

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;, "Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet.1;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->this$0:Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 259
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->curIndex:I

    return-void
.end method

.method private advance()V
    .locals 6

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;, "Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet.1;"
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->nextEntry:Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->nextIndex:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput v3, v2, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->nextIndex:I

    if-ltz v1, :cond_0

    .line 281
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->this$0:Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;

    iget-object v2, v2, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;->htable:Lgnu/kawa/util/AbstractHashTable;

    iget-object v2, v2, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    move-object v3, v0

    iget v3, v3, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->nextIndex:I

    aget-object v2, v2, v3

    iput-object v2, v1, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->nextEntry:Ljava/util/Map$Entry;

    goto :goto_0

    .line 283
    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;, "Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet.1;"
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->curIndex:I

    if-gez v1, :cond_0

    .line 271
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->this$0:Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;

    iget-object v2, v2, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;->htable:Lgnu/kawa/util/AbstractHashTable;

    iget-object v2, v2, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    array-length v2, v2

    iput v2, v1, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->nextIndex:I

    .line 272
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->nextIndex:I

    iput v2, v1, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->curIndex:I

    .line 273
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->advance()V

    .line 275
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->nextEntry:Ljava/util/Map$Entry;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;, "Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet.1;"
    return v0

    .restart local v0    # "this":Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;, "Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet.1;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;, "Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet.1;"
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->next()Ljava/util/Map$Entry;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;, "Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet.1;"
    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TEntry;"
        }
    .end annotation

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;, "Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet.1;"
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->nextEntry:Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    .line 288
    new-instance v1, Ljava/util/NoSuchElementException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 289
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->currentEntry:Ljava/util/Map$Entry;

    iput-object v2, v1, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->previousEntry:Ljava/util/Map$Entry;

    .line 290
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->nextEntry:Ljava/util/Map$Entry;

    iput-object v2, v1, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->currentEntry:Ljava/util/Map$Entry;

    .line 291
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->nextIndex:I

    iput v2, v1, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->curIndex:I

    .line 292
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->this$0:Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;

    iget-object v2, v2, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;->htable:Lgnu/kawa/util/AbstractHashTable;

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->currentEntry:Ljava/util/Map$Entry;

    invoke-virtual {v2, v3}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v2

    iput-object v2, v1, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->nextEntry:Ljava/util/Map$Entry;

    .line 293
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->advance()V

    .line 294
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->currentEntry:Ljava/util/Map$Entry;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;, "Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet.1;"
    return-object v0
.end method

.method public remove()V
    .locals 5

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;, "Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet.1;"
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->previousEntry:Ljava/util/Map$Entry;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->currentEntry:Ljava/util/Map$Entry;

    if-ne v1, v2, :cond_0

    .line 299
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 300
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->previousEntry:Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    .line 301
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->this$0:Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;

    iget-object v1, v1, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;->htable:Lgnu/kawa/util/AbstractHashTable;

    iget-object v1, v1, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    move-object v2, v0

    iget v2, v2, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->curIndex:I

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->nextEntry:Ljava/util/Map$Entry;

    aput-object v3, v1, v2

    .line 304
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->this$0:Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;

    iget-object v1, v1, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;->htable:Lgnu/kawa/util/AbstractHashTable;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    .line 305
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->currentEntry:Ljava/util/Map$Entry;

    iput-object v2, v1, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->previousEntry:Ljava/util/Map$Entry;

    .line 306
    return-void

    .line 303
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->this$0:Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;

    iget-object v1, v1, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;->htable:Lgnu/kawa/util/AbstractHashTable;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->previousEntry:Ljava/util/Map$Entry;

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;->nextEntry:Ljava/util/Map$Entry;

    invoke-virtual {v1, v2, v3}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    goto :goto_0
.end method
