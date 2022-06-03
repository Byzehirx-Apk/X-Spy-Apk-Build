.class Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$7;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 4

    .prologue
    .line 1141
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$7;
    move-object v1, p1

    .local v1, "this$0":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$7;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-object v2, v0

    invoke-direct {v2}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5

    .prologue
    .line 1144
    move-object v0, p0

    .local v0, "this":Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$7;
    move v1, p1

    .local v1, "interpolatedTime":F
    move-object v2, p2

    .local v2, "t":Landroid/view/animation/Transformation;
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$7;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->moveToStart(F)V

    .line 1145
    return-void
.end method
