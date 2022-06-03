.class public abstract Lcom/google/android/material/transformation/ExpandableBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "ExpandableBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static final STATE_COLLAPSED:I = 0x2

.field private static final STATE_EXPANDED:I = 0x1

.field private static final STATE_UNINITIALIZED:I


# instance fields
.field private currentState:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/ExpandableBehavior;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 59
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/ExpandableBehavior;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/transformation/ExpandableBehavior;)I
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/transformation/ExpandableBehavior;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    move v0, v1

    .end local v0    # "x0":Lcom/google/android/material/transformation/ExpandableBehavior;
    return v0
.end method

.method private didStateChange(Z)Z
    .locals 4

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/ExpandableBehavior;
    move v1, p1

    .local v1, "expanded":Z
    move v2, v1

    if-eqz v2, :cond_2

    .line 141
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    if-eqz v2, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 144
    .end local v0    # "this":Lcom/google/android/material/transformation/ExpandableBehavior;
    :goto_1
    return v0

    .line 141
    .restart local v0    # "this":Lcom/google/android/material/transformation/ExpandableBehavior;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 144
    :cond_2
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    :goto_2
    move v0, v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static from(Landroid/view/View;Ljava/lang/Class;)Lcom/google/android/material/transformation/ExpandableBehavior;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/material/transformation/ExpandableBehavior;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move-object v1, p1

    .local v1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v2, v4

    .line 157
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object v4, v2

    instance-of v4, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-nez v4, :cond_0

    .line 158
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "The view is not a child of CoordinatorLayout"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 160
    :cond_0
    move-object v4, v2

    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 161
    invoke-virtual {v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v4

    move-object v3, v4

    .line 162
    .local v3, "behavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<*>;"
    move-object v4, v3

    instance-of v4, v4, Lcom/google/android/material/transformation/ExpandableBehavior;

    if-nez v4, :cond_1

    .line 163
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "The view is not associated with ExpandableBehavior"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 165
    :cond_1
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/transformation/ExpandableBehavior;

    move-object v0, v4

    .end local v0    # "view":Landroid/view/View;
    return-object v0
.end method


# virtual methods
.method protected findExpandableWidget(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Lcom/google/android/material/expandable/ExpandableWidget;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/ExpandableBehavior;
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v7

    move-object v3, v7

    .line 129
    .local v3, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v5, v7

    .local v5, "size":I
    :goto_0
    move v7, v4

    move v8, v5

    if-ge v7, v8, :cond_1

    .line 130
    move-object v7, v3

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    move-object v6, v7

    .line 131
    .local v6, "dependency":Landroid/view/View;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v6

    invoke-virtual {v7, v8, v9, v10}, Lcom/google/android/material/transformation/ExpandableBehavior;->layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 132
    move-object v7, v6

    check-cast v7, Lcom/google/android/material/expandable/ExpandableWidget;

    move-object v0, v7

    .line 135
    .end local v0    # "this":Lcom/google/android/material/transformation/ExpandableBehavior;
    .end local v6    # "dependency":Landroid/view/View;
    :goto_1
    return-object v0

    .line 129
    .restart local v0    # "this":Lcom/google/android/material/transformation/ExpandableBehavior;
    .restart local v6    # "dependency":Landroid/view/View;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 135
    .end local v6    # "dependency":Landroid/view/View;
    :cond_1
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_1
.end method

.method public abstract layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
.end method

.method public onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 11
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/ExpandableBehavior;
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-object v3, p3

    .local v3, "dependency":Landroid/view/View;
    move-object v6, v3

    check-cast v6, Lcom/google/android/material/expandable/ExpandableWidget;

    move-object v4, v6

    .line 117
    .local v4, "dep":Lcom/google/android/material/expandable/ExpandableWidget;
    move-object v6, v4

    invoke-interface {v6}, Lcom/google/android/material/expandable/ExpandableWidget;->isExpanded()Z

    move-result v6

    move v5, v6

    .line 118
    .local v5, "expanded":Z
    move-object v6, v0

    move v7, v5

    invoke-direct {v6, v7}, Lcom/google/android/material/transformation/ExpandableBehavior;->didStateChange(Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 119
    move-object v6, v0

    move-object v7, v4

    invoke-interface {v7}, Lcom/google/android/material/expandable/ExpandableWidget;->isExpanded()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    iput v7, v6, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    .line 120
    move-object v6, v0

    move-object v7, v4

    check-cast v7, Landroid/view/View;

    move-object v8, v2

    move-object v9, v4

    invoke-interface {v9}, Lcom/google/android/material/expandable/ExpandableWidget;->isExpanded()Z

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/android/material/transformation/ExpandableBehavior;->onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)Z

    move-result v6

    move v0, v6

    .line 123
    .end local v0    # "this":Lcom/google/android/material/transformation/ExpandableBehavior;
    :goto_1
    return v0

    .line 119
    .restart local v0    # "this":Lcom/google/android/material/transformation/ExpandableBehavior;
    :cond_0
    const/4 v7, 0x2

    goto :goto_0

    .line 123
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method

.method protected abstract onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)Z
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 14
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/ExpandableBehavior;
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object/from16 v2, p2

    .local v2, "child":Landroid/view/View;
    move/from16 v3, p3

    .local v3, "layoutDirection":I
    move-object v6, v2

    invoke-static {v6}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 89
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/google/android/material/transformation/ExpandableBehavior;->findExpandableWidget(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Lcom/google/android/material/expandable/ExpandableWidget;

    move-result-object v6

    move-object v4, v6

    .line 90
    .local v4, "dep":Lcom/google/android/material/expandable/ExpandableWidget;
    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v0

    move-object v7, v4

    invoke-interface {v7}, Lcom/google/android/material/expandable/ExpandableWidget;->isExpanded()Z

    move-result v7

    invoke-direct {v6, v7}, Lcom/google/android/material/transformation/ExpandableBehavior;->didStateChange(Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 91
    move-object v6, v0

    move-object v7, v4

    invoke-interface {v7}, Lcom/google/android/material/expandable/ExpandableWidget;->isExpanded()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_0
    iput v7, v6, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    .line 92
    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    move v5, v6

    .line 93
    .local v5, "expectedState":I
    move-object v6, v2

    .line 94
    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v7, Lcom/google/android/material/transformation/ExpandableBehavior$1;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    move-object v10, v2

    move v11, v5

    move-object v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/android/material/transformation/ExpandableBehavior$1;-><init>(Lcom/google/android/material/transformation/ExpandableBehavior;Landroid/view/View;ILcom/google/android/material/expandable/ExpandableWidget;)V

    .line 95
    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 110
    .end local v4    # "dep":Lcom/google/android/material/expandable/ExpandableWidget;
    .end local v5    # "expectedState":I
    :cond_0
    const/4 v6, 0x0

    move v0, v6

    .end local v0    # "this":Lcom/google/android/material/transformation/ExpandableBehavior;
    return v0

    .line 91
    .restart local v0    # "this":Lcom/google/android/material/transformation/ExpandableBehavior;
    .restart local v4    # "dep":Lcom/google/android/material/expandable/ExpandableWidget;
    :cond_1
    const/4 v7, 0x2

    goto :goto_0
.end method
