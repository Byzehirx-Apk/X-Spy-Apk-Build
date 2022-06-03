.class Lcom/airbnb/lottie/PerformanceTracker$1;
.super Ljava/lang/Object;
.source "PerformanceTracker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/PerformanceTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroidx/core/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Float;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/PerformanceTracker;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/PerformanceTracker;)V
    .locals 4

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/PerformanceTracker$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/airbnb/lottie/PerformanceTracker;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/PerformanceTracker$1;->this$0:Lcom/airbnb/lottie/PerformanceTracker;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/core/util/Pair;Landroidx/core/util/Pair;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/core/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/PerformanceTracker$1;
    move-object v1, p1

    .local v1, "o1":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/String;Ljava/lang/Float;>;"
    move-object v2, p2

    .local v2, "o2":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/String;Ljava/lang/Float;>;"
    move-object v5, v1

    iget-object v5, v5, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move v3, v5

    .line 30
    .local v3, "r1":F
    move-object v5, v2

    iget-object v5, v5, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move v4, v5

    .line 31
    .local v4, "r2":F
    move v5, v4

    move v6, v3

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 32
    const/4 v5, 0x1

    move v0, v5

    .line 36
    .end local v0    # "this":Lcom/airbnb/lottie/PerformanceTracker$1;
    :goto_0
    return v0

    .line 33
    .restart local v0    # "this":Lcom/airbnb/lottie/PerformanceTracker$1;
    :cond_0
    move v5, v3

    move v6, v4

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 34
    const/4 v5, -0x1

    move v0, v5

    goto :goto_0

    .line 36
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/PerformanceTracker$1;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroidx/core/util/Pair;

    move-object v5, v2

    check-cast v5, Landroidx/core/util/Pair;

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/PerformanceTracker$1;->compare(Landroidx/core/util/Pair;Landroidx/core/util/Pair;)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/PerformanceTracker$1;
    return v0
.end method
