.class public Lcom/google/appinventor/components/runtime/collect/Lists;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newArrayList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static varargs newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    move-object v2, v0

    array-length v2, v2

    const/16 v3, 0x6e

    mul-int/lit8 v2, v2, 0x6e

    const/16 v3, 0x64

    div-int/lit8 v2, v2, 0x64

    const/4 v3, 0x5

    add-int/lit8 v2, v2, 0x5

    move v1, v2

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 55
    move-object v1, v3

    move-object v3, v0

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    .line 56
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method
