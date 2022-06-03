.class final Landroidx/transition/ViewGroupUtilsApi14$1;
.super Landroid/animation/LayoutTransition;
.source "ViewGroupUtilsApi14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/ViewGroupUtilsApi14;->suppressLayout(Landroid/view/ViewGroup;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewGroupUtilsApi14$1;
    move-object v1, v0

    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    return-void
.end method


# virtual methods
.method public isChangingLayout()Z
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewGroupUtilsApi14$1;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/transition/ViewGroupUtilsApi14$1;
    return v0
.end method
