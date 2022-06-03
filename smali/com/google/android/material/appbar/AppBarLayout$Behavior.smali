.class public Lcom/google/android/material/appbar/AppBarLayout$Behavior;
.super Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/AppBarLayout$Behavior$DragCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior",
        "<",
        "Lcom/google/android/material/appbar/AppBarLayout;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 852
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$Behavior;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;-><init>()V

    .line 853
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 860
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$Behavior;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 861
    return-void
.end method


# virtual methods
.method public bridge synthetic getLeftAndRightOffset()I
    .locals 2

    .prologue
    .line 842
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$Behavior;
    move-object v1, v0

    invoke-super {v1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getLeftAndRightOffset()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$Behavior;
    return v0
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .locals 2

    .prologue
    .line 842
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$Behavior;
    move-object v1, v0

    invoke-super {v1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$Behavior;
    return v0
.end method

.method public bridge synthetic onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)Z
    .locals 8

    .prologue
    .line 842
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$Behavior;
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-super {v4, v5, v6, v7}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$Behavior;
    return v0
.end method

.method public bridge synthetic onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIII)Z
    .locals 14

    .prologue
    .line 842
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$Behavior;
    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-super/range {v7 .. v13}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIII)Z

    move-result v7

    move v0, v7

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$Behavior;
    return v0
.end method

.method public bridge synthetic onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V
    .locals 16

    .prologue
    .line 842
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$Behavior;
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move v12, v4

    move v13, v5

    move-object v14, v6

    move v15, v7

    invoke-super/range {v8 .. v15}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public bridge synthetic onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII)V
    .locals 18

    .prologue
    .line 842
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$Behavior;
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-super/range {v9 .. v17}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII)V

    return-void
.end method

.method public bridge synthetic onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/os/Parcelable;)V
    .locals 8

    .prologue
    .line 842
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$Behavior;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 842
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$Behavior;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$Behavior;
    return-object v0
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 14

    .prologue
    .line 842
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$Behavior;
    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move v12, v5

    move v13, v6

    invoke-super/range {v7 .. v13}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result v7

    move v0, v7

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$Behavior;
    return v0
.end method

.method public bridge synthetic onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .locals 10

    .prologue
    .line 842
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$Behavior;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic setDragCallback(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;)V
    .locals 4
    .param p1    # Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 842
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$Behavior;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setDragCallback(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;)V

    return-void
.end method

.method public bridge synthetic setLeftAndRightOffset(I)Z
    .locals 4

    .prologue
    .line 842
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$Behavior;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setLeftAndRightOffset(I)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$Behavior;
    return v0
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .locals 4

    .prologue
    .line 842
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout$Behavior;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setTopAndBottomOffset(I)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout$Behavior;
    return v0
.end method
