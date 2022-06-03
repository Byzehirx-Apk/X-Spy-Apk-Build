.class public final Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->DYNAMIC:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component to create dynamic textboxes in Arrangements"
    helpUrl = "https://docs.kodular.io/components/dynamic/dynamic-textbox/"
    iconName = "images/textbox.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/graphics/drawable/Drawable;

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
    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 39
    move-object v2, v0

    const-string/jumbo v3, "KodularDynamicTextBox"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox;->LOG_TAG:Ljava/lang/String;

    .line 40
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox;->kodularDynamicModelList:Ljava/util/List;

    .line 46
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox;->context:Landroid/content/Context;

    .line 47
    move-object v2, v1

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 48
    new-instance v2, Landroid/widget/EditText;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    .line 49
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/graphics/drawable/Drawable;

    .line 50
    return-void
.end method


# virtual methods
.method public final CreateTextBox(ILcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a Dynamic TextBox"
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    new-instance v4, Landroid/widget/EditText;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    .line 61
    move-object v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 62
    move-object v4, v3

    const/high16 v5, -0x1000000

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 63
    move-object v4, v3

    new-instance v5, Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox$1;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move v8, v1

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox$1;-><init>(Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox;I)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 74
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox;->kodularDynamicModelList:Ljava/util/List;

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

    .line 76
    move-object v4, v2

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 77
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 78
    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    return-void
.end method

.method public final DeleteTextBox(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove a textbox component with the given id."
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    move v1, p1

    move v3, v1

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    move-object v2, v3

    .line 86
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getViewHolderById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 87
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 88
    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 90
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->removeItemById(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 92
    const-string/jumbo v3, "KodularDynamicTextBox"

    move-object v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 94
    goto :goto_0
.end method

.method public final GetEnabled(I)Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Enabled status of a TextBox"
    .end annotation

    .prologue
    .line 185
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 186
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 187
    move-object v2, v1

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->isEnabled(Landroid/widget/TextView;)Z

    move-result v2

    move v0, v2

    .line 189
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
        description = "Get the Font Size of a TextBox"
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 203
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 204
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v2

    move v0, v2

    .line 206
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
        description = "Get the Height of a TextBox"
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 169
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 170
    move-object v2, v1

    invoke-virtual {v2}, Landroid/widget/EditText;->getHeight()I

    move-result v2

    move v0, v2

    .line 172
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
        description = "Get the Text of a TextBox"
    .end annotation

    .prologue
    .line 219
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 220
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 221
    move-object v2, v1

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 223
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0
.end method

.method public final GetTextBoxById(I)Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the textbox referenced by its id."
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 99
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 100
    new-instance v2, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;-><init>(Landroid/view/View;)V

    .line 102
    move-object v0, v2

    .line 104
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
        description = "Get the Width of a TextBox"
    .end annotation

    .prologue
    .line 151
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 152
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 153
    move-object v2, v1

    invoke-virtual {v2}, Landroid/widget/EditText;->getWidth()I

    move-result v2

    move v0, v2

    .line 155
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public final OnTextChanged(ILjava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Trigger when the text of a Dynamic TextBox changes"
    .end annotation

    .prologue
    .line 238
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "OnTextChanged"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 239
    return-void
.end method

.method public final SetAlignment(II)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Text Alignment of a TextBox. 0 = left, 1 = center and 2 = right."
    .end annotation

    .prologue
    .line 228
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 229
    move-object v1, v4

    if-eqz v3, :cond_0

    .line 230
    move-object v3, v1

    move v4, v2

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    .line 232
    :cond_0
    return-void
.end method

.method public final SetBackgroundColor(II)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Background Color of a TextBox"
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 112
    move-object v1, v4

    if-eqz v3, :cond_1

    .line 113
    move v3, v2

    if-eqz v3, :cond_0

    .line 114
    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    .line 119
    :goto_0
    return-void

    .line 116
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 119
    :cond_1
    goto :goto_0
.end method

.method public final SetEnabled(IZ)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Enabled status of a TextBox"
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 178
    move-object v1, v4

    if-eqz v3, :cond_0

    .line 179
    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setEnabled(Landroid/widget/TextView;Z)V

    .line 181
    :cond_0
    return-void
.end method

.method public final SetFont(IZZ)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Font of a TextBox"
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 136
    move-object v1, v5

    if-eqz v4, :cond_0

    .line 137
    move-object v4, v1

    const/4 v5, 0x0

    move v6, v2

    move v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 139
    :cond_0
    return-void
.end method

.method public final SetFontSize(IF)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Font Size of a TextBox"
    .end annotation

    .prologue
    .line 194
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 195
    move-object v1, v4

    if-eqz v3, :cond_0

    .line 196
    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 198
    :cond_0
    return-void
.end method

.method public final SetHeight(II)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Height of a TextBox"
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 161
    move-object v1, v4

    if-eqz v3, :cond_0

    .line 162
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHeight(I)V

    .line 164
    :cond_0
    return-void
.end method

.method public final SetText(ILjava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Text of a TextBox"
    .end annotation

    .prologue
    .line 211
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 212
    move-object v1, v4

    if-eqz v3, :cond_0

    .line 213
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 215
    :cond_0
    return-void
.end method

.method public final SetTextColor(II)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Text Color of a TextBox"
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 124
    move-object v1, v4

    if-eqz v3, :cond_1

    .line 125
    move v3, v2

    if-eqz v3, :cond_0

    .line 126
    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_0
    move-object v3, v1

    const/high16 v4, -0x1000000

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 131
    :cond_1
    goto :goto_0
.end method

.method public final SetWidth(II)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Width of a TextBox"
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidDynamicTextBox;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 144
    move-object v1, v4

    if-eqz v3, :cond_0

    .line 145
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setWidth(I)V

    .line 147
    :cond_0
    return-void
.end method
