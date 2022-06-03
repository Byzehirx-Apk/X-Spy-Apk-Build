.class public final Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->DYNAMIC:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component to create dynamic buttons in Arrangements"
    iconName = "images/button.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/res/ColorStateList;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/Drawable;

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
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 43
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    .line 47
    move-object v2, v0

    const-string/jumbo v3, "MakeroidDynamicButton"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->LOG_TAG:Ljava/lang/String;

    .line 51
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->context:Landroid/content/Context;

    .line 52
    new-instance v2, Landroid/widget/Button;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    .line 53
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/Drawable;

    .line 54
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/res/ColorStateList;

    .line 55
    return-void
.end method


# virtual methods
.method public final ButtonClick(I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Trigger when a Dynamic Button is clicked."
    .end annotation

    .prologue
    .line 273
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "ButtonClick"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 274
    return-void
.end method

.method public final ButtonLongClick(I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Trigger when a Dynamic Button is long clicked."
    .end annotation

    .prologue
    .line 278
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "ButtonLongClick"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 279
    return-void
.end method

.method public final CreateButton(ILcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a Dynamic Button."
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    new-instance v4, Landroid/widget/Button;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    .line 66
    move-object v3, v5

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 68
    move-object v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 69
    move-object v4, v3

    new-instance v5, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton$1;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move v8, v1

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton$1;-><init>(Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;I)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    move-object v4, v3

    new-instance v5, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton$2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move v8, v1

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton$2;-><init>(Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;I)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 99
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

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

    .line 100
    move-object v4, v2

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 101
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 102
    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    return-void
.end method

.method public final DeleteButton(ILcom/google/appinventor/components/runtime/HVArrangement;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This block is DEPRECATED! Please use instead the \'Delete Button\' block without arrangement parameter."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v1

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object v3, v4

    .line 126
    move-object v4, v2

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/HVArrangement;->getView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 127
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 128
    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 130
    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->removeItemById(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 132
    const-string/jumbo v4, "MakeroidDynamicButton"

    move-object v5, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 134
    goto :goto_0
.end method

.method public final DeleteButtonNew(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Delete a Dynamic Button."
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    move v1, p1

    move v3, v1

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    move-object v2, v3

    .line 110
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getViewHolderById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 111
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 112
    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 114
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->removeItemById(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 118
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 116
    const-string/jumbo v3, "MakeroidDynamicButton"

    move-object v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 118
    goto :goto_0
.end method

.method public final GetButtonById(I)Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the button referenced by its id."
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 139
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 140
    new-instance v2, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;-><init>(Landroid/view/View;)V

    .line 142
    move-object v0, v2

    .line 144
    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public final GetEnabled(I)Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Enabled status of a button."
    .end annotation

    .prologue
    .line 228
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 229
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 230
    move-object v2, v1

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->isEnabled(Landroid/widget/TextView;)Z

    move-result v2

    move v0, v2

    .line 232
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public final GetFontSize(I)F
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Font Size of a button."
    .end annotation

    .prologue
    .line 245
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 246
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 247
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v2

    move v0, v2

    .line 249
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
        description = "Get the Height of a button."
    .end annotation

    .prologue
    .line 211
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 212
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 213
    move-object v2, v1

    invoke-virtual {v2}, Landroid/widget/Button;->getHeight()I

    move-result v2

    move v0, v2

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public final GetText(I)Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Text of a button."
    .end annotation

    .prologue
    .line 262
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 263
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 264
    move-object v2, v1

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 266
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
        description = "Get the Width of a button."
    .end annotation

    .prologue
    .line 191
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 192
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 193
    move-object v2, v1

    invoke-virtual {v2}, Landroid/widget/Button;->getWidth()I

    move-result v2

    move v0, v2

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public final SetBackgroundColor(II)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Background Color of a button."
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 153
    move-object v1, v4

    if-eqz v3, :cond_0

    .line 154
    move-object v3, v1

    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move v4, v2

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 156
    :cond_0
    return-void
.end method

.method public final SetEnabled(IZ)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Enabled status of a button."
    .end annotation

    .prologue
    .line 220
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 221
    move-object v1, v4

    if-eqz v3, :cond_0

    .line 222
    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setEnabled(Landroid/widget/TextView;Z)V

    .line 224
    :cond_0
    return-void
.end method

.method public final SetFont(IZZ)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Font of a button."
    .end annotation

    .prologue
    .line 172
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 173
    move-object v1, v5

    if-eqz v4, :cond_0

    .line 174
    move-object v4, v1

    const/4 v5, 0x0

    move v6, v2

    move v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 176
    :cond_0
    return-void
.end method

.method public final SetFontSize(IF)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Font Size of a button."
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 238
    move-object v1, v4

    if-eqz v3, :cond_0

    .line 239
    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 241
    :cond_0
    return-void
.end method

.method public final SetHeight(II)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Height of a button."
    .end annotation

    .prologue
    .line 200
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    .line 201
    move-object v1, v5

    if-eqz v4, :cond_0

    .line 202
    move-object v4, v1

    invoke-virtual {v4}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    .line 203
    move-object v3, v5

    move v5, v2

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 204
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    move-object v4, v1

    invoke-virtual {v4}, Landroid/widget/Button;->invalidate()V

    .line 207
    :cond_0
    return-void
.end method

.method public final SetText(ILjava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Text of a button."
    .end annotation

    .prologue
    .line 254
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 255
    move-object v1, v4

    if-eqz v3, :cond_0

    .line 256
    move-object v3, v1

    move-object v4, v2

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :cond_0
    return-void
.end method

.method public final SetTextColor(II)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Text Color of a button."
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 161
    move-object v1, v4

    if-eqz v3, :cond_1

    .line 162
    move v3, v2

    if-eqz v3, :cond_0

    .line 163
    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 168
    :goto_0
    return-void

    .line 165
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/res/ColorStateList;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColors(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 168
    :cond_1
    goto :goto_0
.end method

.method public final SetWidth(II)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Width of a button."
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    .line 181
    move-object v1, v5

    if-eqz v4, :cond_0

    .line 182
    move-object v4, v1

    invoke-virtual {v4}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    .line 183
    move-object v3, v5

    move v5, v2

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 184
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    move-object v4, v1

    invoke-virtual {v4}, Landroid/widget/Button;->invalidate()V

    .line 187
    :cond_0
    return-void
.end method
