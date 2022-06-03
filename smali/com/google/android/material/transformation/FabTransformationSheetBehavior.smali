.class public Lcom/google/android/material/transformation/FabTransformationSheetBehavior;
.super Lcom/google/android/material/transformation/FabTransformationBehavior;
.source "FabTransformationSheetBehavior.java"


# instance fields
.field private importantForAccessibilityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationSheetBehavior;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationSheetBehavior;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/transformation/FabTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method private updateImportantForAccessibility(Landroid/view/View;Z)V
    .locals 14

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationSheetBehavior;
    move-object v1, p1

    .local v1, "sheet":Landroid/view/View;
    move/from16 v2, p2

    .local v2, "expanded":Z
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    move-object v3, v9

    .line 78
    .local v3, "viewParent":Landroid/view/ViewParent;
    move-object v9, v3

    instance-of v9, v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v9, :cond_0

    .line 79
    .line 120
    :goto_0
    return-void

    .line 82
    :cond_0
    move-object v9, v3

    check-cast v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v4, v9

    .line 83
    .local v4, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v9, v4

    invoke-virtual {v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v9

    move v5, v9

    .line 84
    .local v5, "childCount":I
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v9, v10, :cond_1

    move v9, v2

    if-eqz v9, :cond_1

    .line 85
    move-object v9, v0

    new-instance v10, Ljava/util/HashMap;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move v12, v5

    invoke-direct {v11, v12}, Ljava/util/HashMap;-><init>(I)V

    iput-object v10, v9, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    .line 88
    :cond_1
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_1
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_7

    .line 89
    move-object v9, v4

    move v10, v6

    invoke-virtual {v9, v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 92
    .local v7, "child":Landroid/view/View;
    move-object v9, v7

    .line 93
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v9, v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v9, :cond_3

    move-object v9, v7

    .line 94
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v9

    instance-of v9, v9, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    :goto_2
    move v8, v9

    .line 96
    .local v8, "hasScrimBehavior":Z
    move-object v9, v7

    move-object v10, v1

    if-eq v9, v10, :cond_2

    move v9, v8

    if-eqz v9, :cond_4

    .line 97
    .line 88
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 94
    .end local v8    # "hasScrimBehavior":Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 100
    .restart local v8    # "hasScrimBehavior":Z
    :cond_4
    move v9, v2

    if-nez v9, :cond_5

    .line 101
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    if-eqz v9, :cond_2

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    move-object v10, v7

    .line 102
    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 104
    move-object v9, v7

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    move-object v11, v7

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v9, v10}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_3

    .line 108
    :cond_5
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v9, v10, :cond_6

    .line 109
    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    move-object v10, v7

    move-object v11, v7

    invoke-virtual {v11}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 112
    :cond_6
    move-object v9, v7

    const/4 v10, 0x4

    invoke-static {v9, v10}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_3

    .line 117
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "hasScrimBehavior":Z
    :cond_7
    move v9, v2

    if-nez v9, :cond_8

    .line 118
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    .line 120
    :cond_8
    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreateMotionSpec(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    .locals 12

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationSheetBehavior;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "expanded":Z
    move v5, v2

    if-eqz v5, :cond_0

    .line 57
    sget v5, Lcom/google/android/material/R$animator;->mtrl_fab_transformation_sheet_expand_spec:I

    move v3, v5

    .line 62
    .local v3, "specRes":I
    :goto_0
    new-instance v5, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;-><init>()V

    move-object v4, v5

    .line 63
    .local v4, "spec":Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    move-object v5, v4

    move-object v6, v1

    move v7, v3

    invoke-static {v6, v7}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 64
    move-object v5, v4

    new-instance v6, Lcom/google/android/material/animation/Positioning;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/16 v8, 0x11

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lcom/google/android/material/animation/Positioning;-><init>(IFF)V

    iput-object v6, v5, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    .line 65
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/google/android/material/transformation/FabTransformationSheetBehavior;
    return-object v0

    .line 59
    .end local v3    # "specRes":I
    .end local v4    # "spec":Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    .restart local v0    # "this":Lcom/google/android/material/transformation/FabTransformationSheetBehavior;
    :cond_0
    sget v5, Lcom/google/android/material/R$animator;->mtrl_fab_transformation_sheet_collapse_spec:I

    move v3, v5

    .restart local v3    # "specRes":I
    goto :goto_0
.end method

.method protected onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)Z
    .locals 10
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationSheetBehavior;
    move-object v1, p1

    .local v1, "dependency":Landroid/view/View;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move v3, p3

    .local v3, "expanded":Z
    move v4, p4

    .local v4, "animated":Z
    move-object v5, v0

    move-object v6, v2

    move v7, v3

    invoke-direct {v5, v6, v7}, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->updateImportantForAccessibility(Landroid/view/View;Z)V

    .line 73
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lcom/google/android/material/transformation/FabTransformationBehavior;->onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Lcom/google/android/material/transformation/FabTransformationSheetBehavior;
    return v0
.end method
