.class public final Lcom/google/android/material/expandable/ExpandableWidgetHelper;
.super Ljava/lang/Object;
.source "ExpandableWidgetHelper.java"


# instance fields
.field private expanded:Z

.field private expandedComponentIdHint:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private final widget:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/material/expandable/ExpandableWidget;)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/expandable/ExpandableWidgetHelper;
    move-object v1, p1

    .local v1, "widget":Lcom/google/android/material/expandable/ExpandableWidget;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 35
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    .line 36
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    .line 40
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    iput-object v3, v2, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->widget:Landroid/view/View;

    .line 41
    return-void
.end method

.method private dispatchExpandedStateChanged()V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/expandable/ExpandableWidgetHelper;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->widget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v1, v2

    .line 90
    .local v1, "parent":Landroid/view/ViewParent;
    move-object v2, v1

    instance-of v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v2, :cond_0

    .line 91
    move-object v2, v1

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->widget:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public getExpandedComponentIdHint()I
    .locals 2
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/expandable/ExpandableWidgetHelper;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/expandable/ExpandableWidgetHelper;
    return v0
.end method

.method public isExpanded()Z
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/expandable/ExpandableWidgetHelper;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/expandable/ExpandableWidgetHelper;
    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/expandable/ExpandableWidgetHelper;
    move-object v1, p1

    .local v1, "state":Landroid/os/Bundle;
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "expanded"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    .line 70
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "expandedComponentIdHint"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    .line 72
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    if-eqz v2, :cond_0

    .line 73
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->dispatchExpandedStateChanged()V

    .line 75
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/expandable/ExpandableWidgetHelper;
    new-instance v2, Landroid/os/Bundle;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v1, v2

    .line 61
    .local v1, "state":Landroid/os/Bundle;
    move-object v2, v1

    const-string/jumbo v3, "expanded"

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    move-object v2, v1

    const-string/jumbo v3, "expandedComponentIdHint"

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/expandable/ExpandableWidgetHelper;
    return-object v0
.end method

.method public setExpanded(Z)Z
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/expandable/ExpandableWidgetHelper;
    move v1, p1

    .local v1, "expanded":Z
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 46
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    .line 47
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->dispatchExpandedStateChanged()V

    .line 48
    const/4 v2, 0x1

    move v0, v2

    .line 50
    .end local v0    # "this":Lcom/google/android/material/expandable/ExpandableWidgetHelper;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/android/material/expandable/ExpandableWidgetHelper;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public setExpandedComponentIdHint(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/expandable/ExpandableWidgetHelper;
    move v1, p1

    .local v1, "expandedComponentIdHint":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    .line 80
    return-void
.end method
