.class public final Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->DYNAMIC:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component to create dynamic labels in Arrangements"
    iconName = "images/label.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

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
    .line 39
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 35
    move-object v2, v0

    const-string/jumbo v3, "KodularDynamicLabel"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->LOG_TAG:Ljava/lang/String;

    .line 36
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    .line 40
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->context:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method public final AlignmentCenter()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Center alignment (1)"
    .end annotation

    .prologue
    .line 215
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public final AlignmentLeft()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Left alignment (0)"
    .end annotation

    .prologue
    .line 210
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public final AlignmentRight()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Right alignment (2)"
    .end annotation

    .prologue
    .line 220
    move-object v0, p0

    const/4 v1, 0x2

    move v0, v1

    return v0
.end method

.method public final CreateLabel(ILcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a Dynamic Label"
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    :try_start_0
    new-instance v4, Landroid/widget/TextView;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    .line 53
    move-object v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 54
    move-object v4, v3

    const/high16 v5, -0x1000000

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 56
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    new-instance v5, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move v7, v1

    move-object v8, v3

    move-object v9, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 58
    move-object v4, v2

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 59
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 60
    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 62
    const-string/jumbo v4, "KodularDynamicLabel"

    move-object v5, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 64
    goto :goto_0
.end method

.method public final DeleteLabel(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove a label component with the given id."
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    move v1, p1

    move v3, v1

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object v2, v3

    .line 71
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getViewHolderById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 72
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 73
    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 75
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->removeItemById(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 77
    const-string/jumbo v3, "KodularDynamicLabel"

    move-object v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 79
    goto :goto_0
.end method

.method public final GetFontSize(I)F
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Font Size of a Label"
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 171
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 172
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v2

    move v0, v2

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public final GetHeight(I)I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Height of a Label"
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 154
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 155
    move-object v2, v1

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    move v0, v2

    .line 157
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public final GetLabelById(I)Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the label referenced by its id."
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 84
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 85
    new-instance v2, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;-><init>(Landroid/view/View;)V

    .line 87
    move-object v0, v2

    .line 89
    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public final GetText(I)Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Text of a Label"
    .end annotation

    .prologue
    .line 191
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 192
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 193
    move-object v2, v1

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 195
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0
.end method

.method public final GetWidth(I)I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Width of a Label"
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 137
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 138
    move-object v2, v1

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    move v0, v2

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public final SetAlignment(II)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Text Alignment of a Label. 0 = left, 1 = center and 2 = right."
    .end annotation

    .prologue
    .line 200
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 201
    move-object v1, v4

    if-eqz v3, :cond_0

    .line 202
    move-object v3, v1

    move v4, v2

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    .line 204
    :cond_0
    return-void
.end method

.method public final SetBackgroundColor(II)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Background Color of a Label"
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 97
    move-object v1, v4

    if-eqz v3, :cond_1

    .line 98
    move v3, v2

    if-eqz v3, :cond_0

    .line 99
    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    move-object v3, v1

    const v4, 0xffffff

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    .line 104
    :cond_1
    goto :goto_0
.end method

.method public final SetFont(IZZ)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Font of a Label"
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 121
    move-object v1, v5

    if-eqz v4, :cond_0

    .line 122
    move-object v4, v1

    const/4 v5, 0x0

    move v6, v2

    move v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 124
    :cond_0
    return-void
.end method

.method public final SetFontSize(IF)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Font Size of a Label"
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 163
    move-object v1, v4

    if-eqz v3, :cond_0

    .line 164
    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 166
    :cond_0
    return-void
.end method

.method public final SetHeight(II)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Height of a Label"
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 146
    move-object v1, v4

    if-eqz v3, :cond_0

    .line 147
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHeight(I)V

    .line 149
    :cond_0
    return-void
.end method

.method public final SetText(ILjava/lang/String;Z)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Text of a Label"
    .end annotation

    .prologue
    .line 179
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    .line 180
    move-object v1, v5

    if-eqz v4, :cond_1

    .line 181
    move v4, v3

    if-eqz v4, :cond_0

    .line 182
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextHTML(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 187
    :goto_0
    return-void

    .line 184
    :cond_0
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 187
    :cond_1
    goto :goto_0
.end method

.method public final SetTextColor(II)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Text Color of a Label"
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 109
    move-object v1, v4

    if-eqz v3, :cond_1

    .line 110
    move v3, v2

    if-eqz v3, :cond_0

    .line 111
    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    move-object v3, v1

    const/high16 v4, -0x1000000

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 116
    :cond_1
    goto :goto_0
.end method

.method public final SetWidth(II)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Width of a Label"
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 129
    move-object v1, v4

    if-eqz v3, :cond_0

    .line 130
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setWidth(I)V

    .line 132
    :cond_0
    return-void
.end method
