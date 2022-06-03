.class public Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior",
        "<",
        "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 859
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;-><init>()V

    .line 860
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 863
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 864
    return-void
.end method


# virtual methods
.method public bridge synthetic getInsetDodgeRect(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/Rect;)Z
    .locals 8
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 856
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->getInsetDodgeRect(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/Rect;)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;
    return v0
.end method

.method public bridge synthetic isAutoHideEnabled()Z
    .locals 2

    .prologue
    .line 856
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;
    move-object v1, v0

    invoke-super {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->isAutoHideEnabled()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;
    return v0
.end method

.method public bridge synthetic onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 4
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 856
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    return-void
.end method

.method public bridge synthetic onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/view/View;)Z
    .locals 8

    .prologue
    .line 856
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/view/View;)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;
    return v0
.end method

.method public bridge synthetic onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;I)Z
    .locals 8

    .prologue
    .line 856
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-super {v4, v5, v6, v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;I)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;
    return v0
.end method

.method public bridge synthetic setAutoHideEnabled(Z)V
    .locals 4

    .prologue
    .line 856
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->setAutoHideEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setInternalAutoHideListener(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 856
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->setInternalAutoHideListener(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V

    return-void
.end method
