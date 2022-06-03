.class Lcom/google/android/material/transformation/ExpandableBehavior$1;
.super Ljava/lang/Object;
.source "ExpandableBehavior.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transformation/ExpandableBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/transformation/ExpandableBehavior;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$dep:Lcom/google/android/material/expandable/ExpandableWidget;

.field final synthetic val$expectedState:I


# direct methods
.method constructor <init>(Lcom/google/android/material/transformation/ExpandableBehavior;Landroid/view/View;ILcom/google/android/material/expandable/ExpandableWidget;)V
    .locals 7

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/ExpandableBehavior$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/transformation/ExpandableBehavior;
    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/android/material/transformation/ExpandableBehavior$1;->this$0:Lcom/google/android/material/transformation/ExpandableBehavior;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/google/android/material/transformation/ExpandableBehavior$1;->val$child:Landroid/view/View;

    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/google/android/material/transformation/ExpandableBehavior$1;->val$expectedState:I

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/android/material/transformation/ExpandableBehavior$1;->val$dep:Lcom/google/android/material/expandable/ExpandableWidget;

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/ExpandableBehavior$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/transformation/ExpandableBehavior$1;->val$child:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 101
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/transformation/ExpandableBehavior$1;->this$0:Lcom/google/android/material/transformation/ExpandableBehavior;

    invoke-static {v1}, Lcom/google/android/material/transformation/ExpandableBehavior;->access$000(Lcom/google/android/material/transformation/ExpandableBehavior;)I

    move-result v1

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/transformation/ExpandableBehavior$1;->val$expectedState:I

    if-ne v1, v2, :cond_0

    .line 102
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/transformation/ExpandableBehavior$1;->this$0:Lcom/google/android/material/transformation/ExpandableBehavior;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/transformation/ExpandableBehavior$1;->val$dep:Lcom/google/android/material/expandable/ExpandableWidget;

    check-cast v2, Landroid/view/View;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/transformation/ExpandableBehavior$1;->val$child:Landroid/view/View;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/transformation/ExpandableBehavior$1;->val$dep:Lcom/google/android/material/expandable/ExpandableWidget;

    invoke-interface {v4}, Lcom/google/android/material/expandable/ExpandableWidget;->isExpanded()Z

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/material/transformation/ExpandableBehavior;->onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)Z

    move-result v1

    .line 104
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/transformation/ExpandableBehavior$1;
    return v0
.end method
