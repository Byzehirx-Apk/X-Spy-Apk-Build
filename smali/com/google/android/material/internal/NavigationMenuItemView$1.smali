.class Lcom/google/android/material/internal/NavigationMenuItemView$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "NavigationMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/NavigationMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/internal/NavigationMenuItemView;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/NavigationMenuItemView;)V
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuItemView$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/internal/NavigationMenuItemView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/internal/NavigationMenuItemView$1;->this$0:Lcom/google/android/material/internal/NavigationMenuItemView;

    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuItemView$1;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move-object v2, p2

    .local v2, "info":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 78
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/internal/NavigationMenuItemView$1;->this$0:Lcom/google/android/material/internal/NavigationMenuItemView;

    iget-boolean v4, v4, Lcom/google/android/material/internal/NavigationMenuItemView;->checkable:Z

    invoke-virtual {v3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    .line 79
    return-void
.end method
