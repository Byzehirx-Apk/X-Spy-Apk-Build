.class public Lcom/google/appinventor/components/runtime/collect/Sets;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newHashSet()Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashSet;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public static varargs newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/HashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    move-object v2, v0

    array-length v2, v2

    const/4 v3, 0x2

    shl-int/lit8 v2, v2, 0x2

    const/4 v3, 0x3

    div-int/lit8 v2, v2, 0x3

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    .line 59
    new-instance v2, Ljava/util/HashSet;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move v4, v1

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 60
    move-object v1, v3

    move-object v3, v0

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    .line 61
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public static varargs newSortedSet([Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    new-instance v2, Ljava/util/TreeSet;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 73
    move-object v1, v3

    move-object v3, v0

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    .line 74
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method
