.class Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;
.super Ljava/lang/Object;
.source "GestureDetectorCompat.java"

# interfaces
.implements Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/GestureDetectorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GestureDetectorCompatImplJellybeanMr2"
.end annotation


# instance fields
.field private final mDetector:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 11

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "listener":Landroid/view/GestureDetector$OnGestureListener;
    move-object v3, p3

    .local v3, "handler":Landroid/os/Handler;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 470
    move-object v4, v0

    new-instance v5, Landroid/view/GestureDetector;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v5, v4, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;->mDetector:Landroid/view/GestureDetector;

    .line 471
    return-void
.end method


# virtual methods
.method public isLongpressEnabled()Z
    .locals 2

    .prologue
    .line 475
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1}, Landroid/view/GestureDetector;->isLongpressEnabled()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 480
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;
    move-object v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;->mDetector:Landroid/view/GestureDetector;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;
    return v0
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 4

    .prologue
    .line 485
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;->mDetector:Landroid/view/GestureDetector;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 486
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 4

    .prologue
    .line 490
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;
    move-object v1, p1

    .local v1, "listener":Landroid/view/GestureDetector$OnDoubleTapListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;->mDetector:Landroid/view/GestureDetector;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 491
    return-void
.end method
