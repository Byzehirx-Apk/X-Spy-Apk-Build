.class Landroidx/fragment/app/Fragment$3;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .prologue
    .line 2429
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment$3;
    move-object v1, p1

    .local v1, "this$0":Landroidx/fragment/app/Fragment;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/Fragment$3;->this$0:Landroidx/fragment/app/Fragment;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 6

    .prologue
    .line 2432
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment$3;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment$3;->this$0:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    if-nez v1, :cond_0

    .line 2433
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment$3;->this$0:Landroidx/fragment/app/Fragment;

    new-instance v2, Landroidx/lifecycle/LifecycleRegistry;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/Fragment$3;->this$0:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-direct {v3, v4}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 2435
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment$3;->this$0:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment$3;
    return-object v0
.end method
