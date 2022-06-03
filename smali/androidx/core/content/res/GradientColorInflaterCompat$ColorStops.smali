.class final Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
.super Ljava/lang/Object;
.source "GradientColorInflaterCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/res/GradientColorInflaterCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ColorStops"
.end annotation


# instance fields
.field final mColors:[I

.field final mOffsets:[F


# direct methods
.method constructor <init>(II)V
    .locals 9
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
    move v1, p1

    .local v1, "startColor":I
    move v2, p2

    .local v2, "endColor":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 228
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    aput v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move v7, v2

    aput v7, v5, v6

    iput-object v4, v3, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    .line 229
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    iput-object v4, v3, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    .line 230
    return-void

    .line 229
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>(III)V
    .locals 10
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
    move v1, p1

    .local v1, "startColor":I
    move v2, p2

    .local v2, "centerColor":I
    move v3, p3

    .local v3, "endColor":I
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 233
    move-object v4, v0

    const/4 v5, 0x3

    new-array v5, v5, [I

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    aput v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move v8, v2

    aput v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x2

    move v8, v3

    aput v8, v6, v7

    iput-object v5, v4, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    .line 234
    move-object v4, v0

    const/4 v5, 0x3

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    iput-object v5, v4, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    .line 235
    return-void

    .line 234
    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
    move-object v1, p1

    .local v1, "colorsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v2, p2

    .local v2, "offsetsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 218
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    .line 219
    .local v3, "size":I
    move-object v5, v0

    move v6, v3

    new-array v6, v6, [I

    iput-object v6, v5, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    .line 220
    move-object v5, v0

    move v6, v3

    new-array v6, v6, [F

    iput-object v6, v5, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    .line 221
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 222
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    move v6, v4

    move-object v7, v1

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v5, v6

    .line 223
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    move v6, v4

    move-object v7, v2

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v5, v6

    .line 221
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 225
    :cond_0
    return-void
.end method
