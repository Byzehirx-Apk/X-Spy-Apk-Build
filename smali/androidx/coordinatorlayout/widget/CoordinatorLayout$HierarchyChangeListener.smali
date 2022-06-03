.class Landroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HierarchyChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/coordinatorlayout/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 4

    .prologue
    .line 3125
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 3126
    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 3130
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;
    move-object v1, p1

    .local v1, "parent":Landroid/view/View;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v3, :cond_0

    .line 3131
    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 3133
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 3137
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;
    move-object v1, p1

    .local v1, "parent":Landroid/view/View;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 3139
    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v3, :cond_0

    .line 3140
    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 3142
    :cond_0
    return-void
.end method
