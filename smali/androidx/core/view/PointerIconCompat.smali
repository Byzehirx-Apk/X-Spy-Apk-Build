.class public final Landroidx/core/view/PointerIconCompat;
.super Ljava/lang/Object;
.source "PointerIconCompat.java"


# static fields
.field public static final TYPE_ALIAS:I = 0x3f2

.field public static final TYPE_ALL_SCROLL:I = 0x3f5

.field public static final TYPE_ARROW:I = 0x3e8

.field public static final TYPE_CELL:I = 0x3ee

.field public static final TYPE_CONTEXT_MENU:I = 0x3e9

.field public static final TYPE_COPY:I = 0x3f3

.field public static final TYPE_CROSSHAIR:I = 0x3ef

.field public static final TYPE_DEFAULT:I = 0x3e8

.field public static final TYPE_GRAB:I = 0x3fc

.field public static final TYPE_GRABBING:I = 0x3fd

.field public static final TYPE_HAND:I = 0x3ea

.field public static final TYPE_HELP:I = 0x3eb

.field public static final TYPE_HORIZONTAL_DOUBLE_ARROW:I = 0x3f6

.field public static final TYPE_NO_DROP:I = 0x3f4

.field public static final TYPE_NULL:I = 0x0

.field public static final TYPE_TEXT:I = 0x3f0

.field public static final TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW:I = 0x3f9

.field public static final TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW:I = 0x3f8

.field public static final TYPE_VERTICAL_DOUBLE_ARROW:I = 0x3f7

.field public static final TYPE_VERTICAL_TEXT:I = 0x3f1

.field public static final TYPE_WAIT:I = 0x3ec

.field public static final TYPE_ZOOM_IN:I = 0x3fa

.field public static final TYPE_ZOOM_OUT:I = 0x3fb


# instance fields
.field private mPointerIcon:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/PointerIconCompat;
    move-object v1, p1

    .local v1, "pointerIcon":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 108
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/PointerIconCompat;->mPointerIcon:Ljava/lang/Object;

    .line 109
    return-void
.end method

.method public static create(Landroid/graphics/Bitmap;FF)Landroidx/core/view/PointerIconCompat;
    .locals 9

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    move v1, p1

    .local v1, "hotSpotX":F
    move v2, p2

    .local v2, "hotSpotY":F
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 152
    new-instance v3, Landroidx/core/view/PointerIconCompat;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-static {v5, v6, v7}, Landroid/view/PointerIcon;->create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/core/view/PointerIconCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v3

    .line 154
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v3, Landroidx/core/view/PointerIconCompat;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroidx/core/view/PointerIconCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_0
.end method

.method public static getSystemIcon(Landroid/content/Context;I)Landroidx/core/view/PointerIconCompat;
    .locals 7

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "style":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 131
    new-instance v2, Landroidx/core/view/PointerIconCompat;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-static {v4, v5}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/core/view/PointerIconCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v2

    .line 133
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-object v0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    new-instance v2, Landroidx/core/view/PointerIconCompat;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroidx/core/view/PointerIconCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public static load(Landroid/content/res/Resources;I)Landroidx/core/view/PointerIconCompat;
    .locals 7

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "resources":Landroid/content/res/Resources;
    move v1, p1

    .local v1, "resourceId":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 181
    new-instance v2, Landroidx/core/view/PointerIconCompat;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-static {v4, v5}, Landroid/view/PointerIcon;->load(Landroid/content/res/Resources;I)Landroid/view/PointerIcon;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/core/view/PointerIconCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v2

    .line 183
    .end local v0    # "resources":Landroid/content/res/Resources;
    :goto_0
    return-object v0

    .restart local v0    # "resources":Landroid/content/res/Resources;
    :cond_0
    new-instance v2, Landroidx/core/view/PointerIconCompat;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroidx/core/view/PointerIconCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getPointerIcon()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/PointerIconCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/PointerIconCompat;->mPointerIcon:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/view/PointerIconCompat;
    return-object v0
.end method
