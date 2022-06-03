.class public abstract Landroidx/fragment/app/FragmentContainer;
.super Ljava/lang/Object;
.source "FragmentContainer.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentContainer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    .locals 7

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentContainer;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "className":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arguments":Landroid/os/Bundle;
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Landroidx/fragment/app/FragmentContainer;
    return-object v0
.end method

.method public abstract onFindViewById(I)Landroid/view/View;
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract onHasView()Z
.end method
