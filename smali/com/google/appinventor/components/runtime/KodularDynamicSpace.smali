.class public final Lcom/google/appinventor/components/runtime/KodularDynamicSpace;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->DYNAMIC:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component to create dynamic space in Arrangements."
    iconName = "images/space.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private kodularDynamicModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 34
    move-object v2, v0

    const-string/jumbo v3, "KodularDynamicSpace"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->LOG_TAG:Ljava/lang/String;

    .line 35
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->kodularDynamicModelList:Ljava/util/List;

    .line 39
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->context:Landroid/content/Context;

    .line 40
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 41
    return-void
.end method


# virtual methods
.method public final CreateSpace(ILcom/google/appinventor/components/runtime/AndroidViewComponent;II)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a new space component dynamically. Use for width/height \'-1\' for wrap content or \'-2\' for fill parent."
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    :try_start_0
    new-instance v8, Landroid/widget/Space;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->context:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    .line 47
    move-object v5, v9

    move-object v9, v0

    move v10, v3

    move v11, v4

    move v6, v11

    move v4, v10

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    .line 1126
    move-object v3, v10

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->context:Landroid/content/Context;

    move v10, v4

    invoke-static {v9, v10}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v9

    move v7, v9

    .line 1127
    move-object v9, v3

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->context:Landroid/content/Context;

    move v10, v6

    invoke-static {v9, v10}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v9

    move v3, v9

    .line 1128
    move v9, v4

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 1129
    const/4 v9, -0x2

    move v7, v9

    .line 1134
    :cond_0
    :goto_0
    move v9, v6

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    .line 1135
    const/4 v9, -0x2

    move v3, v9

    .line 1140
    :cond_1
    :goto_1
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move v11, v7

    move v12, v3

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    invoke-virtual {v8, v9}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->kodularDynamicModelList:Ljava/util/List;

    new-instance v9, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move v11, v1

    move-object v12, v5

    move-object v13, v2

    invoke-direct {v10, v11, v12, v13}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 50
    move-object v8, v2

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 51
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 52
    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    :goto_2
    return-void

    .line 1130
    :cond_2
    move v9, v4

    const/4 v10, -0x2

    if-ne v9, v10, :cond_0

    .line 1131
    const/4 v9, -0x1

    move v7, v9

    goto :goto_0

    .line 1136
    :cond_3
    move v9, v6

    const/4 v10, -0x2

    if-ne v9, v10, :cond_1

    .line 1137
    const/4 v9, -0x1

    move v3, v9

    goto :goto_1

    .line 53
    :catch_0
    move-exception v8

    move-object v5, v8

    .line 54
    const-string/jumbo v8, "KodularDynamicSpace"

    move-object v9, v5

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 56
    goto :goto_2
.end method

.method public final DeleteSpace(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove a space component with the given id."
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    move v1, p1

    move v3, v1

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Space;

    move-object v2, v3

    .line 63
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getViewHolderById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 64
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 65
    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 67
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->removeItemById(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 69
    const-string/jumbo v3, "KodularDynamicSpace"

    move-object v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 71
    goto :goto_0
.end method

.method public final GetHeight(I)I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Height of a space component."
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Space;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 118
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 119
    move-object v2, v1

    invoke-virtual {v2}, Landroid/widget/Space;->getHeight()I

    move-result v2

    move v0, v2

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public final GetSpaceById(I)Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the space referenced by its id."
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Space;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 76
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 77
    new-instance v2, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;-><init>(Landroid/view/View;)V

    .line 79
    move-object v0, v2

    .line 81
    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public final GetWidth(I)I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Width of a space component."
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Space;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 98
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 99
    move-object v2, v1

    invoke-virtual {v2}, Landroid/widget/Space;->getWidth()I

    move-result v2

    move v0, v2

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public final SetHeight(II)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Height of a space component."
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/Space;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 107
    move-object v1, v5

    if-eqz v4, :cond_0

    .line 108
    move-object v4, v1

    invoke-virtual {v4}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 109
    move-object v3, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->context:Landroid/content/Context;

    move v6, v2

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 110
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    move-object v4, v1

    invoke-virtual {v4}, Landroid/widget/Space;->invalidate()V

    .line 113
    :cond_0
    return-void
.end method

.method public final SetWidth(II)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Width of a space component."
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/Space;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 87
    move-object v1, v5

    if-eqz v4, :cond_0

    .line 88
    move-object v4, v1

    invoke-virtual {v4}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 89
    move-object v3, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->context:Landroid/content/Context;

    move v6, v2

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 90
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    move-object v4, v1

    invoke-virtual {v4}, Landroid/widget/Space;->invalidate()V

    .line 93
    :cond_0
    return-void
.end method
