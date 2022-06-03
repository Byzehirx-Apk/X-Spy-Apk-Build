.class Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;
.super Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeProviderApi19"
.end annotation


# direct methods
.method constructor <init>(Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;)V
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;
    move-object v1, p1

    .local v1, "compat":Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;-><init>(Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;)V

    .line 81
    return-void
.end method


# virtual methods
.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;
    move v1, p1

    .local v1, "focus":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;->mCompat:Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->findFocus(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v3

    move-object v2, v3

    .line 86
    .local v2, "compatInfo":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 87
    const/4 v3, 0x0

    move-object v0, v3

    .line 89
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->unwrap()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method
