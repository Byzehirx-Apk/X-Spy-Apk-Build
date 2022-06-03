.class Lcom/google/android/material/button/MaterialButtonHelper;
.super Ljava/lang/Object;
.source "MaterialButtonHelper.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CORNER_RADIUS_ADJUSTMENT:F = 1.0E-5f

.field private static final DEFAULT_BACKGROUND_COLOR:I = -0x1

.field private static final IS_LOLLIPOP:Z


# instance fields
.field private backgroundDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private backgroundOverwritten:Z

.field private backgroundTint:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private backgroundTintMode:Landroid/graphics/PorterDuff$Mode;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final bounds:Landroid/graphics/Rect;

.field private final buttonStrokePaint:Landroid/graphics/Paint;

.field private colorableBackgroundDrawableCompat:Landroid/graphics/drawable/GradientDrawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private cornerRadius:I

.field private insetBottom:I

.field private insetLeft:I

.field private insetRight:I

.field private insetTop:I

.field private maskDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final materialButton:Lcom/google/android/material/button/MaterialButton;

.field private final rectF:Landroid/graphics/RectF;

.field private rippleColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private rippleDrawableCompat:Landroid/graphics/drawable/GradientDrawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private strokeColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private strokeDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private strokeWidth:I

.field private tintableBackgroundDrawableCompat:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private tintableRippleDrawableCompat:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/material/button/MaterialButton;)V
    .locals 7

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButtonHelper;
    move-object v1, p1

    .local v1, "button":Lcom/google/android/material/button/MaterialButton;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 74
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v2, Lcom/google/android/material/button/MaterialButtonHelper;->buttonStrokePaint:Landroid/graphics/Paint;

    .line 75
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Lcom/google/android/material/button/MaterialButtonHelper;->bounds:Landroid/graphics/Rect;

    .line 76
    move-object v2, v0

    new-instance v3, Landroid/graphics/RectF;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v2, Lcom/google/android/material/button/MaterialButtonHelper;->rectF:Landroid/graphics/RectF;

    .line 87
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    .line 90
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 91
    return-void
.end method

.method private createBackgroundCompat()Landroid/graphics/drawable/Drawable;
    .locals 9

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButtonHelper;
    move-object v1, v0

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v2, v1, Lcom/google/android/material/button/MaterialButtonHelper;->colorableBackgroundDrawableCompat:Landroid/graphics/drawable/GradientDrawable;

    .line 184
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButtonHelper;->colorableBackgroundDrawableCompat:Landroid/graphics/drawable/GradientDrawable;

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    int-to-float v2, v2

    const v3, 0x3727c5ac    # 1.0E-5f

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 185
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButtonHelper;->colorableBackgroundDrawableCompat:Landroid/graphics/drawable/GradientDrawable;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 187
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->colorableBackgroundDrawableCompat:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v2}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/material/button/MaterialButtonHelper;->tintableBackgroundDrawableCompat:Landroid/graphics/drawable/Drawable;

    .line 188
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButtonHelper;->tintableBackgroundDrawableCompat:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 189
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_0

    .line 190
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButtonHelper;->tintableBackgroundDrawableCompat:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 193
    :cond_0
    move-object v1, v0

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v2, v1, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawableCompat:Landroid/graphics/drawable/GradientDrawable;

    .line 194
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawableCompat:Landroid/graphics/drawable/GradientDrawable;

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    int-to-float v2, v2

    const v3, 0x3727c5ac    # 1.0E-5f

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 195
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawableCompat:Landroid/graphics/drawable/GradientDrawable;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 197
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawableCompat:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v2}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/material/button/MaterialButtonHelper;->tintableRippleDrawableCompat:Landroid/graphics/drawable/Drawable;

    .line 198
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButtonHelper;->tintableRippleDrawableCompat:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 200
    move-object v1, v0

    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/button/MaterialButtonHelper;->tintableBackgroundDrawableCompat:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/button/MaterialButtonHelper;->tintableRippleDrawableCompat:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    invoke-direct {v3, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-direct {v1, v2}, Lcom/google/android/material/button/MaterialButtonHelper;->wrapDrawableWithInset(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/button/MaterialButtonHelper;
    return-object v0
.end method

.method private createBackgroundLollipop()Landroid/graphics/drawable/Drawable;
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButtonHelper;
    move-object v3, v0

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    .line 256
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    int-to-float v4, v4

    const v5, 0x3727c5ac    # 1.0E-5f

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 257
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 259
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/button/MaterialButtonHelper;->updateTintAndTintModeLollipop()V

    .line 261
    move-object v3, v0

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/button/MaterialButtonHelper;->strokeDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    .line 262
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/button/MaterialButtonHelper;->strokeDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    int-to-float v4, v4

    const v5, 0x3727c5ac    # 1.0E-5f

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 263
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/button/MaterialButtonHelper;->strokeDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 264
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/button/MaterialButtonHelper;->strokeDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;)V

    .line 266
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/button/MaterialButtonHelper;->strokeDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    aput-object v8, v6, v7

    invoke-direct {v4, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v1, v3

    .line 269
    .local v1, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/android/material/button/MaterialButtonHelper;->wrapDrawableWithInset(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v3

    move-object v2, v3

    .line 271
    .local v2, "bgInsetDrawable":Landroid/graphics/drawable/InsetDrawable;
    move-object v3, v0

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    .line 272
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    int-to-float v4, v4

    const v5, 0x3727c5ac    # 1.0E-5f

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 273
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 275
    new-instance v3, Lcom/google/android/material/button/MaterialButtonBackgroundDrawable;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 276
    invoke-static {v5}, Lcom/google/android/material/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/material/button/MaterialButtonBackgroundDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/InsetDrawable;Landroid/graphics/drawable/Drawable;)V

    .line 275
    move-object v0, v3

    .end local v0    # "this":Lcom/google/android/material/button/MaterialButtonHelper;
    return-object v0
.end method

.method private unwrapBackgroundDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButtonHelper;
    sget-boolean v4, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v4}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 395
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v4}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/RippleDrawable;

    move-object v1, v4

    .line 396
    .local v1, "background":Landroid/graphics/drawable/RippleDrawable;
    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/InsetDrawable;

    move-object v2, v4

    .line 397
    .local v2, "insetDrawable":Landroid/graphics/drawable/InsetDrawable;
    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/LayerDrawable;

    move-object v3, v4

    .line 398
    .local v3, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    move-object v0, v4

    .line 400
    .end local v0    # "this":Lcom/google/android/material/button/MaterialButtonHelper;
    :goto_0
    return-object v0

    .end local v1    # "background":Landroid/graphics/drawable/RippleDrawable;
    .end local v2    # "insetDrawable":Landroid/graphics/drawable/InsetDrawable;
    .end local v3    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .restart local v0    # "this":Lcom/google/android/material/button/MaterialButtonHelper;
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method private unwrapStrokeDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButtonHelper;
    sget-boolean v4, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v4}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 383
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v4}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/RippleDrawable;

    move-object v1, v4

    .line 384
    .local v1, "background":Landroid/graphics/drawable/RippleDrawable;
    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/InsetDrawable;

    move-object v2, v4

    .line 385
    .local v2, "insetDrawable":Landroid/graphics/drawable/InsetDrawable;
    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/LayerDrawable;

    move-object v3, v4

    .line 386
    .local v3, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    move-object v0, v4

    .line 388
    .end local v0    # "this":Lcom/google/android/material/button/MaterialButtonHelper;
    :goto_0
    return-object v0

    .end local v1    # "background":Landroid/graphics/drawable/RippleDrawable;
    .end local v2    # "insetDrawable":Landroid/graphics/drawable/InsetDrawable;
    .end local v3    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .restart local v0    # "this":Lcom/google/android/material/button/MaterialButtonHelper;
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method private updateStroke()V
    .locals 3

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButtonHelper;
    sget-boolean v1, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButtonHelper;->strokeDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_1

    .line 343
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/button/MaterialButtonHelper;->createBackgroundLollipop()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    sget-boolean v1, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    if-nez v1, :cond_0

    .line 346
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->invalidate()V

    goto :goto_0
.end method

.method private updateTintAndTintModeLollipop()V
    .locals 3

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButtonHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_0

    .line 241
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 242
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_0

    .line 243
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 246
    :cond_0
    return-void
.end method

.method private wrapDrawableWithInset(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;
    .locals 10

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButtonHelper;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/button/MaterialButtonHelper;
    return-object v0
.end method


# virtual methods
.method drawStroke(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButtonHelper;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    if-lez v3, :cond_0

    .line 164
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/button/MaterialButtonHelper;->bounds:Landroid/graphics/Rect;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v4}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 165
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/button/MaterialButtonHelper;->rectF:Landroid/graphics/RectF;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/button/MaterialButtonHelper;->bounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/button/MaterialButtonHelper;->bounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/button/MaterialButtonHelper;->bounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/button/MaterialButtonHelper;->bounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 172
    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    int-to-float v3, v3

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    move v2, v3

    .line 173
    .local v2, "strokeCornerRadius":F
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/button/MaterialButtonHelper;->rectF:Landroid/graphics/RectF;

    move v5, v2

    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/button/MaterialButtonHelper;->buttonStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 175
    .end local v2    # "strokeCornerRadius":F
    :cond_0
    return-void
.end method

.method getCornerRadius()I
    .locals 2

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButtonHelper;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/button/MaterialButtonHelper;
    return v0
.end method

.method getRippleColor()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButtonHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/button/MaterialButtonHelper;
    return-object v0
.end method

.method getStrokeColor()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButtonHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/button/MaterialButtonHelper;
    return-object v0
.end method

.method getStrokeWidth()I
    .locals 2

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButtonHelper;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/button/MaterialButtonHelper;
    return v0
.end method

.method getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButtonHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/button/MaterialButtonHelper;
    return-object v0
.end method

.method getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButtonHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/button/MaterialButtonHelper;
    return-object v0
.end method

.method isBackgroundOverwritten()Z
    .locals 2

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButtonHelper;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/button/MaterialButtonHelper;
    return v0
.end method

.method public loadFromAttributes(Landroid/content/res/TypedArray;)V
    .locals 12

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButtonHelper;
    move-object v1, p1

    .local v1, "attributes":Landroid/content/res/TypedArray;
    move-object v6, v0

    move-object v7, v1

    sget v8, Lcom/google/android/material/R$styleable;->MaterialButton_android_insetLeft:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v6, Lcom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    .line 95
    move-object v6, v0

    move-object v7, v1

    sget v8, Lcom/google/android/material/R$styleable;->MaterialButton_android_insetRight:I

    const/4 v9, 0x0

    .line 96
    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v6, Lcom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    .line 97
    move-object v6, v0

    move-object v7, v1

    sget v8, Lcom/google/android/material/R$styleable;->MaterialButton_android_insetTop:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v6, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    .line 98
    move-object v6, v0

    move-object v7, v1

    sget v8, Lcom/google/android/material/R$styleable;->MaterialButton_android_insetBottom:I

    const/4 v9, 0x0

    .line 99
    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v6, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    .line 101
    move-object v6, v0

    move-object v7, v1

    sget v8, Lcom/google/android/material/R$styleable;->MaterialButton_cornerRadius:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    .line 102
    move-object v6, v0

    move-object v7, v1

    sget v8, Lcom/google/android/material/R$styleable;->MaterialButton_strokeWidth:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    .line 104
    move-object v6, v0

    move-object v7, v1

    sget v8, Lcom/google/android/material/R$styleable;->MaterialButton_backgroundTintMode:I

    const/4 v9, -0x1

    .line 106
    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 105
    invoke-static {v7, v8}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 107
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 109
    invoke-virtual {v7}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object v8, v1

    sget v9, Lcom/google/android/material/R$styleable;->MaterialButton_backgroundTint:I

    .line 108
    invoke-static {v7, v8, v9}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 110
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 112
    invoke-virtual {v7}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object v8, v1

    sget v9, Lcom/google/android/material/R$styleable;->MaterialButton_strokeColor:I

    .line 111
    invoke-static {v7, v8, v9}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    .line 113
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 115
    invoke-virtual {v7}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object v8, v1

    sget v9, Lcom/google/android/material/R$styleable;->MaterialButton_rippleColor:I

    .line 114
    invoke-static {v7, v8, v9}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 117
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/button/MaterialButtonHelper;->buttonStrokePaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/button/MaterialButtonHelper;->buttonStrokePaint:Landroid/graphics/Paint;

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/button/MaterialButtonHelper;->buttonStrokePaint:Landroid/graphics/Paint;

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 121
    invoke-virtual {v8}, Lcom/google/android/material/button/MaterialButton;->getDrawableState()[I

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v7

    .line 119
    :goto_0
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v6}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v6

    move v2, v6

    .line 126
    .local v2, "paddingStart":I
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v6}, Lcom/google/android/material/button/MaterialButton;->getPaddingTop()I

    move-result v6

    move v3, v6

    .line 127
    .local v3, "paddingTop":I
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v6}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v6

    move v4, v6

    .line 128
    .local v4, "paddingEnd":I
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v6}, Lcom/google/android/material/button/MaterialButton;->getPaddingBottom()I

    move-result v6

    move v5, v6

    .line 131
    .local v5, "paddingBottom":I
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    sget-boolean v7, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    if-eqz v7, :cond_1

    move-object v7, v0

    .line 132
    invoke-direct {v7}, Lcom/google/android/material/button/MaterialButtonHelper;->createBackgroundLollipop()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 131
    :goto_1
    invoke-virtual {v6, v7}, Lcom/google/android/material/button/MaterialButton;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    .line 135
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    move v7, v2

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    add-int/2addr v7, v8

    move v8, v3

    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    add-int/2addr v8, v9

    move v9, v4

    move-object v10, v0

    iget v10, v10, Lcom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    add-int/2addr v9, v10

    move v10, v5

    move-object v11, v0

    iget v11, v11, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    add-int/2addr v10, v11

    invoke-static {v6, v7, v8, v9, v10}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 141
    return-void

    .line 121
    .end local v2    # "paddingStart":I
    .end local v3    # "paddingTop":I
    .end local v4    # "paddingEnd":I
    .end local v5    # "paddingBottom":I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 132
    .restart local v2    # "paddingStart":I
    .restart local v3    # "paddingTop":I
    .restart local v4    # "paddingEnd":I
    .restart local v5    # "paddingBottom":I
    :cond_1
    move-object v7, v0

    invoke-direct {v7}, Lcom/google/android/material/button/MaterialButtonHelper;->createBackgroundCompat()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_1
.end method

.method setBackgroundColor(I)V
    .locals 4

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButtonHelper;
    move v1, p1

    .local v1, "color":I
    sget-boolean v2, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_1

    .line 289
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    sget-boolean v2, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->colorableBackgroundDrawableCompat:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_0

    .line 291
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->colorableBackgroundDrawableCompat:Landroid/graphics/drawable/GradientDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0
.end method

.method setBackgroundOverwritten()V
    .locals 3

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButtonHelper;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    .line 153
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 154
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 155
    return-void
.end method

.method setCornerRadius(I)V
    .locals 5

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButtonHelper;
    move v1, p1

    .local v1, "cornerRadius":I
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    move v3, v1

    if-eq v2, v3, :cond_1

    .line 352
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    .line 353
    sget-boolean v2, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->strokeDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_2

    .line 358
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_0

    .line 359
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/button/MaterialButtonHelper;->unwrapBackgroundDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    move v3, v1

    int-to-float v3, v3

    const v4, 0x3727c5ac    # 1.0E-5f

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 360
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/button/MaterialButtonHelper;->unwrapStrokeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    move v3, v1

    int-to-float v3, v3

    const v4, 0x3727c5ac    # 1.0E-5f

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 362
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    move v3, v1

    int-to-float v3, v3

    const v4, 0x3727c5ac    # 1.0E-5f

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 363
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->strokeDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    move v3, v1

    int-to-float v3, v3

    const v4, 0x3727c5ac    # 1.0E-5f

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 364
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    move v3, v1

    int-to-float v3, v3

    const v4, 0x3727c5ac    # 1.0E-5f

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 374
    :cond_1
    :goto_0
    return-void

    .line 365
    :cond_2
    sget-boolean v2, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->colorableBackgroundDrawableCompat:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawableCompat:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_1

    .line 368
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->colorableBackgroundDrawableCompat:Landroid/graphics/drawable/GradientDrawable;

    move v3, v1

    int-to-float v3, v3

    const v4, 0x3727c5ac    # 1.0E-5f

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 369
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawableCompat:Landroid/graphics/drawable/GradientDrawable;

    move v3, v1

    int-to-float v3, v3

    const v4, 0x3727c5ac    # 1.0E-5f

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 371
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->invalidate()V

    goto :goto_0
.end method

.method setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButtonHelper;
    move-object v1, p1

    .local v1, "rippleColor":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 297
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 298
    sget-boolean v2, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_1

    .line 299
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    sget-boolean v2, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->tintableRippleDrawableCompat:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 301
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->tintableRippleDrawableCompat:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 6
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButtonHelper;
    move-object v1, p1

    .local v1, "strokeColor":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 313
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    .line 314
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->buttonStrokePaint:Landroid/graphics/Paint;

    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 316
    invoke-virtual {v4}, Lcom/google/android/material/button/MaterialButton;->getDrawableState()[I

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 314
    :goto_0
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 318
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/button/MaterialButtonHelper;->updateStroke()V

    .line 320
    :cond_0
    return-void

    .line 316
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method setStrokeWidth(I)V
    .locals 4

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButtonHelper;
    move v1, p1

    .local v1, "strokeWidth":I
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 329
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    .line 330
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->buttonStrokePaint:Landroid/graphics/Paint;

    move v3, v1

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 331
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/button/MaterialButtonHelper;->updateStroke()V

    .line 333
    :cond_0
    return-void
.end method

.method setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButtonHelper;
    move-object v1, p1

    .local v1, "tintList":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 211
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 212
    sget-boolean v2, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    if-eqz v2, :cond_1

    .line 213
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/button/MaterialButtonHelper;->updateTintAndTintModeLollipop()V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->tintableBackgroundDrawableCompat:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 215
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->tintableBackgroundDrawableCompat:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButtonHelper;
    move-object v1, p1

    .local v1, "mode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 226
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 227
    sget-boolean v2, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    if-eqz v2, :cond_1

    .line 228
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/button/MaterialButtonHelper;->updateTintAndTintModeLollipop()V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->tintableBackgroundDrawableCompat:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_0

    .line 230
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->tintableBackgroundDrawableCompat:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method updateMaskBounds(II)V
    .locals 9

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButtonHelper;
    move v1, p1

    .local v1, "height":I
    move v2, p2

    .local v2, "width":I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_0

    .line 283
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawableLollipop:Landroid/graphics/drawable/GradientDrawable;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    move v6, v2

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    sub-int/2addr v6, v7

    move v7, v1

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    sub-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 285
    :cond_0
    return-void
.end method
