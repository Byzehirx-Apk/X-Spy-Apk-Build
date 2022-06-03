.class public Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
.super Ljava/lang/Object;
.source "AccessibilityWindowInfoCompat.java"


# static fields
.field public static final TYPE_ACCESSIBILITY_OVERLAY:I = 0x4

.field public static final TYPE_APPLICATION:I = 0x1

.field public static final TYPE_INPUT_METHOD:I = 0x2

.field public static final TYPE_SPLIT_SCREEN_DIVIDER:I = 0x5

.field public static final TYPE_SYSTEM:I = 0x3

.field private static final UNDEFINED:I = -0x1


# instance fields
.field private mInfo:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    move-object v1, p1

    .local v1, "info":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 83
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public static obtain()Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    .locals 2

    .prologue
    .line 272
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 273
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v0

    .line 275
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static obtain(Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;)Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    .locals 3

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "info":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 289
    move-object v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 291
    :goto_0
    move-object v0, v1

    .line 294
    .end local v0    # "info":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :goto_1
    return-object v0

    .line 289
    .restart local v0    # "info":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 292
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    .line 291
    invoke-static {v1}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v1

    goto :goto_0

    .line 294
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_1
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 358
    move v0, p0

    .local v0, "type":I
    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 372
    const-string/jumbo v1, "<UNKNOWN>"

    move-object v0, v1

    .end local v0    # "type":I
    :goto_0
    return-object v0

    .line 360
    .restart local v0    # "type":I
    :pswitch_0
    const-string/jumbo v1, "TYPE_APPLICATION"

    move-object v0, v1

    goto :goto_0

    .line 363
    :pswitch_1
    const-string/jumbo v1, "TYPE_INPUT_METHOD"

    move-object v0, v1

    goto :goto_0

    .line 366
    :pswitch_2
    const-string/jumbo v1, "TYPE_SYSTEM"

    move-object v0, v1

    goto :goto_0

    .line 369
    :pswitch_3
    const-string/jumbo v1, "TYPE_ACCESSIBILITY_OVERLAY"

    move-object v0, v1

    goto :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    .locals 5

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "object":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v1, :cond_0

    .line 77
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 79
    .end local v0    # "object":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "object":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 320
    const/4 v3, 0x1

    move v0, v3

    .line 336
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :goto_0
    return v0

    .line 322
    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    .line 323
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 325
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 326
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 328
    :cond_2
    move-object v3, v1

    check-cast v3, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    move-object v2, v3

    .line 329
    .local v2, "other":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 330
    move-object v3, v2

    iget-object v3, v3, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    if-eqz v3, :cond_4

    .line 331
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 333
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v4, v2

    iget-object v4, v4, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 334
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 336
    :cond_4
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public getAnchor()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 3

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 258
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 259
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getAnchor()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 258
    invoke-static {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    move-object v0, v1

    .line 261
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    move-object v1, p1

    .local v1, "outBounds":Landroid/graphics/Rect;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 165
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 167
    :cond_0
    return-void
.end method

.method public getChild(I)Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    .locals 4

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    move v1, p1

    .local v1, "index":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 231
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getChild(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v2

    move-object v0, v2

    .line 233
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 3

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 217
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getChildCount()I

    move-result v1

    move v0, v1

    .line 219
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getId()I
    .locals 3

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 152
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v1

    move v0, v1

    .line 154
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :cond_0
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public getLayer()I
    .locals 3

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 112
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v1

    move v0, v1

    .line 114
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :cond_0
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public getParent()Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    .locals 3

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 139
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getParent()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v1

    move-object v0, v1

    .line 141
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getRoot()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 3

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 125
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 126
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 125
    invoke-static {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    move-object v0, v1

    .line 128
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 245
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .line 247
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getType()I
    .locals 3

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 98
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v1

    move v0, v1

    .line 100
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :cond_0
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public isAccessibilityFocused()Z
    .locals 3

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 204
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->isAccessibilityFocused()Z

    move-result v1

    move v0, v1

    .line 206
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :cond_0
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method public isActive()Z
    .locals 3

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 178
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v1

    move v0, v1

    .line 180
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :cond_0
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 3

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 191
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v1

    move v0, v1

    .line 193
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :cond_0
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 308
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    .line 310
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v3

    .line 342
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object v2, v3

    .line 343
    .local v2, "bounds":Landroid/graphics/Rect;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 344
    move-object v3, v1

    const-string/jumbo v4, "AccessibilityWindowInfo["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 345
    move-object v3, v1

    const-string/jumbo v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 346
    move-object v3, v1

    const-string/jumbo v4, ", type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->getType()I

    move-result v4

    invoke-static {v4}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->typeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 347
    move-object v3, v1

    const-string/jumbo v4, ", layer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->getLayer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 348
    move-object v3, v1

    const-string/jumbo v4, ", bounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 349
    move-object v3, v1

    const-string/jumbo v4, ", focused="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->isFocused()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 350
    move-object v3, v1

    const-string/jumbo v4, ", active="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->isActive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 351
    move-object v3, v1

    const-string/jumbo v4, ", hasParent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->getParent()Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 352
    move-object v3, v1

    const-string/jumbo v4, ", hasChildren="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->getChildCount()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 353
    move-object v3, v1

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 354
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    return-object v0

    .line 351
    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 352
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
