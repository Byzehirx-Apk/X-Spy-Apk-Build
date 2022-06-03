.class public Lcom/google/android/material/textfield/TextInputEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "TextInputEditText.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputEditText;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/textfield/TextInputEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputEditText;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Lcom/google/android/material/R$attr;->editTextStyle:I

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/material/textfield/TextInputEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputEditText;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyleAttr":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method private getHintFromLayout()Ljava/lang/CharSequence;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputEditText;
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/textfield/TextInputEditText;->getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    move-object v1, v2

    .line 88
    .local v1, "layout":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputEditText;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/textfield/TextInputEditText;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputEditText;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v1, v2

    .line 76
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    move-object v2, v1

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 77
    move-object v2, v1

    instance-of v2, v2, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v2, :cond_0

    .line 78
    move-object v2, v1

    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    move-object v0, v2

    .line 82
    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputEditText;
    :goto_1
    return-object v0

    .line 80
    .restart local v0    # "this":Lcom/google/android/material/textfield/TextInputEditText;
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 82
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_1
.end method


# virtual methods
.method public getHint()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputEditText;
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/textfield/TextInputEditText;->getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    move-object v1, v2

    .line 56
    .local v1, "layout":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    .line 59
    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputEditText;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/textfield/TextInputEditText;
    :cond_0
    move-object v2, v0

    invoke-super {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 5

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputEditText;
    move-object v1, p1

    .local v1, "outAttrs":Landroid/view/inputmethod/EditorInfo;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroidx/appcompat/widget/AppCompatEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    move-object v2, v3

    .line 65
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v1

    iget-object v3, v3, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    .line 68
    move-object v3, v1

    move-object v4, v0

    invoke-direct {v4}, Lcom/google/android/material/textfield/TextInputEditText;->getHintFromLayout()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 70
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputEditText;
    return-object v0
.end method
