.class public Lcom/airbnb/lottie/PerformanceTracker;
.super Ljava/lang/Object;
.source "PerformanceTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/PerformanceTracker$FrameListener;
    }
.end annotation


# instance fields
.field private enabled:Z

.field private final floatComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroidx/core/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final frameListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/airbnb/lottie/PerformanceTracker$FrameListener;",
            ">;"
        }
    .end annotation
.end field

.field private final layerRenderTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/utils/MeanCalculator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/PerformanceTracker;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 23
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/airbnb/lottie/PerformanceTracker;->enabled:Z

    .line 24
    move-object v1, v0

    new-instance v2, Landroidx/collection/ArraySet;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v2, v1, Lcom/airbnb/lottie/PerformanceTracker;->frameListeners:Ljava/util/Set;

    .line 25
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    .line 26
    move-object v1, v0

    new-instance v2, Lcom/airbnb/lottie/PerformanceTracker$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/PerformanceTracker$1;-><init>(Lcom/airbnb/lottie/PerformanceTracker;)V

    iput-object v2, v1, Lcom/airbnb/lottie/PerformanceTracker;->floatComparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public addFrameListener(Lcom/airbnb/lottie/PerformanceTracker$FrameListener;)V
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/PerformanceTracker;
    move-object v1, p1

    .local v1, "frameListener":Lcom/airbnb/lottie/PerformanceTracker$FrameListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/PerformanceTracker;->frameListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 64
    return-void
.end method

.method public clearRenderTimes()V
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/PerformanceTracker;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 72
    return-void
.end method

.method public getSortedRenderTimes()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/core/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/PerformanceTracker;
    move-object v4, v0

    iget-boolean v4, v4, Lcom/airbnb/lottie/PerformanceTracker;->enabled:Z

    if-nez v4, :cond_0

    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object v0, v4

    .line 95
    .end local v0    # "this":Lcom/airbnb/lottie/PerformanceTracker;
    .local v1, "sortedRenderTimes":Ljava/util/List;, "Ljava/util/List<Landroidx/core/util/Pair<Ljava/lang/String;Ljava/lang/Float;>;>;"
    :goto_0
    return-object v0

    .line 90
    .end local v1    # "sortedRenderTimes":Ljava/util/List;, "Ljava/util/List<Landroidx/core/util/Pair<Ljava/lang/String;Ljava/lang/Float;>;>;"
    .restart local v0    # "this":Lcom/airbnb/lottie/PerformanceTracker;
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v4

    .line 91
    .restart local v1    # "sortedRenderTimes":Ljava/util/List;, "Ljava/util/List<Landroidx/core/util/Pair<Ljava/lang/String;Ljava/lang/Float;>;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v3, v4

    .line 92
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/airbnb/lottie/utils/MeanCalculator;>;"
    move-object v4, v1

    new-instance v5, Landroidx/core/util/Pair;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/utils/MeanCalculator;

    invoke-virtual {v8}, Lcom/airbnb/lottie/utils/MeanCalculator;->getMean()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 93
    goto :goto_1

    .line 94
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/airbnb/lottie/utils/MeanCalculator;>;"
    :cond_1
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/PerformanceTracker;->floatComparator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 95
    move-object v4, v1

    move-object v0, v4

    goto :goto_0
.end method

.method public logRenderTimes()V
    .locals 11

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/PerformanceTracker;
    move-object v4, v0

    iget-boolean v4, v4, Lcom/airbnb/lottie/PerformanceTracker;->enabled:Z

    if-nez v4, :cond_0

    .line 76
    .line 84
    :goto_0
    return-void

    .line 78
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/PerformanceTracker;->getSortedRenderTimes()Ljava/util/List;

    move-result-object v4

    move-object v1, v4

    .line 79
    .local v1, "sortedRenderTimes":Ljava/util/List;, "Ljava/util/List<Landroidx/core/util/Pair<Ljava/lang/String;Ljava/lang/Float;>;>;"
    const-string/jumbo v4, "LOTTIE"

    const-string/jumbo v5, "Render times:"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 80
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_1
    move v4, v2

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 81
    move-object v4, v1

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/util/Pair;

    move-object v3, v4

    .line 82
    .local v3, "layer":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/String;Ljava/lang/Float;>;"
    const-string/jumbo v4, "LOTTIE"

    const-string/jumbo v5, "\t\t%30s:%.2f"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v3

    iget-object v9, v9, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v3

    iget-object v9, v9, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 84
    .end local v3    # "layer":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/String;Ljava/lang/Float;>;"
    :cond_1
    goto :goto_0
.end method

.method public recordRenderTime(Ljava/lang/String;F)V
    .locals 10

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/PerformanceTracker;
    move-object v1, p1

    .local v1, "layerName":Ljava/lang/String;
    move v2, p2

    .local v2, "millis":F
    move-object v6, v0

    iget-boolean v6, v6, Lcom/airbnb/lottie/PerformanceTracker;->enabled:Z

    if-nez v6, :cond_0

    .line 46
    .line 60
    :goto_0
    return-void

    .line 48
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/utils/MeanCalculator;

    move-object v3, v6

    .line 49
    .local v3, "meanCalculator":Lcom/airbnb/lottie/utils/MeanCalculator;
    move-object v6, v3

    if-nez v6, :cond_1

    .line 50
    new-instance v6, Lcom/airbnb/lottie/utils/MeanCalculator;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lcom/airbnb/lottie/utils/MeanCalculator;-><init>()V

    move-object v3, v6

    .line 51
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    move-object v7, v1

    move-object v8, v3

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 53
    :cond_1
    move-object v6, v3

    move v7, v2

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/utils/MeanCalculator;->add(F)V

    .line 55
    move-object v6, v1

    const-string/jumbo v7, "__container"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 56
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/PerformanceTracker;->frameListeners:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_1
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/PerformanceTracker$FrameListener;

    move-object v5, v6

    .line 57
    .local v5, "listener":Lcom/airbnb/lottie/PerformanceTracker$FrameListener;
    move-object v6, v5

    move v7, v2

    invoke-interface {v6, v7}, Lcom/airbnb/lottie/PerformanceTracker$FrameListener;->onFrameRendered(F)V

    .line 58
    goto :goto_1

    .line 60
    .end local v5    # "listener":Lcom/airbnb/lottie/PerformanceTracker$FrameListener;
    :cond_2
    goto :goto_0
.end method

.method public removeFrameListener(Lcom/airbnb/lottie/PerformanceTracker$FrameListener;)V
    .locals 4

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/PerformanceTracker;
    move-object v1, p1

    .local v1, "frameListener":Lcom/airbnb/lottie/PerformanceTracker$FrameListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/PerformanceTracker;->frameListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 68
    return-void
.end method

.method setEnabled(Z)V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/PerformanceTracker;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/airbnb/lottie/PerformanceTracker;->enabled:Z

    .line 42
    return-void
.end method
