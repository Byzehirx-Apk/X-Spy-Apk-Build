.class public Lcom/google/android/material/chip/ChipDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ChipDrawable.java"

# interfaces
.implements Landroidx/core/graphics/drawable/TintAwareDrawable;
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/ChipDrawable$Delegate;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_STATE:[I

.field private static final NAMESPACE_APP:Ljava/lang/String; = "http://schemas.android.com/apk/res-auto"


# instance fields
.field private alpha:I

.field private checkable:Z

.field private checkedIcon:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private checkedIconVisible:Z

.field private chipBackgroundColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private chipCornerRadius:F

.field private chipEndPadding:F

.field private chipIcon:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private chipIconSize:F

.field private chipIconTint:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private chipIconVisible:Z

.field private chipMinHeight:F

.field private final chipPaint:Landroid/graphics/Paint;

.field private chipStartPadding:F

.field private chipStrokeColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private chipStrokeWidth:F

.field private closeIcon:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private closeIconContentDescription:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private closeIconEndPadding:F

.field private closeIconSize:F

.field private closeIconStartPadding:F

.field private closeIconStateSet:[I

.field private closeIconTint:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private closeIconVisible:Z

.field private colorFilter:Landroid/graphics/ColorFilter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private compatRippleColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private currentChecked:Z

.field private currentChipBackgroundColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private currentChipStrokeColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private currentCompatRippleColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private currentTextColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private currentTint:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final debugPaint:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private delegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/material/chip/ChipDrawable$Delegate;",
            ">;"
        }
    .end annotation
.end field

.field private final fontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

.field private final fontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private iconEndPadding:F

.field private iconStartPadding:F

.field private maxWidth:I

.field private final pointF:Landroid/graphics/PointF;

.field private rawText:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final rectF:Landroid/graphics/RectF;

.field private rippleColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private shouldDrawText:Z

.field private showMotionSpec:Lcom/google/android/material/animation/MotionSpec;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private textAppearance:Lcom/google/android/material/resources/TextAppearance;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private textEndPadding:F

.field private final textPaint:Landroid/text/TextPaint;

.field private textStartPadding:F

.field private textWidth:F

.field private textWidthDirty:Z

.field private tint:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private tintFilter:Landroid/graphics/PorterDuffColorFilter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private tintMode:Landroid/graphics/PorterDuff$Mode;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private truncateAt:Landroid/text/TextUtils$TruncateAt;

.field private unicodeWrappedText:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private useCompatRipple:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 161
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x101009e

    aput v3, v1, v2

    sput-object v0, Lcom/google/android/material/chip/ChipDrawable;->DEFAULT_STATE:[I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 177
    move-object v2, v0

    new-instance v3, Lcom/google/android/material/chip/ChipDrawable$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/android/material/chip/ChipDrawable$1;-><init>(Lcom/google/android/material/chip/ChipDrawable;)V

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable;->fontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    .line 245
    move-object v2, v0

    new-instance v3, Landroid/text/TextPaint;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    .line 246
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 248
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint$FontMetrics;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 249
    move-object v2, v0

    new-instance v3, Landroid/graphics/RectF;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 250
    move-object v2, v0

    new-instance v3, Landroid/graphics/PointF;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    .line 259
    move-object v2, v0

    const/16 v3, 0xff

    iput v3, v2, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    .line 263
    move-object v2, v0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 267
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable;->delegate:Ljava/lang/ref/WeakReference;

    .line 268
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/material/chip/ChipDrawable;->textWidthDirty:Z

    .line 326
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 327
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable;->rawText:Ljava/lang/CharSequence;

    .line 329
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, v2, Landroid/text/TextPaint;->density:F

    .line 330
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    .line 331
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_0

    .line 332
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 335
    :cond_0
    move-object v2, v0

    sget-object v3, Lcom/google/android/material/chip/ChipDrawable;->DEFAULT_STATE:[I

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setState([I)Z

    move-result v2

    .line 336
    move-object v2, v0

    sget-object v3, Lcom/google/android/material/chip/ChipDrawable;->DEFAULT_STATE:[I

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconState([I)Z

    move-result v2

    .line 337
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/material/chip/ChipDrawable;->shouldDrawText:Z

    .line 338
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/material/chip/ChipDrawable;Z)Z
    .locals 7

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/google/android/material/chip/ChipDrawable;->textWidthDirty:Z

    move v0, v2

    .end local v0    # "x0":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method private applyChildDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1210
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 1211
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1212
    move-object v2, v1

    move-object v3, v0

    invoke-static {v3}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result v2

    .line 1213
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipDrawable;->getLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v2

    .line 1214
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipDrawable;->isVisible()Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v2

    .line 1216
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_2

    .line 1217
    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1218
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    .line 1220
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1227
    :cond_1
    :goto_0
    return-void

    .line 1222
    :cond_2
    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1223
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    goto :goto_0
.end method

.method private calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 8

    .prologue
    .line 751
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v2, p2

    .local v2, "outBounds":Landroid/graphics/RectF;
    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/RectF;->setEmpty()V

    .line 753
    move-object v4, v0

    invoke-direct {v4}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    invoke-direct {v4}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 754
    :cond_0
    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/chip/ChipDrawable;->iconStartPadding:F

    add-float/2addr v4, v5

    move v3, v4

    .line 756
    .local v3, "offsetFromStart":F
    move-object v4, v0

    invoke-static {v4}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v4

    if-nez v4, :cond_2

    .line 757
    move-object v4, v2

    move-object v5, v1

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    move v6, v3

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 758
    move-object v4, v2

    move-object v5, v2

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 764
    :goto_0
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 765
    move-object v4, v2

    move-object v5, v2

    iget v5, v5, Landroid/graphics/RectF;->top:F

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 767
    .end local v3    # "offsetFromStart":F
    :cond_1
    return-void

    .line 760
    .restart local v3    # "offsetFromStart":F
    :cond_2
    move-object v4, v2

    move-object v5, v1

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    move v6, v3

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 761
    move-object v4, v2

    move-object v5, v2

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->left:F

    goto :goto_0
.end method

.method private calculateChipTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 7

    .prologue
    .line 858
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v2, p2

    .local v2, "outBounds":Landroid/graphics/RectF;
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 860
    move-object v4, v0

    invoke-direct {v4}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 861
    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    add-float/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    add-float/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    add-float/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    add-float/2addr v4, v5

    move v3, v4

    .line 868
    .local v3, "offsetFromEnd":F
    move-object v4, v0

    invoke-static {v4}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v4

    if-nez v4, :cond_1

    .line 869
    move-object v4, v2

    move-object v5, v1

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    move v6, v3

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 874
    .end local v3    # "offsetFromEnd":F
    :cond_0
    :goto_0
    return-void

    .line 871
    .restart local v3    # "offsetFromEnd":F
    :cond_1
    move-object v4, v2

    move-object v5, v1

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    move v6, v3

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->left:F

    goto :goto_0
.end method

.method private calculateCloseIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 8

    .prologue
    .line 839
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v2, p2

    .local v2, "outBounds":Landroid/graphics/RectF;
    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/RectF;->setEmpty()V

    .line 841
    move-object v4, v0

    invoke-direct {v4}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 842
    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    add-float/2addr v4, v5

    move v3, v4

    .line 844
    .local v3, "offsetFromEnd":F
    move-object v4, v0

    invoke-static {v4}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v4

    if-nez v4, :cond_1

    .line 845
    move-object v4, v2

    move-object v5, v1

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    move v6, v3

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 846
    move-object v4, v2

    move-object v5, v2

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 852
    :goto_0
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 853
    move-object v4, v2

    move-object v5, v2

    iget v5, v5, Landroid/graphics/RectF;->top:F

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 855
    .end local v3    # "offsetFromEnd":F
    :cond_0
    return-void

    .line 848
    .restart local v3    # "offsetFromEnd":F
    :cond_1
    move-object v4, v2

    move-object v5, v1

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    move v6, v3

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 849
    move-object v4, v2

    move-object v5, v2

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->right:F

    goto :goto_0
.end method

.method private calculateCloseIconTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 7

    .prologue
    .line 877
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v2, p2

    .local v2, "outBounds":Landroid/graphics/RectF;
    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/RectF;->setEmpty()V

    .line 879
    move-object v4, v0

    invoke-direct {v4}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 880
    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    add-float/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    add-float/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    add-float/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    add-float/2addr v4, v5

    move v3, v4

    .line 887
    .local v3, "offsetFromEnd":F
    move-object v4, v0

    invoke-static {v4}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v4

    if-nez v4, :cond_1

    .line 888
    move-object v4, v2

    move-object v5, v1

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 889
    move-object v4, v2

    move-object v5, v2

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move v6, v3

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 895
    :goto_0
    move-object v4, v2

    move-object v5, v1

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 896
    move-object v4, v2

    move-object v5, v1

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 898
    .end local v3    # "offsetFromEnd":F
    :cond_0
    return-void

    .line 891
    .restart local v3    # "offsetFromEnd":F
    :cond_1
    move-object v4, v2

    move-object v5, v1

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 892
    move-object v4, v2

    move-object v5, v1

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    move v6, v3

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->right:F

    goto :goto_0
.end method

.method private calculateCloseIconWidth()F
    .locals 3

    .prologue
    .line 545
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    add-float/2addr v1, v2

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    add-float/2addr v1, v2

    move v0, v1

    .line 548
    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private calculateTextBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 8

    .prologue
    .line 813
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v2, p2

    .local v2, "outBounds":Landroid/graphics/RectF;
    move-object v5, v2

    invoke-virtual {v5}, Landroid/graphics/RectF;->setEmpty()V

    .line 815
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->unicodeWrappedText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    .line 816
    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v6

    add-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    add-float/2addr v5, v6

    move v3, v5

    .line 817
    .local v3, "offsetFromStart":F
    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    move-object v6, v0

    invoke-direct {v6}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconWidth()F

    move-result v6

    add-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    add-float/2addr v5, v6

    move v4, v5

    .line 819
    .local v4, "offsetFromEnd":F
    move-object v5, v0

    invoke-static {v5}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v5

    if-nez v5, :cond_1

    .line 820
    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    move v7, v3

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 821
    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    move v7, v4

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 829
    :goto_0
    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 830
    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 832
    .end local v3    # "offsetFromStart":F
    .end local v4    # "offsetFromEnd":F
    :cond_0
    return-void

    .line 823
    .restart local v3    # "offsetFromStart":F
    .restart local v4    # "offsetFromEnd":F
    :cond_1
    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    move v7, v4

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 824
    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    move v7, v3

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->right:F

    goto :goto_0
.end method

.method private calculateTextCenterFromBaseline()F
    .locals 3

    .prologue
    .line 804
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v1

    .line 805
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method private calculateTextWidth(Ljava/lang/CharSequence;)F
    .locals 6
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "charSequence":Ljava/lang/CharSequence;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 534
    const/4 v2, 0x0

    move v0, v2

    .line 537
    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method private canShowCheckedIcon()Z
    .locals 2

    .prologue
    .line 510
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/chip/ChipDrawable;->checkedIconVisible:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/ChipDrawable;
    .locals 10
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    move v2, p2

    .local v2, "defStyleAttr":I
    move v3, p3

    .local v3, "defStyleRes":I
    new-instance v5, Lcom/google/android/material/chip/ChipDrawable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;-><init>(Landroid/content/Context;)V

    move-object v4, v5

    .line 278
    .local v4, "chip":Lcom/google/android/material/chip/ChipDrawable;
    move-object v5, v4

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/material/chip/ChipDrawable;->loadFromAttributes(Landroid/util/AttributeSet;II)V

    .line 279
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method public static createFromResource(Landroid/content/Context;I)Lcom/google/android/material/chip/ChipDrawable;
    .locals 11
    .param p1    # I
        .annotation build Landroidx/annotation/XmlRes;
        .end annotation
    .end param

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "id":I
    move-object v6, v0

    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    move-object v2, v6

    .line 300
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    move-object v6, v2

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v3, v6

    .line 301
    .local v3, "type":I
    move v6, v3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    move v6, v3

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 302
    :cond_1
    move v6, v3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 303
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "No start tag found"

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 317
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "type":I
    :catch_0
    move-exception v6

    :goto_0
    move-object v2, v6

    .line 318
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can\'t load chip resource ID #0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v1

    .line 319
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    .line 320
    .local v3, "exception":Landroid/content/res/Resources$NotFoundException;
    move-object v6, v3

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    .line 321
    move-object v6, v3

    throw v6

    .line 306
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v3, "type":I
    :cond_2
    move-object v6, v2

    :try_start_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "chip"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 307
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "Must have a <chip> start tag"

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 317
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "type":I
    :catch_1
    move-exception v6

    goto :goto_0

    .line 310
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "type":I
    :cond_3
    move-object v6, v2

    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    move-object v4, v6

    .line 311
    .local v4, "attrs":Landroid/util/AttributeSet;
    move-object v6, v4

    invoke-interface {v6}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v6

    move v5, v6

    .line 312
    .local v5, "style":I
    move v6, v5

    if-nez v6, :cond_4

    .line 313
    sget v6, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Chip_Entry:I

    move v5, v6

    .line 316
    :cond_4
    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/google/android/material/R$attr;->chipStandaloneStyle:I

    move v9, v5

    invoke-static {v6, v7, v8, v9}, Lcom/google/android/material/chip/ChipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/ChipDrawable;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    move-object v0, v6

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method private drawCheckedIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 10
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 648
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, p2

    .local v2, "bounds":Landroid/graphics/Rect;
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 649
    move-object v5, v0

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {v5, v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 650
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move v3, v5

    .line 651
    .local v3, "tx":F
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    move v4, v5

    .line 653
    .local v4, "ty":F
    move-object v5, v1

    move v6, v3

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 655
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    float-to-int v8, v8

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 656
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 658
    move-object v5, v1

    move v6, v3

    neg-float v6, v6

    move v7, v4

    neg-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 660
    .end local v3    # "tx":F
    .end local v4    # "ty":F
    :cond_0
    return-void
.end method

.method private drawChipBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 8
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 597
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, p2

    .local v2, "bounds":Landroid/graphics/Rect;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/chip/ChipDrawable;->currentChipBackgroundColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 598
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 599
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    move-object v4, v0

    invoke-direct {v4}, Lcom/google/android/material/chip/ChipDrawable;->getTintColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v3

    .line 600
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 601
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 602
    return-void
.end method

.method private drawChipIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 10
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 633
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, p2

    .local v2, "bounds":Landroid/graphics/Rect;
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 634
    move-object v5, v0

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {v5, v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 635
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move v3, v5

    .line 636
    .local v3, "tx":F
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    move v4, v5

    .line 638
    .local v4, "ty":F
    move-object v5, v1

    move v6, v3

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 640
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    float-to-int v8, v8

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 641
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 643
    move-object v5, v1

    move v6, v3

    neg-float v6, v6

    move v7, v4

    neg-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 645
    .end local v3    # "tx":F
    .end local v4    # "ty":F
    :cond_0
    return-void
.end method

.method private drawChipStroke(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 11
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 609
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, p2

    .local v2, "bounds":Landroid/graphics/Rect;
    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 610
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/chip/ChipDrawable;->currentChipStrokeColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 611
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 612
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/chip/ChipDrawable;->getTintColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v4

    .line 613
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    move-object v5, v2

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    move-object v6, v2

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    move-object v7, v2

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    move-object v8, v2

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 620
    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    move v3, v4

    .line 621
    .local v3, "strokeCornerRadius":F
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    move v6, v3

    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 623
    .end local v3    # "strokeCornerRadius":F
    :cond_0
    return-void
.end method

.method private drawCloseIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 10
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 695
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, p2

    .local v2, "bounds":Landroid/graphics/Rect;
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 696
    move-object v5, v0

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {v5, v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 697
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move v3, v5

    .line 698
    .local v3, "tx":F
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    move v4, v5

    .line 700
    .local v4, "ty":F
    move-object v5, v1

    move v6, v3

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 702
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    float-to-int v8, v8

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 703
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 705
    move-object v5, v1

    move v6, v3

    neg-float v6, v6

    move v7, v4

    neg-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 707
    .end local v3    # "tx":F
    .end local v4    # "ty":F
    :cond_0
    return-void
.end method

.method private drawCompatRipple(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 8
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 626
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, p2

    .local v2, "bounds":Landroid/graphics/Rect;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/chip/ChipDrawable;->currentCompatRippleColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 627
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 628
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 629
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 630
    return-void
.end method

.method private drawDebug(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 710
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, p2

    .local v2, "bounds":Landroid/graphics/Rect;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_4

    .line 711
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    const/16 v5, 0x7f

    invoke-static {v4, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 714
    move-object v3, v1

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 717
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 718
    :cond_0
    move-object v3, v0

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 719
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 723
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->unicodeWrappedText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 724
    move-object v3, v1

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move-object v5, v2

    .line 725
    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    move-object v6, v2

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    move-object v7, v2

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    .line 724
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 729
    :cond_2
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 730
    move-object v3, v0

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 731
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 735
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x10000

    const/16 v5, 0x7f

    invoke-static {v4, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 736
    move-object v3, v0

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 737
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 740
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    const v4, -0xff0100

    const/16 v5, 0x7f

    invoke-static {v4, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 741
    move-object v3, v0

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 742
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 744
    :cond_4
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 14
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 664
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v2, p2

    .local v2, "bounds":Landroid/graphics/Rect;
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/chip/ChipDrawable;->unicodeWrappedText:Ljava/lang/CharSequence;

    if-eqz v7, :cond_3

    .line 665
    move-object v7, v0

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/material/chip/ChipDrawable;->calculateTextOriginAndAlignment(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/Paint$Align;

    move-result-object v7

    move-object v3, v7

    .line 668
    .local v3, "align":Landroid/graphics/Paint$Align;
    move-object v7, v0

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {v7, v8, v9}, Lcom/google/android/material/chip/ChipDrawable;->calculateTextBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 670
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/chip/ChipDrawable;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    if-eqz v7, :cond_0

    .line 671
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    move-result-object v8

    iput-object v8, v7, Landroid/text/TextPaint;->drawableState:[I

    .line 672
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/chip/ChipDrawable;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/chip/ChipDrawable;->fontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    invoke-virtual {v7, v8, v9, v10}, Lcom/google/android/material/resources/TextAppearance;->updateDrawState(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/core/content/res/ResourcesCompat$FontCallback;)V

    .line 674
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 676
    move-object v7, v0

    invoke-direct {v7}, Lcom/google/android/material/chip/ChipDrawable;->getTextWidth()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    if-le v7, v8, :cond_4

    const/4 v7, 0x1

    :goto_0
    move v4, v7

    .line 677
    .local v4, "clip":Z
    const/4 v7, 0x0

    move v5, v7

    .line 678
    .local v5, "saveCount":I
    move v7, v4

    if-eqz v7, :cond_1

    .line 679
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move-result v7

    move v5, v7

    .line 680
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v7

    .line 683
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/chip/ChipDrawable;->unicodeWrappedText:Ljava/lang/CharSequence;

    move-object v6, v7

    .line 684
    .local v6, "finalText":Ljava/lang/CharSequence;
    move v7, v4

    if-eqz v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/chip/ChipDrawable;->truncateAt:Landroid/text/TextUtils$TruncateAt;

    if-eqz v7, :cond_2

    .line 685
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/chip/ChipDrawable;->unicodeWrappedText:Ljava/lang/CharSequence;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/chip/ChipDrawable;->truncateAt:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v7, v8, v9, v10}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v6, v7

    .line 687
    :cond_2
    move-object v7, v1

    move-object v8, v6

    const/4 v9, 0x0

    move-object v10, v6

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/material/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    move-object v13, v0

    iget-object v13, v13, Lcom/google/android/material/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 688
    move v7, v4

    if-eqz v7, :cond_3

    .line 689
    move-object v7, v1

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 692
    .end local v3    # "align":Landroid/graphics/Paint$Align;
    .end local v4    # "clip":Z
    .end local v5    # "saveCount":I
    .end local v6    # "finalText":Ljava/lang/CharSequence;
    :cond_3
    return-void

    .line 676
    .restart local v3    # "align":Landroid/graphics/Paint$Align;
    :cond_4
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private getTextWidth()F
    .locals 4

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/chip/ChipDrawable;->textWidthDirty:Z

    if-nez v1, :cond_0

    .line 523
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/chip/ChipDrawable;->textWidth:F

    move v0, v1

    .line 529
    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    :goto_0
    return v0

    .line 526
    .restart local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    :cond_0
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->unicodeWrappedText:Ljava/lang/CharSequence;

    invoke-direct {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->calculateTextWidth(Ljava/lang/CharSequence;)F

    move-result v2

    iput v2, v1, Lcom/google/android/material/chip/ChipDrawable;->textWidth:F

    .line 528
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/material/chip/ChipDrawable;->textWidthDirty:Z

    .line 529
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/chip/ChipDrawable;->textWidth:F

    move v0, v1

    goto :goto_0
.end method

.method private getTintColorFilter()Landroid/graphics/ColorFilter;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1235
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_0
.end method

.method private static hasState([II)Z
    .locals 8
    .param p0    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 1245
    move-object v0, p0

    .local v0, "stateSet":[I
    move v1, p1

    .local v1, "state":I
    move-object v6, v0

    if-nez v6, :cond_0

    .line 1246
    const/4 v6, 0x0

    move v0, v6

    .line 1254
    .end local v0    # "stateSet":[I
    :goto_0
    return v0

    .line 1249
    .restart local v0    # "stateSet":[I
    :cond_0
    move-object v6, v0

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    move-object v6, v2

    move v7, v4

    aget v6, v6, v7

    move v5, v6

    .line 1250
    .local v5, "s":I
    move v6, v5

    move v7, v1

    if-ne v6, v7, :cond_1

    .line 1251
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 1249
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1254
    .end local v5    # "s":I
    :cond_2
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method private static isStateful(Landroid/content/res/ColorStateList;)Z
    .locals 2
    .param p0    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1038
    move-object v0, p0

    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "colorStateList":Landroid/content/res/ColorStateList;
    return v0

    .restart local v0    # "colorStateList":Landroid/content/res/ColorStateList;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isStateful(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1042
    move-object v0, p0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    return v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isStateful(Lcom/google/android/material/resources/TextAppearance;)Z
    .locals 2
    .param p0    # Lcom/google/android/material/resources/TextAppearance;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1046
    move-object v0, p0

    .local v0, "textAppearance":Lcom/google/android/material/resources/TextAppearance;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    .line 1048
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1046
    :goto_0
    move v0, v1

    .end local v0    # "textAppearance":Lcom/google/android/material/resources/TextAppearance;
    return v0

    .line 1048
    .restart local v0    # "textAppearance":Lcom/google/android/material/resources/TextAppearance;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadFromAttributes(Landroid/util/AttributeSet;II)V
    .locals 12
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    move v2, p2

    .local v2, "defStyleAttr":I
    move v3, p3

    .local v3, "defStyleRes":I
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    move-object v7, v1

    sget-object v8, Lcom/google/android/material/R$styleable;->Chip:[I

    move v9, v2

    move v10, v3

    const/4 v11, 0x0

    new-array v11, v11, [I

    .line 343
    invoke-static/range {v6 .. v11}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v4, v6

    .line 346
    .local v4, "a":Landroid/content/res/TypedArray;
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->Chip_chipBackgroundColor:I

    .line 347
    invoke-static {v7, v8, v9}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 346
    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 348
    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->Chip_chipMinHeight:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setChipMinHeight(F)V

    .line 349
    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->Chip_chipCornerRadius:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setChipCornerRadius(F)V

    .line 350
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->Chip_chipStrokeColor:I

    .line 351
    invoke-static {v7, v8, v9}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 350
    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 352
    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->Chip_chipStrokeWidth:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeWidth(F)V

    .line 353
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->Chip_rippleColor:I

    invoke-static {v7, v8, v9}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 355
    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->Chip_android_text:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 356
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->Chip_android_textAppearance:I

    .line 357
    invoke-static {v7, v8, v9}, Lcom/google/android/material/resources/MaterialResources;->getTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/resources/TextAppearance;

    move-result-object v7

    .line 356
    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V

    .line 359
    move-object v6, v4

    sget v7, Lcom/google/android/material/R$styleable;->Chip_android_ellipsize:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    move v5, v6

    .line 361
    .local v5, "ellipsize":I
    move v6, v5

    packed-switch v6, :pswitch_data_0

    .line 377
    :goto_0
    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->Chip_chipIconVisible:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(Z)V

    .line 380
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    const-string/jumbo v7, "http://schemas.android.com/apk/res-auto"

    const-string/jumbo v8, "chipIconEnabled"

    invoke-interface {v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v6, v1

    const-string/jumbo v7, "http://schemas.android.com/apk/res-auto"

    const-string/jumbo v8, "chipIconVisible"

    .line 381
    invoke-interface {v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 382
    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->Chip_chipIconEnabled:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(Z)V

    .line 384
    :cond_0
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->Chip_chipIcon:I

    invoke-static {v7, v8, v9}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    .line 385
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->Chip_chipIconTint:I

    invoke-static {v7, v8, v9}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconTint(Landroid/content/res/ColorStateList;)V

    .line 386
    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->Chip_chipIconSize:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconSize(F)V

    .line 388
    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->Chip_closeIconVisible:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(Z)V

    .line 392
    move-object v6, v1

    if-eqz v6, :cond_1

    move-object v6, v1

    const-string/jumbo v7, "http://schemas.android.com/apk/res-auto"

    const-string/jumbo v8, "closeIconEnabled"

    invoke-interface {v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    move-object v6, v1

    const-string/jumbo v7, "http://schemas.android.com/apk/res-auto"

    const-string/jumbo v8, "closeIconVisible"

    .line 393
    invoke-interface {v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 394
    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->Chip_closeIconEnabled:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(Z)V

    .line 396
    :cond_1
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->Chip_closeIcon:I

    invoke-static {v7, v8, v9}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    .line 397
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->Chip_closeIconTint:I

    .line 398
    invoke-static {v7, v8, v9}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 397
    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    .line 399
    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->Chip_closeIconSize:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconSize(F)V

    .line 401
    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->Chip_android_checkable:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setCheckable(Z)V

    .line 402
    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->Chip_checkedIconVisible:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    .line 406
    move-object v6, v1

    if-eqz v6, :cond_2

    move-object v6, v1

    const-string/jumbo v7, "http://schemas.android.com/apk/res-auto"

    const-string/jumbo v8, "checkedIconEnabled"

    invoke-interface {v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    move-object v6, v1

    const-string/jumbo v7, "http://schemas.android.com/apk/res-auto"

    const-string/jumbo v8, "checkedIconVisible"

    .line 407
    invoke-interface {v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 408
    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->Chip_checkedIconEnabled:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    .line 410
    :cond_2
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->Chip_checkedIcon:I

    invoke-static {v7, v8, v9}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    .line 412
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->Chip_showMotionSpec:I

    invoke-static {v7, v8, v9}, Lcom/google/android/material/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    .line 413
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    move-object v8, v4

    sget v9, Lcom/google/android/material/R$styleable;->Chip_hideMotionSpec:I

    invoke-static {v7, v8, v9}, Lcom/google/android/material/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    .line 415
    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->Chip_chipStartPadding:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setChipStartPadding(F)V

    .line 416
    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->Chip_iconStartPadding:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setIconStartPadding(F)V

    .line 417
    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->Chip_iconEndPadding:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setIconEndPadding(F)V

    .line 418
    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->Chip_textStartPadding:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setTextStartPadding(F)V

    .line 419
    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->Chip_textEndPadding:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setTextEndPadding(F)V

    .line 420
    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->Chip_closeIconStartPadding:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconStartPadding(F)V

    .line 421
    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->Chip_closeIconEndPadding:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconEndPadding(F)V

    .line 422
    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->Chip_chipEndPadding:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setChipEndPadding(F)V

    .line 424
    move-object v6, v0

    move-object v7, v4

    sget v8, Lcom/google/android/material/R$styleable;->Chip_android_maxWidth:I

    const v9, 0x7fffffff

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setMaxWidth(I)V

    .line 426
    move-object v6, v4

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 427
    return-void

    .line 363
    :pswitch_0
    move-object v6, v0

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 364
    goto/16 :goto_0

    .line 366
    :pswitch_1
    move-object v6, v0

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 367
    goto/16 :goto_0

    .line 369
    :pswitch_2
    move-object v6, v0

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Lcom/google/android/material/chip/ChipDrawable;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 370
    goto/16 :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onStateChange([I[I)Z
    .locals 16

    .prologue
    .line 958
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object/from16 v1, p1

    .local v1, "chipState":[I
    move-object/from16 v2, p2

    .local v2, "closeIconState":[I
    move-object v12, v0

    move-object v13, v1

    invoke-super {v12, v13}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v12

    move v3, v12

    .line 959
    .local v3, "invalidate":Z
    const/4 v12, 0x0

    move v4, v12

    .line 961
    .local v4, "sizeChanged":Z
    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/material/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    if-eqz v12, :cond_b

    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/material/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    move-object v13, v1

    move-object v14, v0

    iget v14, v14, Lcom/google/android/material/chip/ChipDrawable;->currentChipBackgroundColor:I

    .line 963
    invoke-virtual {v12, v13, v14}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v12

    :goto_0
    move v5, v12

    .line 965
    .local v5, "newChipBackgroundColor":I
    move-object v12, v0

    iget v12, v12, Lcom/google/android/material/chip/ChipDrawable;->currentChipBackgroundColor:I

    move v13, v5

    if-eq v12, v13, :cond_0

    .line 966
    move-object v12, v0

    move v13, v5

    iput v13, v12, Lcom/google/android/material/chip/ChipDrawable;->currentChipBackgroundColor:I

    .line 967
    const/4 v12, 0x1

    move v3, v12

    .line 970
    :cond_0
    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    if-eqz v12, :cond_c

    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    move-object v13, v1

    move-object v14, v0

    iget v14, v14, Lcom/google/android/material/chip/ChipDrawable;->currentChipStrokeColor:I

    .line 972
    invoke-virtual {v12, v13, v14}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v12

    :goto_1
    move v6, v12

    .line 974
    .local v6, "newChipStrokeColor":I
    move-object v12, v0

    iget v12, v12, Lcom/google/android/material/chip/ChipDrawable;->currentChipStrokeColor:I

    move v13, v6

    if-eq v12, v13, :cond_1

    .line 975
    move-object v12, v0

    move v13, v6

    iput v13, v12, Lcom/google/android/material/chip/ChipDrawable;->currentChipStrokeColor:I

    .line 976
    const/4 v12, 0x1

    move v3, v12

    .line 979
    :cond_1
    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/material/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    if-eqz v12, :cond_d

    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/material/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    move-object v13, v1

    move-object v14, v0

    iget v14, v14, Lcom/google/android/material/chip/ChipDrawable;->currentCompatRippleColor:I

    .line 981
    invoke-virtual {v12, v13, v14}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v12

    :goto_2
    move v7, v12

    .line 983
    .local v7, "newCompatRippleColor":I
    move-object v12, v0

    iget v12, v12, Lcom/google/android/material/chip/ChipDrawable;->currentCompatRippleColor:I

    move v13, v7

    if-eq v12, v13, :cond_2

    .line 984
    move-object v12, v0

    move v13, v7

    iput v13, v12, Lcom/google/android/material/chip/ChipDrawable;->currentCompatRippleColor:I

    .line 985
    move-object v12, v0

    iget-boolean v12, v12, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    if-eqz v12, :cond_2

    .line 986
    const/4 v12, 0x1

    move v3, v12

    .line 990
    :cond_2
    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/material/chip/ChipDrawable;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    if-eqz v12, :cond_e

    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/material/chip/ChipDrawable;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    iget-object v12, v12, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v12, :cond_e

    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/material/chip/ChipDrawable;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    iget-object v12, v12, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    move-object v13, v1

    move-object v14, v0

    iget v14, v14, Lcom/google/android/material/chip/ChipDrawable;->currentTextColor:I

    .line 992
    invoke-virtual {v12, v13, v14}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v12

    :goto_3
    move v8, v12

    .line 994
    .local v8, "newTextColor":I
    move-object v12, v0

    iget v12, v12, Lcom/google/android/material/chip/ChipDrawable;->currentTextColor:I

    move v13, v8

    if-eq v12, v13, :cond_3

    .line 995
    move-object v12, v0

    move v13, v8

    iput v13, v12, Lcom/google/android/material/chip/ChipDrawable;->currentTextColor:I

    .line 996
    const/4 v12, 0x1

    move v3, v12

    .line 999
    :cond_3
    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    move-result-object v12

    const v13, 0x10100a0

    invoke-static {v12, v13}, Lcom/google/android/material/chip/ChipDrawable;->hasState([II)Z

    move-result v12

    if-eqz v12, :cond_f

    move-object v12, v0

    iget-boolean v12, v12, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    if-eqz v12, :cond_f

    const/4 v12, 0x1

    :goto_4
    move v9, v12

    .line 1000
    .local v9, "newChecked":Z
    move-object v12, v0

    iget-boolean v12, v12, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    move v13, v9

    if-eq v12, v13, :cond_4

    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_4

    .line 1001
    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v12

    move v10, v12

    .line 1002
    .local v10, "oldChipIconWidth":F
    move-object v12, v0

    move v13, v9

    iput-boolean v13, v12, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    .line 1003
    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v12

    move v11, v12

    .line 1004
    .local v11, "newChipIconWidth":F
    const/4 v12, 0x1

    move v3, v12

    .line 1006
    move v12, v10

    move v13, v11

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_4

    .line 1007
    const/4 v12, 0x1

    move v4, v12

    .line 1011
    .end local v10    # "oldChipIconWidth":F
    .end local v11    # "newChipIconWidth":F
    :cond_4
    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    if-eqz v12, :cond_10

    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    move-object v13, v1

    move-object v14, v0

    iget v14, v14, Lcom/google/android/material/chip/ChipDrawable;->currentTint:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v12

    :goto_5
    move v10, v12

    .line 1012
    .local v10, "newTint":I
    move-object v12, v0

    iget v12, v12, Lcom/google/android/material/chip/ChipDrawable;->currentTint:I

    move v13, v10

    if-eq v12, v13, :cond_5

    .line 1013
    move-object v12, v0

    move v13, v10

    iput v13, v12, Lcom/google/android/material/chip/ChipDrawable;->currentTint:I

    .line 1014
    move-object v12, v0

    move-object v13, v0

    move-object v14, v0

    iget-object v14, v14, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    move-object v15, v0

    iget-object v15, v15, Lcom/google/android/material/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v13, v14, v15}, Lcom/google/android/material/drawable/DrawableUtils;->updateTintFilter(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v13

    iput-object v13, v12, Lcom/google/android/material/chip/ChipDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 1015
    const/4 v12, 0x1

    move v3, v12

    .line 1018
    :cond_5
    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v12}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1019
    move v12, v3

    move-object v13, v0

    iget-object v13, v13, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    move-object v14, v1

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v13

    or-int/2addr v12, v13

    move v3, v12

    .line 1021
    :cond_6
    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v12}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1022
    move v12, v3

    move-object v13, v0

    iget-object v13, v13, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    move-object v14, v1

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v13

    or-int/2addr v12, v13

    move v3, v12

    .line 1024
    :cond_7
    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v12}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1025
    move v12, v3

    move-object v13, v0

    iget-object v13, v13, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    move-object v14, v2

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v13

    or-int/2addr v12, v13

    move v3, v12

    .line 1028
    :cond_8
    move v12, v3

    if-eqz v12, :cond_9

    .line 1029
    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1031
    :cond_9
    move v12, v4

    if-eqz v12, :cond_a

    .line 1032
    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1034
    :cond_a
    move v12, v3

    move v0, v12

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0

    .line 963
    .end local v5    # "newChipBackgroundColor":I
    .end local v6    # "newChipStrokeColor":I
    .end local v7    # "newCompatRippleColor":I
    .end local v8    # "newTextColor":I
    .end local v9    # "newChecked":Z
    .end local v10    # "newTint":I
    .restart local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 972
    .restart local v5    # "newChipBackgroundColor":I
    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 981
    .restart local v6    # "newChipStrokeColor":I
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 992
    .restart local v7    # "newCompatRippleColor":I
    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 999
    .restart local v8    # "newTextColor":I
    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 1011
    .restart local v9    # "newChecked":Z
    :cond_10
    const/4 v12, 0x0

    goto :goto_5
.end method

.method private showsCheckedIcon()Z
    .locals 2

    .prologue
    .line 500
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/chip/ChipDrawable;->checkedIconVisible:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showsChipIcon()Z
    .locals 2

    .prologue
    .line 495
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/chip/ChipDrawable;->chipIconVisible:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showsCloseIcon()Z
    .locals 2

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/chip/ChipDrawable;->closeIconVisible:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1203
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 1204
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1206
    :cond_0
    return-void
.end method

.method private updateCompatRippleColor()V
    .locals 3

    .prologue
    .line 1239
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    .line 1240
    invoke-static {v2}, Lcom/google/android/material/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v2

    :goto_0
    iput-object v2, v1, Lcom/google/android/material/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    .line 1241
    return-void

    .line 1240
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method calculateChipIconWidth()F
    .locals 3

    .prologue
    .line 515
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 516
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/chip/ChipDrawable;->iconStartPadding:F

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    add-float/2addr v1, v2

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/chip/ChipDrawable;->iconEndPadding:F

    add-float/2addr v1, v2

    move v0, v1

    .line 518
    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method calculateTextOriginAndAlignment(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/Paint$Align;
    .locals 8

    .prologue
    .line 771
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v2, p2

    .local v2, "pointF":Landroid/graphics/PointF;
    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 772
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object v3, v5

    .line 774
    .local v3, "align":Landroid/graphics/Paint$Align;
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->unicodeWrappedText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    .line 775
    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v6

    add-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    add-float/2addr v5, v6

    move v4, v5

    .line 777
    .local v4, "offsetFromStart":F
    move-object v5, v0

    invoke-static {v5}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v5

    if-nez v5, :cond_1

    .line 778
    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    move v7, v4

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/PointF;->x:F

    .line 779
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object v3, v5

    .line 785
    :goto_0
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    move-object v7, v0

    invoke-direct {v7}, Lcom/google/android/material/chip/ChipDrawable;->calculateTextCenterFromBaseline()F

    move-result v7

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/PointF;->y:F

    .line 788
    .end local v4    # "offsetFromStart":F
    :cond_0
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return-object v0

    .line 781
    .restart local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    .restart local v4    # "offsetFromStart":F
    :cond_1
    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    move v7, v4

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/PointF;->x:F

    .line 782
    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object v3, v5

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    move-object v2, v4

    .line 554
    .local v2, "bounds":Landroid/graphics/Rect;
    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipDrawable;->getAlpha()I

    move-result v4

    if-nez v4, :cond_1

    .line 555
    .line 594
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    const/4 v4, 0x0

    move v3, v4

    .line 559
    .local v3, "saveCount":I
    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    const/16 v5, 0xff

    if-ge v4, v5, :cond_2

    .line 560
    move-object v4, v1

    move-object v5, v2

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    move-object v6, v2

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    move-object v7, v2

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    move-object v8, v2

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    .line 561
    invoke-static/range {v4 .. v9}, Lcom/google/android/material/canvas/CanvasCompat;->saveLayerAlpha(Landroid/graphics/Canvas;FFFFI)I

    move-result v4

    move v3, v4

    .line 566
    :cond_2
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/chip/ChipDrawable;->drawChipBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 569
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/chip/ChipDrawable;->drawChipStroke(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 572
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/chip/ChipDrawable;->drawCompatRipple(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 575
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/chip/ChipDrawable;->drawChipIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 578
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/chip/ChipDrawable;->drawCheckedIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 581
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/chip/ChipDrawable;->shouldDrawText:Z

    if-eqz v4, :cond_3

    .line 582
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/chip/ChipDrawable;->drawText(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 586
    :cond_3
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/chip/ChipDrawable;->drawCloseIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 589
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/chip/ChipDrawable;->drawDebug(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 591
    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    const/16 v5, 0xff

    if-ge v4, v5, :cond_4

    .line 592
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 594
    :cond_4
    goto :goto_0
.end method

.method public getAlpha()I
    .locals 2

    .prologue
    .line 1126
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1747
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return-object v0
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1268
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return-object v0
.end method

.method public getChipCornerRadius()F
    .locals 2

    .prologue
    .line 1299
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method public getChipEndPadding()F
    .locals 2

    .prologue
    .line 1924
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1466
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChipIconSize()F
    .locals 2

    .prologue
    .line 1527
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method public getChipIconTint()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1495
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->chipIconTint:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return-object v0
.end method

.method public getChipMinHeight()F
    .locals 2

    .prologue
    .line 1283
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/chip/ChipDrawable;->chipMinHeight:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method public getChipStartPadding()F
    .locals 2

    .prologue
    .line 1798
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1315
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return-object v0
.end method

.method public getChipStrokeWidth()F
    .locals 2

    .prologue
    .line 1330
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method public getChipTouchBounds(Landroid/graphics/RectF;)V
    .locals 5

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/RectF;
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 462
    return-void
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1595
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCloseIconContentDescription()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1671
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->closeIconContentDescription:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return-object v0
.end method

.method public getCloseIconEndPadding()F
    .locals 2

    .prologue
    .line 1906
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method public getCloseIconSize()F
    .locals 2

    .prologue
    .line 1643
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method public getCloseIconStartPadding()F
    .locals 2

    .prologue
    .line 1888
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method public getCloseIconState()[I
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 944
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->closeIconStateSet:[I

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return-object v0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1623
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return-object v0
.end method

.method public getCloseIconTouchBounds(Landroid/graphics/RectF;)V
    .locals 5

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/RectF;
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 470
    return-void
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1140
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return-object v0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 2

    .prologue
    .line 1411
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->truncateAt:Landroid/text/TextUtils$TruncateAt;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return-object v0
.end method

.method public getHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1786
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return-object v0
.end method

.method public getIconEndPadding()F
    .locals 2

    .prologue
    .line 1835
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/chip/ChipDrawable;->iconEndPadding:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method public getIconStartPadding()F
    .locals 2

    .prologue
    .line 1814
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/chip/ChipDrawable;->iconStartPadding:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 490
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/chip/ChipDrawable;->chipMinHeight:F

    float-to-int v1, v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 4

    .prologue
    .line 475
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    move-object v3, v0

    .line 478
    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v3

    add-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    add-float/2addr v2, v3

    move-object v3, v0

    .line 480
    invoke-direct {v3}, Lcom/google/android/material/chip/ChipDrawable;->getTextWidth()F

    move-result v3

    add-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    add-float/2addr v2, v3

    move-object v3, v0

    .line 482
    invoke-direct {v3}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconWidth()F

    move-result v3

    add-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    add-float/2addr v2, v3

    .line 476
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move v1, v2

    .line 484
    .local v1, "calculatedWidth":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/chip/ChipDrawable;->maxWidth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method public getMaxWidth()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 1942
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/chip/ChipDrawable;->maxWidth:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 1162
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    const/4 v1, -0x3

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 9
    .param p1    # Landroid/graphics/Outline;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1168
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "outline":Landroid/graphics/Outline;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    move-object v2, v3

    .line 1169
    .local v2, "bounds":Landroid/graphics/Rect;
    move-object v3, v2

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1170
    move-object v3, v1

    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 1175
    :goto_0
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipDrawable;->getAlpha()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 1176
    return-void

    .line 1172
    :cond_0
    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicWidth()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicHeight()I

    move-result v7

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    goto :goto_0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1349
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return-object v0
.end method

.method public getShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1773
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1366
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->rawText:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return-object v0
.end method

.method public getTextAppearance()Lcom/google/android/material/resources/TextAppearance;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1389
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return-object v0
.end method

.method public getTextEndPadding()F
    .locals 2

    .prologue
    .line 1872
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method public getTextStartPadding()F
    .locals 2

    .prologue
    .line 1856
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method public getUseCompatRipple()Z
    .locals 2

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1180
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "who":Landroid/graphics/drawable/Drawable;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v3

    move-object v2, v3

    .line 1181
    .local v2, "callback":Landroid/graphics/drawable/Drawable$Callback;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1182
    move-object v3, v2

    move-object v4, v0

    invoke-interface {v3, v4}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1184
    :cond_0
    return-void
.end method

.method public isCheckable()Z
    .locals 2

    .prologue
    .line 1675
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method public isCheckedIconEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1706
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->isCheckedIconVisible()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method public isCheckedIconVisible()Z
    .locals 2

    .prologue
    .line 1700
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/chip/ChipDrawable;->checkedIconVisible:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method public isChipIconEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1425
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->isChipIconVisible()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method public isChipIconVisible()Z
    .locals 2

    .prologue
    .line 1419
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/chip/ChipDrawable;->chipIconVisible:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method public isCloseIconEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1554
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->isCloseIconVisible()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method public isCloseIconStateful()Z
    .locals 2

    .prologue
    .line 924
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method public isCloseIconVisible()Z
    .locals 2

    .prologue
    .line 1548
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/chip/ChipDrawable;->closeIconVisible:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method public isStateful()Z
    .locals 2

    .prologue
    .line 908
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    invoke-static {v1}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    .line 909
    invoke-static {v1}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    .line 910
    invoke-static {v1}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    .line 911
    invoke-static {v1}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Lcom/google/android/material/resources/TextAppearance;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    .line 912
    invoke-direct {v1}, Lcom/google/android/material/chip/ChipDrawable;->canShowCheckedIcon()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 913
    invoke-static {v1}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 914
    invoke-static {v1}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    .line 915
    invoke-static {v1}, Lcom/google/android/material/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 908
    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0

    .line 915
    .restart local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 1054
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "layoutDirection":I
    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/graphics/drawable/Drawable;->onLayoutDirectionChanged(I)Z

    move-result v3

    move v2, v3

    .line 1056
    .local v2, "invalidate":Z
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1057
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v4

    or-int/2addr v3, v4

    move v2, v3

    .line 1059
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1060
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v4

    or-int/2addr v3, v4

    move v2, v3

    .line 1062
    :cond_1
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1063
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v4

    or-int/2addr v3, v4

    move v2, v3

    .line 1066
    :cond_2
    move v3, v2

    if-eqz v3, :cond_3

    .line 1067
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1069
    :cond_3
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 6

    .prologue
    .line 1074
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "level":I
    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result v3

    move v2, v3

    .line 1076
    .local v2, "invalidate":Z
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1077
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v4

    or-int/2addr v3, v4

    move v2, v3

    .line 1079
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1080
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v4

    or-int/2addr v3, v4

    move v2, v3

    .line 1082
    :cond_1
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1083
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v4

    or-int/2addr v3, v4

    move v2, v3

    .line 1086
    :cond_2
    move v3, v2

    if-eqz v3, :cond_3

    .line 1087
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1089
    :cond_3
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method protected onSizeChange()V
    .locals 3

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/ChipDrawable;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/chip/ChipDrawable$Delegate;

    move-object v1, v2

    .line 451
    .local v1, "delegate":Lcom/google/android/material/chip/ChipDrawable$Delegate;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 452
    move-object v2, v1

    invoke-interface {v2}, Lcom/google/android/material/chip/ChipDrawable$Delegate;->onChipDrawableSizeChange()V

    .line 454
    :cond_0
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 5

    .prologue
    .line 949
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "state":[I
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconState()[I

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I[I)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 13
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1188
    move-object v1, p0

    .local v1, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v2, p1

    .local v2, "who":Landroid/graphics/drawable/Drawable;
    move-object v3, p2

    .local v3, "what":Ljava/lang/Runnable;
    move-wide/from16 v4, p3

    .local v4, "when":J
    move-object v7, v1

    invoke-virtual {v7}, Lcom/google/android/material/chip/ChipDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v7

    move-object v6, v7

    .line 1189
    .local v6, "callback":Landroid/graphics/drawable/Drawable$Callback;
    move-object v7, v6

    if-eqz v7, :cond_0

    .line 1190
    move-object v7, v6

    move-object v8, v1

    move-object v9, v3

    move-wide v10, v4

    invoke-interface {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 1192
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 4

    .prologue
    .line 1118
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "alpha":I
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 1119
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/chip/ChipDrawable;->alpha:I

    .line 1120
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1122
    :cond_0
    return-void
.end method

.method public setCheckable(Z)V
    .locals 6

    .prologue
    .line 1683
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "checkable":Z
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    move v5, v1

    if-eq v4, v5, :cond_1

    .line 1684
    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    .line 1686
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v4

    move v2, v4

    .line 1687
    .local v2, "oldChipIconWidth":F
    move v4, v1

    if-nez v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    if-eqz v4, :cond_0

    .line 1688
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/android/material/chip/ChipDrawable;->currentChecked:Z

    .line 1690
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v4

    move v3, v4

    .line 1692
    .local v3, "newChipIconWidth":F
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1693
    move v4, v2

    move v5, v3

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 1694
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1697
    .end local v2    # "oldChipIconWidth":F
    .end local v3    # "newChipIconWidth":F
    :cond_1
    return-void
.end method

.method public setCheckableResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .prologue
    .line 1679
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCheckable(Z)V

    .line 1680
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1755
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "checkedIcon":Landroid/graphics/drawable/Drawable;
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    move-object v2, v5

    .line 1756
    .local v2, "oldCheckedIcon":Landroid/graphics/drawable/Drawable;
    move-object v5, v2

    move-object v6, v1

    if-eq v5, v6, :cond_0

    .line 1757
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v5

    move v3, v5

    .line 1758
    .local v3, "oldChipIconWidth":F
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 1759
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v5

    move v4, v5

    .line 1761
    .local v4, "newChipIconWidth":F
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v5, v6}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1762
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v5, v6}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1764
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1765
    move v5, v3

    move v6, v4

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 1766
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1769
    .end local v3    # "oldChipIconWidth":F
    .end local v4    # "newChipIconWidth":F
    :cond_0
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1742
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "checkedIconEnabled":Z
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    .line 1743
    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1736
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    .line 1737
    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 1751
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1752
    return-void
.end method

.method public setCheckedIconVisible(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .prologue
    .line 1710
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    .line 1711
    return-void
.end method

.method public setCheckedIconVisible(Z)V
    .locals 7

    .prologue
    .line 1714
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "checkedIconVisible":Z
    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/android/material/chip/ChipDrawable;->checkedIconVisible:Z

    move v6, v1

    if-eq v5, v6, :cond_0

    .line 1715
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v5

    move v2, v5

    .line 1716
    .local v2, "oldShowsCheckedIcon":Z
    move-object v5, v0

    move v6, v1

    iput-boolean v6, v5, Lcom/google/android/material/chip/ChipDrawable;->checkedIconVisible:Z

    .line 1717
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v5

    move v3, v5

    .line 1719
    .local v3, "newShowsCheckedIcon":Z
    move v5, v2

    move v6, v3

    if-eq v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v4, v5

    .line 1720
    .local v4, "changed":Z
    move v5, v4

    if-eqz v5, :cond_0

    .line 1721
    move v5, v3

    if-eqz v5, :cond_2

    .line 1722
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v5, v6}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1727
    :goto_1
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1728
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1731
    .end local v2    # "oldShowsCheckedIcon":Z
    .end local v3    # "newShowsCheckedIcon":Z
    .end local v4    # "changed":Z
    :cond_0
    return-void

    .line 1719
    .restart local v2    # "oldShowsCheckedIcon":Z
    .restart local v3    # "newShowsCheckedIcon":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1724
    .restart local v4    # "changed":Z
    :cond_2
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v5, v6}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1276
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "chipBackgroundColor":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 1277
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    .line 1278
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    move-result v2

    .line 1280
    :cond_0
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 1272
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 1273
    return-void
.end method

.method public setChipCornerRadius(F)V
    .locals 4

    .prologue
    .line 1307
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "chipCornerRadius":F
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1308
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/chip/ChipDrawable;->chipCornerRadius:F

    .line 1309
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1311
    :cond_0
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1303
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipCornerRadius(F)V

    .line 1304
    return-void
.end method

.method public setChipEndPadding(F)V
    .locals 4

    .prologue
    .line 1932
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "chipEndPadding":F
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1933
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/chip/ChipDrawable;->chipEndPadding:F

    .line 1934
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1935
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1937
    :cond_0
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1928
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipEndPadding(F)V

    .line 1929
    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1474
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "chipIcon":Landroid/graphics/drawable/Drawable;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/chip/ChipDrawable;->getChipIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v2, v5

    .line 1475
    .local v2, "oldChipIcon":Landroid/graphics/drawable/Drawable;
    move-object v5, v2

    move-object v6, v1

    if-eq v5, v6, :cond_1

    .line 1476
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v5

    move v3, v5

    .line 1477
    .local v3, "oldChipIconWidth":F
    move-object v5, v0

    move-object v6, v1

    if-eqz v6, :cond_2

    move-object v6, v1

    invoke-static {v6}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_0
    iput-object v6, v5, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 1478
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v5

    move v4, v5

    .line 1480
    .local v4, "newChipIconWidth":F
    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1481
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1482
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v5, v6}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1485
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1486
    move v5, v3

    move v6, v4

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    .line 1487
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1490
    .end local v3    # "oldChipIconWidth":F
    .end local v4    # "newChipIconWidth":F
    :cond_1
    return-void

    .line 1477
    .restart local v3    # "oldChipIconWidth":F
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public setChipIconEnabled(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1461
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "chipIconEnabled":Z
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(Z)V

    .line 1462
    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1455
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(I)V

    .line 1456
    return-void
.end method

.method public setChipIconResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 1470
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1471
    return-void
.end method

.method public setChipIconSize(F)V
    .locals 6

    .prologue
    .line 1535
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "chipIconSize":F
    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    move v5, v1

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    .line 1536
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v4

    move v2, v4

    .line 1537
    .local v2, "oldChipIconWidth":F
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/google/android/material/chip/ChipDrawable;->chipIconSize:F

    .line 1538
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v4

    move v3, v4

    .line 1540
    .local v3, "newChipIconWidth":F
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1541
    move v4, v2

    move v5, v3

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    .line 1542
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1545
    .end local v2    # "oldChipIconWidth":F
    .end local v3    # "newChipIconWidth":F
    :cond_0
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1531
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconSize(F)V

    .line 1532
    return-void
.end method

.method public setChipIconTint(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1515
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "chipIconTint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/ChipDrawable;->chipIconTint:Landroid/content/res/ColorStateList;

    move-object v3, v1

    if-eq v2, v3, :cond_1

    .line 1516
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable;->chipIconTint:Landroid/content/res/ColorStateList;

    .line 1518
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1519
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1522
    :cond_0
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    move-result v2

    .line 1524
    :cond_1
    return-void
.end method

.method public setChipIconTintResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 1505
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconTint(Landroid/content/res/ColorStateList;)V

    .line 1506
    return-void
.end method

.method public setChipIconVisible(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .prologue
    .line 1429
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(Z)V

    .line 1430
    return-void
.end method

.method public setChipIconVisible(Z)V
    .locals 7

    .prologue
    .line 1433
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "chipIconVisible":Z
    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/android/material/chip/ChipDrawable;->chipIconVisible:Z

    move v6, v1

    if-eq v5, v6, :cond_0

    .line 1434
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v5

    move v2, v5

    .line 1435
    .local v2, "oldShowsChipIcon":Z
    move-object v5, v0

    move v6, v1

    iput-boolean v6, v5, Lcom/google/android/material/chip/ChipDrawable;->chipIconVisible:Z

    .line 1436
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v5

    move v3, v5

    .line 1438
    .local v3, "newShowsChipIcon":Z
    move v5, v2

    move v6, v3

    if-eq v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v4, v5

    .line 1439
    .local v4, "changed":Z
    move v5, v4

    if-eqz v5, :cond_0

    .line 1440
    move v5, v3

    if-eqz v5, :cond_2

    .line 1441
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v5, v6}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1446
    :goto_1
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1447
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1450
    .end local v2    # "oldShowsChipIcon":Z
    .end local v3    # "newShowsChipIcon":Z
    .end local v4    # "changed":Z
    :cond_0
    return-void

    .line 1438
    .restart local v2    # "oldShowsChipIcon":Z
    .restart local v3    # "newShowsChipIcon":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1443
    .restart local v4    # "changed":Z
    :cond_2
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v5, v6}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public setChipMinHeight(F)V
    .locals 4

    .prologue
    .line 1291
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "chipMinHeight":F
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/chip/ChipDrawable;->chipMinHeight:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1292
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/chip/ChipDrawable;->chipMinHeight:F

    .line 1293
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1294
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1296
    :cond_0
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1287
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipMinHeight(F)V

    .line 1288
    return-void
.end method

.method public setChipStartPadding(F)V
    .locals 4

    .prologue
    .line 1806
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "chipStartPadding":F
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1807
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/chip/ChipDrawable;->chipStartPadding:F

    .line 1808
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1809
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1811
    :cond_0
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1802
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipStartPadding(F)V

    .line 1803
    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1323
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "chipStrokeColor":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 1324
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    .line 1325
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    move-result v2

    .line 1327
    :cond_0
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 1319
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 1320
    return-void
.end method

.method public setChipStrokeWidth(F)V
    .locals 4

    .prologue
    .line 1338
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "chipStrokeWidth":F
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1339
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/chip/ChipDrawable;->chipStrokeWidth:F

    .line 1341
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1343
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1345
    :cond_0
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1334
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeWidth(F)V

    .line 1335
    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1603
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "closeIcon":Landroid/graphics/drawable/Drawable;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v2, v5

    .line 1604
    .local v2, "oldCloseIcon":Landroid/graphics/drawable/Drawable;
    move-object v5, v2

    move-object v6, v1

    if-eq v5, v6, :cond_1

    .line 1605
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconWidth()F

    move-result v5

    move v3, v5

    .line 1606
    .local v3, "oldCloseIconWidth":F
    move-object v5, v0

    move-object v6, v1

    if-eqz v6, :cond_2

    move-object v6, v1

    invoke-static {v6}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_0
    iput-object v6, v5, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 1607
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconWidth()F

    move-result v5

    move v4, v5

    .line 1609
    .local v4, "newCloseIconWidth":F
    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1610
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1611
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v5, v6}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1614
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1615
    move v5, v3

    move v6, v4

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    .line 1616
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1619
    .end local v3    # "oldCloseIconWidth":F
    .end local v4    # "newCloseIconWidth":F
    :cond_1
    return-void

    .line 1606
    .restart local v3    # "oldCloseIconWidth":F
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1661
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "closeIconContentDescription":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/ChipDrawable;->closeIconContentDescription:Ljava/lang/CharSequence;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 1662
    move-object v2, v0

    .line 1663
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable;->closeIconContentDescription:Ljava/lang/CharSequence;

    .line 1665
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1667
    :cond_0
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1590
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "closeIconEnabled":Z
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(Z)V

    .line 1591
    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1584
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(I)V

    .line 1585
    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .locals 4

    .prologue
    .line 1914
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "closeIconEndPadding":F
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1915
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/chip/ChipDrawable;->closeIconEndPadding:F

    .line 1916
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1917
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1918
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1921
    :cond_0
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1910
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconEndPadding(F)V

    .line 1911
    return-void
.end method

.method public setCloseIconResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 1599
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1600
    return-void
.end method

.method public setCloseIconSize(F)V
    .locals 4

    .prologue
    .line 1651
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "closeIconSize":F
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1652
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/chip/ChipDrawable;->closeIconSize:F

    .line 1653
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1654
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1655
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1658
    :cond_0
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1647
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconSize(F)V

    .line 1648
    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .locals 4

    .prologue
    .line 1896
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "closeIconStartPadding":F
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1897
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/chip/ChipDrawable;->closeIconStartPadding:F

    .line 1898
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1899
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1900
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1903
    :cond_0
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1892
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconStartPadding(F)V

    .line 1893
    return-void
.end method

.method public setCloseIconState([I)Z
    .locals 5
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 932
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "stateSet":[I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/ChipDrawable;->closeIconStateSet:[I

    move-object v3, v1

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 933
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable;->closeIconStateSet:[I

    .line 934
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 935
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    move-result-object v3

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I[I)Z

    move-result v2

    move v0, v2

    .line 938
    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1631
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "closeIconTint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    move-object v3, v1

    if-eq v2, v3, :cond_1

    .line 1632
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    .line 1634
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1635
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1638
    :cond_0
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    move-result v2

    .line 1640
    :cond_1
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 1627
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    .line 1628
    return-void
.end method

.method public setCloseIconVisible(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .prologue
    .line 1558
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(Z)V

    .line 1559
    return-void
.end method

.method public setCloseIconVisible(Z)V
    .locals 7

    .prologue
    .line 1562
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "closeIconVisible":Z
    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/android/material/chip/ChipDrawable;->closeIconVisible:Z

    move v6, v1

    if-eq v5, v6, :cond_0

    .line 1563
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v5

    move v2, v5

    .line 1564
    .local v2, "oldShowsCloseIcon":Z
    move-object v5, v0

    move v6, v1

    iput-boolean v6, v5, Lcom/google/android/material/chip/ChipDrawable;->closeIconVisible:Z

    .line 1565
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v5

    move v3, v5

    .line 1567
    .local v3, "newShowsCloseIcon":Z
    move v5, v2

    move v6, v3

    if-eq v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v4, v5

    .line 1568
    .local v4, "changed":Z
    move v5, v4

    if-eqz v5, :cond_0

    .line 1569
    move v5, v3

    if-eqz v5, :cond_2

    .line 1570
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v5, v6}, Lcom/google/android/material/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1575
    :goto_1
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1576
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1579
    .end local v2    # "oldShowsCloseIcon":Z
    .end local v3    # "newShowsCloseIcon":Z
    .end local v4    # "changed":Z
    :cond_0
    return-void

    .line 1567
    .restart local v2    # "oldShowsCloseIcon":Z
    .restart local v3    # "newShowsCloseIcon":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1572
    .restart local v4    # "changed":Z
    :cond_2
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v5, v6}, Lcom/google/android/material/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1131
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "colorFilter":Landroid/graphics/ColorFilter;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 1132
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    .line 1133
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1135
    :cond_0
    return-void
.end method

.method public setDelegate(Lcom/google/android/material/chip/ChipDrawable$Delegate;)V
    .locals 7
    .param p1    # Lcom/google/android/material/chip/ChipDrawable$Delegate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "delegate":Lcom/google/android/material/chip/ChipDrawable$Delegate;
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable;->delegate:Ljava/lang/ref/WeakReference;

    .line 446
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 4
    .param p1    # Landroid/text/TextUtils$TruncateAt;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1415
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "truncateAt":Landroid/text/TextUtils$TruncateAt;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable;->truncateAt:Landroid/text/TextUtils$TruncateAt;

    .line 1416
    return-void
.end method

.method public setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 4
    .param p1    # Lcom/google/android/material/animation/MotionSpec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1794
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "hideMotionSpec":Lcom/google/android/material/animation/MotionSpec;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable;->hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 1795
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    .prologue
    .line 1790
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    move v4, v1

    invoke-static {v3, v4}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    .line 1791
    return-void
.end method

.method public setIconEndPadding(F)V
    .locals 6

    .prologue
    .line 1843
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "iconEndPadding":F
    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/chip/ChipDrawable;->iconEndPadding:F

    move v5, v1

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    .line 1844
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v4

    move v2, v4

    .line 1845
    .local v2, "oldChipIconWidth":F
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/google/android/material/chip/ChipDrawable;->iconEndPadding:F

    .line 1846
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v4

    move v3, v4

    .line 1848
    .local v3, "newChipIconWidth":F
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1849
    move v4, v2

    move v5, v3

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    .line 1850
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1853
    .end local v2    # "oldChipIconWidth":F
    .end local v3    # "newChipIconWidth":F
    :cond_0
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1839
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setIconEndPadding(F)V

    .line 1840
    return-void
.end method

.method public setIconStartPadding(F)V
    .locals 6

    .prologue
    .line 1822
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "iconStartPadding":F
    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/chip/ChipDrawable;->iconStartPadding:F

    move v5, v1

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    .line 1823
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v4

    move v2, v4

    .line 1824
    .local v2, "oldChipIconWidth":F
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/google/android/material/chip/ChipDrawable;->iconStartPadding:F

    .line 1825
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v4

    move v3, v4

    .line 1827
    .local v3, "newChipIconWidth":F
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1828
    move v4, v2

    move v5, v3

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    .line 1829
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1832
    .end local v2    # "oldChipIconWidth":F
    .end local v3    # "newChipIconWidth":F
    :cond_0
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1818
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setIconStartPadding(F)V

    .line 1819
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 1947
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "maxWidth":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/chip/ChipDrawable;->maxWidth:I

    .line 1948
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1357
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "rippleColor":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 1358
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    .line 1359
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/chip/ChipDrawable;->updateCompatRippleColor()V

    .line 1360
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    move-result v2

    .line 1362
    :cond_0
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 1353
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 1354
    return-void
.end method

.method setShouldDrawText(Z)V
    .locals 4

    .prologue
    .line 1961
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "shouldDrawText":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/chip/ChipDrawable;->shouldDrawText:Z

    .line 1962
    return-void
.end method

.method public setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 4
    .param p1    # Lcom/google/android/material/animation/MotionSpec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1781
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "showMotionSpec":Lcom/google/android/material/animation/MotionSpec;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable;->showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 1782
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    .prologue
    .line 1777
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    move v4, v1

    invoke-static {v3, v4}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    .line 1778
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1374
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 1375
    const-string/jumbo v2, ""

    move-object v1, v2

    .line 1377
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/ChipDrawable;->rawText:Ljava/lang/CharSequence;

    move-object v3, v1

    if-eq v2, v3, :cond_1

    .line 1378
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable;->rawText:Ljava/lang/CharSequence;

    .line 1379
    move-object v2, v0

    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable;->unicodeWrappedText:Ljava/lang/CharSequence;

    .line 1380
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/material/chip/ChipDrawable;->textWidthDirty:Z

    .line 1382
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1383
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1385
    :cond_1
    return-void
.end method

.method public setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V
    .locals 6
    .param p1    # Lcom/google/android/material/resources/TextAppearance;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1397
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "textAppearance":Lcom/google/android/material/resources/TextAppearance;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/ChipDrawable;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    move-object v3, v1

    if-eq v2, v3, :cond_1

    .line 1398
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    .line 1400
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 1401
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->fontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/material/resources/TextAppearance;->updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/core/content/res/ResourcesCompat$FontCallback;)V

    .line 1402
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/material/chip/ChipDrawable;->textWidthDirty:Z

    .line 1405
    :cond_0
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    move-result v2

    .line 1406
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1408
    :cond_1
    return-void
.end method

.method public setTextAppearanceResource(I)V
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 1393
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    new-instance v3, Lcom/google/android/material/resources/TextAppearance;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V

    .line 1394
    return-void
.end method

.method public setTextEndPadding(F)V
    .locals 4

    .prologue
    .line 1880
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "textEndPadding":F
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1881
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    .line 1882
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1883
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1885
    :cond_0
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1876
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setTextEndPadding(F)V

    .line 1877
    return-void
.end method

.method public setTextResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 1370
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 1371
    return-void
.end method

.method public setTextStartPadding(F)V
    .locals 4

    .prologue
    .line 1864
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "textStartPadding":F
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1865
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/chip/ChipDrawable;->textStartPadding:F

    .line 1866
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1867
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 1869
    :cond_0
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1860
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setTextStartPadding(F)V

    .line 1861
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1145
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 1146
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    .line 1147
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    move-result v2

    .line 1149
    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 6
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1153
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 1154
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1155
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/google/android/material/drawable/DrawableUtils;->updateTintFilter(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 1156
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1158
    :cond_0
    return-void
.end method

.method public setUseCompatRipple(Z)V
    .locals 4

    .prologue
    .line 431
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "useCompatRipple":Z
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 432
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/chip/ChipDrawable;->useCompatRipple:Z

    .line 433
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/chip/ChipDrawable;->updateCompatRippleColor()V

    .line 434
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    move-result v2

    .line 436
    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 8

    .prologue
    .line 1094
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move v1, p1

    .local v1, "visible":Z
    move v2, p2

    .local v2, "restart":Z
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-super {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v4

    move v3, v4

    .line 1096
    .local v3, "invalidate":Z
    move-object v4, v0

    invoke-direct {v4}, Lcom/google/android/material/chip/ChipDrawable;->showsChipIcon()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1097
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    move v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v5

    or-int/2addr v4, v5

    move v3, v4

    .line 1099
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Lcom/google/android/material/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1100
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    move v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v5

    or-int/2addr v4, v5

    move v3, v4

    .line 1102
    :cond_1
    move-object v4, v0

    invoke-direct {v4}, Lcom/google/android/material/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1103
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    move v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v5

    or-int/2addr v4, v5

    move v3, v4

    .line 1106
    :cond_2
    move v4, v3

    if-eqz v4, :cond_3

    .line 1107
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 1109
    :cond_3
    move v4, v3

    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method shouldDrawText()Z
    .locals 2

    .prologue
    .line 1951
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/chip/ChipDrawable;->shouldDrawText:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/ChipDrawable;
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 7
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1196
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable;
    move-object v1, p1

    .local v1, "who":Landroid/graphics/drawable/Drawable;
    move-object v2, p2

    .local v2, "what":Ljava/lang/Runnable;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v4

    move-object v3, v4

    .line 1197
    .local v3, "callback":Landroid/graphics/drawable/Drawable$Callback;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 1198
    move-object v4, v3

    move-object v5, v0

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 1200
    :cond_0
    return-void
.end method
