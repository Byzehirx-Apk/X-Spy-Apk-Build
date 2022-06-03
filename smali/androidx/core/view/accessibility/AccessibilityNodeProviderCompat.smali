.class public Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;,
        Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;
    }
.end annotation


# static fields
.field public static final HOST_VIEW_ID:I = -0x1


# instance fields
.field private final mProvider:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 105
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 106
    move-object v1, v0

    new-instance v2, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;-><init>(Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;)V

    iput-object v2, v1, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->mProvider:Ljava/lang/Object;

    .line 112
    :goto_0
    return-void

    .line 107
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 108
    move-object v1, v0

    new-instance v2, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;-><init>(Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;)V

    iput-object v2, v1, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->mProvider:Ljava/lang/Object;

    goto :goto_0

    .line 110
    :cond_1
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->mProvider:Ljava/lang/Object;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    move-object v1, p1

    .local v1, "provider":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 121
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->mProvider:Ljava/lang/Object;

    .line 122
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    move v1, p1

    .local v1, "virtualViewId":I
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    return-object v0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move v2, p2

    .local v2, "virtualViewId":I
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    return-object v0
.end method

.method public findFocus(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    move v1, p1

    .local v1, "focus":I
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    return-object v0
.end method

.method public getProvider()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->mProvider:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    return-object v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 5

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    move v1, p1

    .local v1, "virtualViewId":I
    move v2, p2

    .local v2, "action":I
    move-object v3, p3

    .local v3, "arguments":Landroid/os/Bundle;
    const/4 v4, 0x0

    move v0, v4

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    return v0
.end method
