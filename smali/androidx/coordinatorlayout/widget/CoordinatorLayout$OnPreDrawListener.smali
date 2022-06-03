.class Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnPreDrawListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/coordinatorlayout/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 4

    .prologue
    .line 1953
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;
    move-object v1, p1

    .local v1, "this$0":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;->this$0:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    .line 1956
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;
    move-object v1, v0

    iget-object v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;->this$0:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 1957
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;
    return v0
.end method
