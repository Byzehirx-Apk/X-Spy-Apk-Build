.class Landroidx/fragment/app/Fragment$2;
.super Landroidx/fragment/app/FragmentContainer;
.source "Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/Fragment;->instantiateChildFragmentManager()V
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
    .line 2386
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment$2;
    move-object v1, p1

    .local v1, "this$0":Landroidx/fragment/app/Fragment;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/Fragment$2;->this$0:Landroidx/fragment/app/Fragment;

    move-object v2, v0

    invoke-direct {v2}, Landroidx/fragment/app/FragmentContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    .locals 8

    .prologue
    .line 2403
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment$2;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "className":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arguments":Landroid/os/Bundle;
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/Fragment$2;->this$0:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/fragment/app/FragmentHostCallback;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Landroidx/fragment/app/Fragment$2;
    return-object v0
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2390
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment$2;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment$2;->this$0:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 2391
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Fragment does not have a view"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2393
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/Fragment$2;->this$0:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/Fragment$2;
    return-object v0
.end method

.method public onHasView()Z
    .locals 2

    .prologue
    .line 2398
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment$2;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/Fragment$2;->this$0:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment$2;
    return v0

    .restart local v0    # "this":Landroidx/fragment/app/Fragment$2;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
