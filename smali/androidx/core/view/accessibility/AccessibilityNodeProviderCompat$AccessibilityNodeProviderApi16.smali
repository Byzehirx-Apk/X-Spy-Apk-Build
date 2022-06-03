.class Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeProviderApi16"
.end annotation


# instance fields
.field final mCompat:Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;


# direct methods
.method constructor <init>(Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;
    move-object v1, p1

    .local v1, "compat":Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    move-object v2, v0

    invoke-direct {v2}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 39
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;->mCompat:Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    .line 40
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;
    move v1, p1

    .local v1, "virtualViewId":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;->mCompat:Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    move v4, v1

    .line 45
    invoke-virtual {v3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->createAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v3

    move-object v2, v3

    .line 46
    .local v2, "compatInfo":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 47
    const/4 v3, 0x0

    move-object v0, v3

    .line 49
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->unwrap()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move v2, p2

    .local v2, "virtualViewId":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;->mCompat:Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    move-object v9, v1

    move v10, v2

    .line 57
    invoke-virtual {v8, v9, v10}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v8

    move-object v3, v8

    .line 58
    .local v3, "compatInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;>;"
    move-object v8, v3

    if-nez v8, :cond_0

    .line 59
    const/4 v8, 0x0

    move-object v0, v8

    .line 67
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;
    :goto_0
    return-object v0

    .line 61
    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v8

    .line 62
    .local v4, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v5, v8

    .line 63
    .local v5, "infoCount":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_1
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_1

    .line 64
    move-object v8, v3

    move v9, v6

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-object v7, v8

    .line 65
    .local v7, "infoCompat":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v8, v4

    move-object v9, v7

    invoke-virtual {v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->unwrap()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 63
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 67
    .end local v7    # "infoCompat":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_1
    move-object v8, v4

    move-object v0, v8

    goto :goto_0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 8

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;
    move v1, p1

    .local v1, "virtualViewId":I
    move v2, p2

    .local v2, "action":I
    move-object v3, p3

    .local v3, "arguments":Landroid/os/Bundle;
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;->mCompat:Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->performAction(IILandroid/os/Bundle;)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;
    return v0
.end method
