.class public Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/TextInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityDelegate"
.end annotation


# instance fields
.field private final layout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 4

    .prologue
    .line 2102
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;
    move-object v1, p1

    .local v1, "layout":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 2103
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 2104
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 15

    .prologue
    .line 2108
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;
    move-object/from16 v1, p1

    .local v1, "host":Landroid/view/View;
    move-object/from16 v2, p2

    .local v2, "info":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    invoke-super {v12, v13, v14}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2109
    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v12}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v12

    move-object v3, v12

    .line 2110
    .local v3, "editText":Landroid/widget/EditText;
    move-object v12, v3

    if-eqz v12, :cond_4

    move-object v12, v3

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    :goto_0
    move-object v4, v12

    .line 2111
    .local v4, "text":Ljava/lang/CharSequence;
    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v12}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v12

    move-object v5, v12

    .line 2112
    .local v5, "hintText":Ljava/lang/CharSequence;
    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v12}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v12

    move-object v6, v12

    .line 2113
    .local v6, "errorText":Ljava/lang/CharSequence;
    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v12}, Lcom/google/android/material/textfield/TextInputLayout;->getCounterOverflowDescription()Ljava/lang/CharSequence;

    move-result-object v12

    move-object v7, v12

    .line 2114
    .local v7, "counterDesc":Ljava/lang/CharSequence;
    move-object v12, v4

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    const/4 v12, 0x1

    :goto_1
    move v8, v12

    .line 2115
    .local v8, "showingText":Z
    move-object v12, v5

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    const/4 v12, 0x1

    :goto_2
    move v9, v12

    .line 2116
    .local v9, "hasHint":Z
    move-object v12, v6

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    const/4 v12, 0x1

    :goto_3
    move v10, v12

    .line 2117
    .local v10, "showingError":Z
    move v12, v10

    if-nez v12, :cond_0

    move-object v12, v7

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_8

    :cond_0
    const/4 v12, 0x1

    :goto_4
    move v11, v12

    .line 2119
    .local v11, "contentInvalid":Z
    move v12, v8

    if-eqz v12, :cond_9

    .line 2120
    move-object v12, v2

    move-object v13, v4

    invoke-virtual {v12, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 2125
    :cond_1
    :goto_5
    move v12, v9

    if-eqz v12, :cond_2

    .line 2126
    move-object v12, v2

    move-object v13, v5

    invoke-virtual {v12, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setHintText(Ljava/lang/CharSequence;)V

    .line 2127
    move-object v12, v2

    move v13, v8

    if-nez v13, :cond_a

    move v13, v9

    if-eqz v13, :cond_a

    const/4 v13, 0x1

    :goto_6
    invoke-virtual {v12, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setShowingHintText(Z)V

    .line 2130
    :cond_2
    move v12, v11

    if-eqz v12, :cond_3

    .line 2131
    move-object v12, v2

    move v13, v10

    if-eqz v13, :cond_b

    move-object v13, v6

    :goto_7
    invoke-virtual {v12, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setError(Ljava/lang/CharSequence;)V

    .line 2132
    move-object v12, v2

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentInvalid(Z)V

    .line 2134
    :cond_3
    return-void

    .line 2110
    .end local v4    # "text":Ljava/lang/CharSequence;
    .end local v5    # "hintText":Ljava/lang/CharSequence;
    .end local v6    # "errorText":Ljava/lang/CharSequence;
    .end local v7    # "counterDesc":Ljava/lang/CharSequence;
    .end local v8    # "showingText":Z
    .end local v9    # "hasHint":Z
    .end local v10    # "showingError":Z
    .end local v11    # "contentInvalid":Z
    :cond_4
    const/4 v12, 0x0

    goto :goto_0

    .line 2114
    .restart local v4    # "text":Ljava/lang/CharSequence;
    .restart local v5    # "hintText":Ljava/lang/CharSequence;
    .restart local v6    # "errorText":Ljava/lang/CharSequence;
    .restart local v7    # "counterDesc":Ljava/lang/CharSequence;
    :cond_5
    const/4 v12, 0x0

    goto :goto_1

    .line 2115
    .restart local v8    # "showingText":Z
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 2116
    .restart local v9    # "hasHint":Z
    :cond_7
    const/4 v12, 0x0

    goto :goto_3

    .line 2117
    .restart local v10    # "showingError":Z
    :cond_8
    const/4 v12, 0x0

    goto :goto_4

    .line 2121
    .restart local v11    # "contentInvalid":Z
    :cond_9
    move v12, v9

    if-eqz v12, :cond_1

    .line 2122
    move-object v12, v2

    move-object v13, v5

    invoke-virtual {v12, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 2127
    :cond_a
    const/4 v13, 0x0

    goto :goto_6

    .line 2131
    :cond_b
    move-object v13, v7

    goto :goto_7
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 9

    .prologue
    .line 2138
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move-object v2, p2

    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-super {v6, v7, v8}, Landroidx/core/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2139
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    move-object v3, v6

    .line 2140
    .local v3, "editText":Landroid/widget/EditText;
    move-object v6, v3

    if-eqz v6, :cond_1

    move-object v6, v3

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    :goto_0
    move-object v4, v6

    .line 2141
    .local v4, "text":Ljava/lang/CharSequence;
    move-object v6, v4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v6

    :goto_1
    move-object v5, v6

    .line 2142
    .local v5, "eventText":Ljava/lang/CharSequence;
    move-object v6, v5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2143
    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v6

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 2145
    :cond_0
    return-void

    .line 2140
    .end local v4    # "text":Ljava/lang/CharSequence;
    .end local v5    # "eventText":Ljava/lang/CharSequence;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 2141
    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_2
    move-object v6, v4

    goto :goto_1
.end method
