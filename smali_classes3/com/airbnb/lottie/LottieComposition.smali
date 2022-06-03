.class public Lcom/airbnb/lottie/LottieComposition;
.super Ljava/lang/Object;
.source "LottieComposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieComposition$Factory;
    }
.end annotation


# instance fields
.field private bounds:Landroid/graphics/Rect;

.field private characters:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat",
            "<",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            ">;"
        }
    .end annotation
.end field

.field private endFrame:F

.field private fonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/Font;",
            ">;"
        }
    .end annotation
.end field

.field private frameRate:F

.field private hasDashPattern:Z

.field private images:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;"
        }
    .end annotation
.end field

.field private layerMap:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation
.end field

.field private layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation
.end field

.field private markers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private maskAndMatteCount:I

.field private final performanceTracker:Lcom/airbnb/lottie/PerformanceTracker;

.field private precomps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;>;"
        }
    .end annotation
.end field

.field private startFrame:F

.field private final warnings:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieComposition;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v1, v0

    new-instance v2, Lcom/airbnb/lottie/PerformanceTracker;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/airbnb/lottie/PerformanceTracker;-><init>()V

    iput-object v2, v1, Lcom/airbnb/lottie/LottieComposition;->performanceTracker:Lcom/airbnb/lottie/PerformanceTracker;

    .line 42
    move-object v1, v0

    new-instance v2, Ljava/util/HashSet;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v1, Lcom/airbnb/lottie/LottieComposition;->warnings:Ljava/util/HashSet;

    .line 65
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    return-void
.end method


# virtual methods
.method public addWarning(Ljava/lang/String;)V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieComposition;
    move-object v1, p1

    .local v1, "warning":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 89
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieComposition;->warnings:Ljava/util/HashSet;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 90
    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieComposition;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieComposition;
    return-object v0
.end method

.method public getCharacters()Landroidx/collection/SparseArrayCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat",
            "<",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieComposition;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieComposition;->characters:Landroidx/collection/SparseArrayCompat;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieComposition;
    return-object v0
.end method

.method public getDuration()F
    .locals 4

    .prologue
    .line 140
    move-object v1, p0

    .local v1, "this":Lcom/airbnb/lottie/LottieComposition;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    move-result v2

    move-object v3, v1

    iget v3, v3, Lcom/airbnb/lottie/LottieComposition;->frameRate:F

    div-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    long-to-float v2, v2

    move v1, v2

    .end local v1    # "this":Lcom/airbnb/lottie/LottieComposition;
    return v1
.end method

.method public getDurationFrames()F
    .locals 3

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieComposition;
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    move-object v2, v0

    iget v2, v2, Lcom/airbnb/lottie/LottieComposition;->startFrame:F

    sub-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieComposition;
    return v0
.end method

.method public getEndFrame()F
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieComposition;
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieComposition;
    return v0
.end method

.method public getFonts()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/Font;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieComposition;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieComposition;->fonts:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieComposition;
    return-object v0
.end method

.method public getFrameRate()F
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieComposition;
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/LottieComposition;->frameRate:F

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieComposition;
    return v0
.end method

.method public getImages()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieComposition;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieComposition;
    return-object v0
.end method

.method public getLayers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieComposition;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieComposition;->layers:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieComposition;
    return-object v0
.end method

.method public getMarker(Ljava/lang/String;)Lcom/airbnb/lottie/model/Marker;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieComposition;
    move-object v1, p1

    .local v1, "markerName":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/LottieComposition;->markers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v2, v5

    .line 182
    .local v2, "size":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/LottieComposition;->markers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 183
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/LottieComposition;->markers:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/model/Marker;

    move-object v4, v5

    .line 184
    .local v4, "marker":Lcom/airbnb/lottie/model/Marker;
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/model/Marker;->matchesName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 185
    move-object v5, v4

    move-object v0, v5

    .line 188
    .end local v0    # "this":Lcom/airbnb/lottie/LottieComposition;
    .end local v4    # "marker":Lcom/airbnb/lottie/model/Marker;
    :goto_1
    return-object v0

    .line 182
    .restart local v0    # "this":Lcom/airbnb/lottie/LottieComposition;
    .restart local v4    # "marker":Lcom/airbnb/lottie/model/Marker;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 188
    .end local v4    # "marker":Lcom/airbnb/lottie/model/Marker;
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method public getMarkers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/Marker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieComposition;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieComposition;->markers:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieComposition;
    return-object v0
.end method

.method public getMaskAndMatteCount()I
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieComposition;
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieComposition;
    return v0
.end method

.method public getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieComposition;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieComposition;->performanceTracker:Lcom/airbnb/lottie/PerformanceTracker;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieComposition;
    return-object v0
.end method

.method public getPrecomps(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieComposition;
    move-object v1, p1

    .local v1, "id":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieComposition;->precomps:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object v0, v2

    .end local v0    # "this":Lcom/airbnb/lottie/LottieComposition;
    return-object v0
.end method

.method public getStartFrame()F
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieComposition;
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/LottieComposition;->startFrame:F

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieComposition;
    return v0
.end method

.method public getWarnings()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieComposition;
    new-instance v1, Ljava/util/ArrayList;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieComposition;->warnings:Ljava/util/HashSet;

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieComposition;->warnings:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieComposition;
    return-object v0
.end method

.method public hasDashPattern()Z
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieComposition;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/LottieComposition;->hasDashPattern:Z

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieComposition;
    return v0
.end method

.method public hasImages()Z
    .locals 2

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieComposition;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieComposition;
    return v0

    .restart local v0    # "this":Lcom/airbnb/lottie/LottieComposition;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public incrementMatteOrMaskCount(I)V
    .locals 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieComposition;
    move v1, p1

    .local v1, "amount":I
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    move v4, v1

    add-int/2addr v3, v4

    iput v3, v2, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    .line 100
    return-void
.end method

.method public init(Landroid/graphics/Rect;FFFLjava/util/List;Landroidx/collection/LongSparseArray;Ljava/util/Map;Ljava/util/Map;Landroidx/collection/SparseArrayCompat;Ljava/util/Map;Ljava/util/List;)V
    .locals 14
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "FFF",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;",
            "Landroidx/collection/LongSparseArray",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;",
            "Landroidx/collection/SparseArrayCompat",
            "<",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/Font;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/Marker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieComposition;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move/from16 v2, p2

    .local v2, "startFrame":F
    move/from16 v3, p3

    .local v3, "endFrame":F
    move/from16 v4, p4

    .local v4, "frameRate":F
    move-object/from16 v5, p5

    .local v5, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    move-object/from16 v6, p6

    .local v6, "layerMap":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    move-object/from16 v7, p7

    .local v7, "precomps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;>;"
    move-object/from16 v8, p8

    .local v8, "images":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/LottieImageAsset;>;"
    move-object/from16 v9, p9

    .local v9, "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    move-object/from16 v10, p10

    .local v10, "fonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/model/Font;>;"
    move-object/from16 v11, p11

    .local v11, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    move-object v12, v0

    move-object v13, v1

    iput-object v13, v12, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    .line 74
    move-object v12, v0

    move v13, v2

    iput v13, v12, Lcom/airbnb/lottie/LottieComposition;->startFrame:F

    .line 75
    move-object v12, v0

    move v13, v3

    iput v13, v12, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    .line 76
    move-object v12, v0

    move v13, v4

    iput v13, v12, Lcom/airbnb/lottie/LottieComposition;->frameRate:F

    .line 77
    move-object v12, v0

    move-object v13, v5

    iput-object v13, v12, Lcom/airbnb/lottie/LottieComposition;->layers:Ljava/util/List;

    .line 78
    move-object v12, v0

    move-object v13, v6

    iput-object v13, v12, Lcom/airbnb/lottie/LottieComposition;->layerMap:Landroidx/collection/LongSparseArray;

    .line 79
    move-object v12, v0

    move-object v13, v7

    iput-object v13, v12, Lcom/airbnb/lottie/LottieComposition;->precomps:Ljava/util/Map;

    .line 80
    move-object v12, v0

    move-object v13, v8

    iput-object v13, v12, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    .line 81
    move-object v12, v0

    move-object v13, v9

    iput-object v13, v12, Lcom/airbnb/lottie/LottieComposition;->characters:Landroidx/collection/SparseArrayCompat;

    .line 82
    move-object v12, v0

    move-object v13, v10

    iput-object v13, v12, Lcom/airbnb/lottie/LottieComposition;->fonts:Ljava/util/Map;

    .line 83
    move-object v12, v0

    move-object v13, v11

    iput-object v13, v12, Lcom/airbnb/lottie/LottieComposition;->markers:Ljava/util/List;

    .line 84
    return-void
.end method

.method public layerModelForId(J)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieComposition;
    move-wide v1, p1

    .local v1, "id":J
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieComposition;->layerMap:Landroidx/collection/LongSparseArray;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/model/layer/Layer;

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/LottieComposition;
    return-object v0
.end method

.method public setHasDashPattern(Z)V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieComposition;
    move v1, p1

    .local v1, "hasDashPattern":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/airbnb/lottie/LottieComposition;->hasDashPattern:Z

    .line 95
    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieComposition;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieComposition;->performanceTracker:Lcom/airbnb/lottie/PerformanceTracker;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/PerformanceTracker;->setEnabled(Z)V

    .line 124
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieComposition;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "LottieComposition:\n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 206
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieComposition;->layers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/model/layer/Layer;

    move-object v3, v4

    .line 207
    .local v3, "layer":Lcom/airbnb/lottie/model/layer/Layer;
    move-object v4, v1

    move-object v5, v3

    const-string/jumbo v6, "\t"

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/model/layer/Layer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 208
    goto :goto_0

    .line 209
    .end local v3    # "layer":Lcom/airbnb/lottie/model/layer/Layer;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/airbnb/lottie/LottieComposition;
    return-object v0
.end method
