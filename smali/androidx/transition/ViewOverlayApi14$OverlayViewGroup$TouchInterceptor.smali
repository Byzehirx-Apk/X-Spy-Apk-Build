.class Landroidx/transition/ViewOverlayApi14$OverlayViewGroup$TouchInterceptor;
.super Landroid/view/View;
.source "ViewOverlayApi14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TouchInterceptor"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewOverlayApi14$OverlayViewGroup$TouchInterceptor;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 350
    return-void
.end method
