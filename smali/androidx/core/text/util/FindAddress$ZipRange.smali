.class Landroidx/core/text/util/FindAddress$ZipRange;
.super Ljava/lang/Object;
.source "FindAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/util/FindAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZipRange"
.end annotation


# instance fields
.field mException1:I

.field mException2:I

.field mHigh:I

.field mLow:I


# direct methods
.method constructor <init>(IIII)V
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/util/FindAddress$ZipRange;
    move v1, p1

    .local v1, "low":I
    move v2, p2

    .local v2, "high":I
    move v3, p3

    .local v3, "exception1":I
    move v4, p4

    .local v4, "exception2":I
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/core/text/util/FindAddress$ZipRange;->mLow:I

    .line 45
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/core/text/util/FindAddress$ZipRange;->mHigh:I

    .line 46
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroidx/core/text/util/FindAddress$ZipRange;->mException1:I

    .line 47
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroidx/core/text/util/FindAddress$ZipRange;->mException2:I

    .line 48
    return-void
.end method


# virtual methods
.method matches(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/util/FindAddress$ZipRange;
    move-object v1, p1

    .local v1, "zipCode":Ljava/lang/String;
    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    .line 52
    .local v2, "prefix":I
    move-object v3, v0

    iget v3, v3, Landroidx/core/text/util/FindAddress$ZipRange;->mLow:I

    move v4, v2

    if-gt v3, v4, :cond_0

    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/core/text/util/FindAddress$ZipRange;->mHigh:I

    if-le v3, v4, :cond_1

    :cond_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/core/text/util/FindAddress$ZipRange;->mException1:I

    if-eq v3, v4, :cond_1

    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/core/text/util/FindAddress$ZipRange;->mException2:I

    if-ne v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Landroidx/core/text/util/FindAddress$ZipRange;
    return v0

    .restart local v0    # "this":Landroidx/core/text/util/FindAddress$ZipRange;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
