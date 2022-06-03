.class public Lcom/google/appinventor/components/runtime/util/KodularRtlSupportUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static isLayoutDirectionRTL()Z
    .locals 2

    .prologue
    .line 292
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/google/appinventor/components/runtime/util/KodularRtlSupportUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 294
    sget-object v0, Lcom/google/appinventor/components/runtime/util/KodularRtlSupportUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 297
    :goto_0
    return v0

    .line 295
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 297
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    sput-object v1, Lcom/google/appinventor/components/runtime/util/KodularRtlSupportUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public static setSupportAutoMirrored(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, v0

    if-nez v1, :cond_0

    .line 278
    .line 284
    :goto_0
    return-void

    .line 280
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 282
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 284
    :cond_1
    goto :goto_0
.end method

.method public static setSupportMargin(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V
    .locals 10

    .prologue
    .line 73
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    if-nez v5, :cond_0

    .line 74
    .line 86
    :goto_0
    return-void

    .line 76
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-ge v5, v6, :cond_1

    .line 79
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 82
    :cond_1
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 83
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 84
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 86
    goto :goto_0
.end method

.method public static setSupportMargin(Landroid/widget/FrameLayout$LayoutParams;IIII)V
    .locals 10

    .prologue
    .line 121
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    if-nez v5, :cond_0

    .line 122
    .line 134
    :goto_0
    return-void

    .line 124
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-ge v5, v6, :cond_1

    .line 127
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 130
    :cond_1
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 131
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 132
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 134
    goto :goto_0
.end method

.method public static setSupportMargin(Landroid/widget/GridLayout$LayoutParams;IIII)V
    .locals 10

    .prologue
    .line 145
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    if-nez v5, :cond_0

    .line 146
    .line 158
    :goto_0
    return-void

    .line 148
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-ge v5, v6, :cond_1

    .line 151
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 154
    :cond_1
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 155
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/GridLayout$LayoutParams;->setMarginStart(I)V

    .line 156
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/GridLayout$LayoutParams;->setMarginEnd(I)V

    .line 158
    goto :goto_0
.end method

.method public static setSupportMargin(Landroid/widget/LinearLayout$LayoutParams;IIII)V
    .locals 10

    .prologue
    .line 97
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    if-nez v5, :cond_0

    .line 98
    .line 110
    :goto_0
    return-void

    .line 100
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-ge v5, v6, :cond_1

    .line 103
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 106
    :cond_1
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 107
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 108
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 110
    goto :goto_0
.end method

.method public static setSupportMargin(Landroid/widget/RelativeLayout$LayoutParams;IIII)V
    .locals 10

    .prologue
    .line 169
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    if-nez v5, :cond_0

    .line 170
    .line 182
    :goto_0
    return-void

    .line 172
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-ge v5, v6, :cond_1

    .line 175
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 178
    :cond_1
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 179
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 180
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 182
    goto :goto_0
.end method

.method public static setSupportMargin(Landroid/widget/TableLayout$LayoutParams;IIII)V
    .locals 10

    .prologue
    .line 193
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    if-nez v5, :cond_0

    .line 194
    .line 206
    :goto_0
    return-void

    .line 196
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-ge v5, v6, :cond_1

    .line 199
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TableLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 202
    :cond_1
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TableLayout$LayoutParams;->setMargins(IIII)V

    .line 203
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/TableLayout$LayoutParams;->setMarginStart(I)V

    .line 204
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/TableLayout$LayoutParams;->setMarginEnd(I)V

    .line 206
    goto :goto_0
.end method

.method public static setSupportMargin(Landroid/widget/TableRow$LayoutParams;IIII)V
    .locals 10

    .prologue
    .line 217
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    if-nez v5, :cond_0

    .line 218
    .line 230
    :goto_0
    return-void

    .line 220
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-ge v5, v6, :cond_1

    .line 223
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 226
    :cond_1
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 227
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/TableRow$LayoutParams;->setMarginStart(I)V

    .line 228
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/TableRow$LayoutParams;->setMarginEnd(I)V

    .line 230
    goto :goto_0
.end method

.method public static setSupportMargin(Landroid/widget/Toolbar$LayoutParams;IIII)V
    .locals 10

    .prologue
    .line 241
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    if-nez v5, :cond_0

    .line 242
    .line 254
    :goto_0
    return-void

    .line 244
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-ge v5, v6, :cond_1

    .line 247
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/Toolbar$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 250
    :cond_1
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/Toolbar$LayoutParams;->setMargins(IIII)V

    .line 251
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/Toolbar$LayoutParams;->setMarginStart(I)V

    .line 252
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/Toolbar$LayoutParams;->setMarginEnd(I)V

    .line 254
    goto :goto_0
.end method

.method public static setSupportPadding(Landroid/view/View;IIII)V
    .locals 10

    .prologue
    .line 50
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    if-nez v5, :cond_0

    .line 51
    .line 62
    :goto_0
    return-void

    .line 53
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-ge v5, v6, :cond_1

    .line 56
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 61
    :goto_1
    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 62
    goto :goto_0

    .line 59
    :cond_1
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_1
.end method

.method public static setSupportTextDirection(Landroid/widget/TextView;)V
    .locals 3

    .prologue
    .line 261
    move-object v0, p0

    move-object v1, v0

    if-nez v1, :cond_0

    .line 262
    .line 270
    :goto_0
    return-void

    .line 264
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextDirection()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/KodularRtlSupportUtil;->isLayoutDirectionRTL()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    move-object v1, v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 268
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 270
    :cond_1
    goto :goto_0
.end method
