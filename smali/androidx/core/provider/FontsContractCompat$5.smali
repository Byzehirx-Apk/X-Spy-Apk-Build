.class final Landroidx/core/provider/FontsContractCompat$5;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/FontsContractCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 776
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontsContractCompat$5;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 776
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontsContractCompat$5;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, [B

    move-object v5, v2

    check-cast v5, [B

    invoke-virtual {v3, v4, v5}, Landroidx/core/provider/FontsContractCompat$5;->compare([B[B)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/core/provider/FontsContractCompat$5;
    return v0
.end method

.method public compare([B[B)I
    .locals 7

    .prologue
    .line 779
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontsContractCompat$5;
    move-object v1, p1

    .local v1, "l":[B
    move-object v2, p2

    .local v2, "r":[B
    move-object v4, v1

    array-length v4, v4

    move-object v5, v2

    array-length v5, v5

    if-eq v4, v5, :cond_0

    .line 780
    move-object v4, v1

    array-length v4, v4

    move-object v5, v2

    array-length v5, v5

    sub-int/2addr v4, v5

    move v0, v4

    .line 787
    .end local v0    # "this":Landroidx/core/provider/FontsContractCompat$5;
    :goto_0
    return v0

    .line 782
    .restart local v0    # "this":Landroidx/core/provider/FontsContractCompat$5;
    :cond_0
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move-object v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 783
    move-object v4, v1

    move v5, v3

    aget-byte v4, v4, v5

    move-object v5, v2

    move v6, v3

    aget-byte v5, v5, v6

    if-eq v4, v5, :cond_1

    .line 784
    move-object v4, v1

    move v5, v3

    aget-byte v4, v4, v5

    move-object v5, v2

    move v6, v3

    aget-byte v5, v5, v6

    sub-int/2addr v4, v5

    move v0, v4

    goto :goto_0

    .line 782
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 787
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method
