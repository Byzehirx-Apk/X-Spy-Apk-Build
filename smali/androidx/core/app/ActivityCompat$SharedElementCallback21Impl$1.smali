.class Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl$1;
.super Ljava/lang/Object;
.source "ActivityCompat.java"

# interfaces
.implements Landroidx/core/app/SharedElementCallback$OnSharedElementsReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;

.field final synthetic val$listener:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;


# direct methods
.method constructor <init>(Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 5

    .prologue
    .line 617
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl$1;->this$0:Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl$1;->val$listener:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedElementsReady()V
    .locals 2

    .prologue
    .line 620
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl$1;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl$1;->val$listener:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-interface {v1}, Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    .line 621
    return-void
.end method
