.class Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;
.super Ljava/util/AbstractSet;
.source "AbstractHashTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/kawa/util/AbstractHashTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AbstractEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Entry::",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TEntry;>;"
    }
.end annotation


# instance fields
.field htable:Lgnu/kawa/util/AbstractHashTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgnu/kawa/util/AbstractHashTable",
            "<TEntry;TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgnu/kawa/util/AbstractHashTable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/AbstractHashTable",
            "<TEntry;TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;, "Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet<TEntry;TK;TV;>;"
    move-object v1, p1

    .local v1, "htable":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/util/AbstractSet;-><init>()V

    .line 243
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;->htable:Lgnu/kawa/util/AbstractHashTable;

    .line 244
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TEntry;>;"
        }
    .end annotation

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;, "Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet<TEntry;TK;TV;>;"
    new-instance v1, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet$1;-><init>(Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;)V

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;, "Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet<TEntry;TK;TV;>;"
    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;, "Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet<TEntry;TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;->htable:Lgnu/kawa/util/AbstractHashTable;

    invoke-virtual {v1}, Lgnu/kawa/util/AbstractHashTable;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;, "Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet<TEntry;TK;TV;>;"
    return v0
.end method
