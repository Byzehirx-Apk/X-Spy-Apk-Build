.class public final Landroidx/core/view/GestureDetectorCompat;
.super Ljava/lang/Object;
.source "GestureDetectorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;,
        Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;,
        Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;
    }
.end annotation


# instance fields
.field private final mImpl:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 7

    .prologue
    .line 506
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/GestureDetectorCompat;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "listener":Landroid/view/GestureDetector$OnGestureListener;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 507
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 11

    .prologue
    .line 519
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/GestureDetectorCompat;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "listener":Landroid/view/GestureDetector$OnGestureListener;
    move-object v3, p3

    .local v3, "handler":Landroid/os/Handler;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 520
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-le v4, v5, :cond_0

    .line 521
    move-object v4, v0

    new-instance v5, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v5, v4, Landroidx/core/view/GestureDetectorCompat;->mImpl:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_0
    move-object v4, v0

    new-instance v5, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v5, v4, Landroidx/core/view/GestureDetectorCompat;->mImpl:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;

    goto :goto_0
.end method


# virtual methods
.method public isLongpressEnabled()Z
    .locals 2

    .prologue
    .line 531
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/GestureDetectorCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/GestureDetectorCompat;->mImpl:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;

    invoke-interface {v1}, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;->isLongpressEnabled()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/GestureDetectorCompat;
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 543
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/GestureDetectorCompat;
    move-object v1, p1

    .local v1, "event":Landroid/view/MotionEvent;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/GestureDetectorCompat;->mImpl:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/view/GestureDetectorCompat;
    return v0
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 4

    .prologue
    .line 556
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/GestureDetectorCompat;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/GestureDetectorCompat;->mImpl:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;->setIsLongpressEnabled(Z)V

    .line 557
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 4

    .prologue
    .line 567
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/GestureDetectorCompat;
    move-object v1, p1

    .local v1, "listener":Landroid/view/GestureDetector$OnDoubleTapListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/GestureDetectorCompat;->mImpl:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 568
    return-void
.end method
