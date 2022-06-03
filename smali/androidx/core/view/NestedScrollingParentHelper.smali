.class public Landroidx/core/view/NestedScrollingParentHelper;
.super Ljava/lang/Object;
.source "NestedScrollingParentHelper.java"


# instance fields
.field private mNestedScrollAxes:I

.field private final mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/NestedScrollingParentHelper;
    move-object v1, p1

    .local v1, "viewGroup":Landroid/view/ViewGroup;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 51
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/NestedScrollingParentHelper;->mViewGroup:Landroid/view/ViewGroup;

    .line 52
    return-void
.end method


# virtual methods
.method public getNestedScrollAxes()I
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/NestedScrollingParentHelper;
    move-object v1, v0

    iget v1, v1, Landroidx/core/view/NestedScrollingParentHelper;->mNestedScrollAxes:I

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/NestedScrollingParentHelper;
    return v0
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 9
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/NestedScrollingParentHelper;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "target":Landroid/view/View;
    move v3, p3

    .local v3, "axes":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 65
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/NestedScrollingParentHelper;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "target":Landroid/view/View;
    move v3, p3

    .local v3, "axes":I
    move v4, p4

    .local v4, "type":I
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroidx/core/view/NestedScrollingParentHelper;->mNestedScrollAxes:I

    .line 78
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/NestedScrollingParentHelper;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;I)V

    .line 101
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/NestedScrollingParentHelper;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move v2, p2

    .local v2, "type":I
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/core/view/NestedScrollingParentHelper;->mNestedScrollAxes:I

    .line 112
    return-void
.end method
