.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/ContentViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 4

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;"
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;"
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move-object v2, p2

    .local v2, "info":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 294
    move-object v3, v2

    const/high16 v4, 0x100000

    invoke-virtual {v3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 295
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setDismissable(Z)V

    .line 296
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 8

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;"
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move v2, p2

    .local v2, "action":I
    move-object v3, p3

    .local v3, "args":Landroid/os/Bundle;
    move v4, v2

    const/high16 v5, 0x100000

    if-ne v4, v5, :cond_0

    .line 301
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {v4}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->dismiss()V

    .line 302
    const/4 v4, 0x1

    move v0, v4

    .line 304
    .end local v0    # "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;"
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;"
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v4

    move v0, v4

    goto :goto_0
.end method
