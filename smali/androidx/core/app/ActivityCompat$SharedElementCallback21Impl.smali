.class Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;
.super Landroid/app/SharedElementCallback;
.source "ActivityCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/ActivityCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SharedElementCallback21Impl"
.end annotation


# instance fields
.field private final mCallback:Landroidx/core/app/SharedElementCallback;


# direct methods
.method constructor <init>(Landroidx/core/app/SharedElementCallback;)V
    .locals 4

    .prologue
    .line 572
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;
    move-object v1, p1

    .local v1, "callback":Landroidx/core/app/SharedElementCallback;
    move-object v2, v0

    invoke-direct {v2}, Landroid/app/SharedElementCallback;-><init>()V

    .line 573
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroidx/core/app/SharedElementCallback;

    .line 574
    return-void
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 8

    .prologue
    .line 603
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;
    move-object v1, p1

    .local v1, "sharedElement":Landroid/view/View;
    move-object v2, p2

    .local v2, "viewToGlobalMatrix":Landroid/graphics/Matrix;
    move-object v3, p3

    .local v3, "screenBounds":Landroid/graphics/RectF;
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroidx/core/app/SharedElementCallback;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/core/app/SharedElementCallback;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;
    return-object v0
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 6

    .prologue
    .line 609
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "snapshot":Landroid/os/Parcelable;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroidx/core/app/SharedElementCallback;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/core/app/SharedElementCallback;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;
    return-object v0
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 597
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;
    move-object v1, p1

    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v2, p2

    .local v2, "sharedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroidx/core/app/SharedElementCallback;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 598
    return-void
.end method

.method public onRejectSharedElements(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 592
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;
    move-object v1, p1

    .local v1, "rejectedSharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroidx/core/app/SharedElementCallback;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/app/SharedElementCallback;->onRejectSharedElements(Ljava/util/List;)V

    .line 593
    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 586
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;
    move-object v1, p1

    .local v1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v2, p2

    .local v2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object v3, p3

    .local v3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroidx/core/app/SharedElementCallback;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/core/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 588
    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 579
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;
    move-object v1, p1

    .local v1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v2, p2

    .local v2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object v3, p3

    .local v3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroidx/core/app/SharedElementCallback;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/core/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 581
    return-void
.end method

.method public onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 12
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 616
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;
    move-object v1, p1

    .local v1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v2, p2

    .local v2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object v3, p3

    .local v3, "listener":Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroidx/core/app/SharedElementCallback;

    move-object v5, v1

    move-object v6, v2

    new-instance v7, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl$1;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl$1;-><init>(Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    invoke-virtual {v4, v5, v6, v7}, Landroidx/core/app/SharedElementCallback;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroidx/core/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    .line 623
    return-void
.end method
