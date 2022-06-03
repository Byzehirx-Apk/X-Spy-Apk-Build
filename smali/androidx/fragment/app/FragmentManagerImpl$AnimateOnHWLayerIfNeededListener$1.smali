.class Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener$1;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;)V
    .locals 4

    .prologue
    .line 4022
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener$1;->this$0:Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4025
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener$1;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener$1;->this$0:Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mView:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4026
    return-void
.end method
