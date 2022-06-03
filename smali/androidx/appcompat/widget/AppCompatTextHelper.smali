.class Landroidx/appcompat/widget/AppCompatTextHelper;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# static fields
.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2


# instance fields
.field private mAsyncFontPending:Z

.field private final mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

.field private mFontTypeface:Landroid/graphics/Typeface;

.field private mStyle:I

.field private final mView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 7

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextHelper;
    move-object v1, p1

    .local v1, "view":Landroid/widget/TextView;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 60
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 65
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 66
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v3, v2, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 67
    return-void
.end method

.method private applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V
    .locals 6

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextHelper;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, p2

    .local v2, "info":Landroidx/appcompat/widget/TintInfo;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    if-eqz v3, :cond_0

    .line 371
    move-object v3, v1

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    .line 373
    :cond_0
    return-void
.end method

.method private static createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;
    .locals 9

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "drawableManager":Landroidx/appcompat/widget/AppCompatDrawableManager;
    move v2, p2

    .local v2, "drawableId":I
    move-object v5, v1

    move-object v6, v0

    move v7, v2

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v3, v5

    .line 378
    .local v3, "tintList":Landroid/content/res/ColorStateList;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 379
    new-instance v5, Landroidx/appcompat/widget/TintInfo;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    move-object v4, v5

    .line 380
    .local v4, "tintInfo":Landroidx/appcompat/widget/TintInfo;
    move-object v5, v4

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 381
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 382
    move-object v5, v4

    move-object v0, v5

    .line 384
    .end local v0    # "context":Landroid/content/Context;
    .end local v4    # "tintInfo":Landroidx/appcompat/widget/TintInfo;
    :goto_0
    return-object v0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method

.method private setTextSizeInternal(IF)V
    .locals 6

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextHelper;
    move v1, p1

    .local v1, "unit":I
    move v2, p2

    .local v2, "size":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setTextSizeInternal(IF)V

    .line 419
    return-void
.end method

.method private updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V
    .locals 13

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextHelper;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "a":Landroidx/appcompat/widget/TintTypedArray;
    move-object v7, v0

    move-object v8, v2

    sget v9, Landroidx/appcompat/R$styleable;->TextAppearance_android_textStyle:I

    move-object v10, v0

    iget v10, v10, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {v8, v9, v10}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v8

    iput v8, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 244
    move-object v7, v2

    sget v8, Landroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v2

    sget v8, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    .line 245
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 246
    :cond_0
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 247
    move-object v7, v2

    sget v8, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_3

    sget v7, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    :goto_0
    move v3, v7

    .line 250
    .local v3, "fontFamilyId":I
    move-object v7, v1

    invoke-virtual {v7}, Landroid/content/Context;->isRestricted()Z

    move-result v7

    if-nez v7, :cond_1

    .line 251
    new-instance v7, Ljava/lang/ref/WeakReference;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v4, v7

    .line 252
    .local v4, "textViewWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/TextView;>;"
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextHelper$1;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    move-object v10, v4

    invoke-direct {v8, v9, v10}, Landroidx/appcompat/widget/AppCompatTextHelper$1;-><init>(Landroidx/appcompat/widget/AppCompatTextHelper;Ljava/lang/ref/WeakReference;)V

    move-object v5, v7

    .line 265
    .local v5, "replyCallback":Landroidx/core/content/res/ResourcesCompat$FontCallback;
    move-object v7, v0

    move-object v8, v2

    move v9, v3

    move-object v10, v0

    :try_start_0
    iget v10, v10, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    move-object v11, v5

    invoke-virtual {v8, v9, v10, v11}, Landroidx/appcompat/widget/TintTypedArray;->getFont(IILandroidx/core/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;

    move-result-object v8

    iput-object v8, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 267
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-nez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 270
    .line 272
    .end local v4    # "textViewWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/TextView;>;"
    .end local v5    # "replyCallback":Landroidx/core/content/res/ResourcesCompat$FontCallback;
    :cond_1
    :goto_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-nez v7, :cond_2

    .line 274
    move-object v7, v2

    move v8, v3

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 275
    .local v4, "fontFamilyName":Ljava/lang/String;
    move-object v7, v4

    if-eqz v7, :cond_2

    .line 276
    move-object v7, v0

    move-object v8, v4

    move-object v9, v0

    iget v9, v9, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    iput-object v8, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 279
    .line 300
    .end local v3    # "fontFamilyId":I
    .end local v4    # "fontFamilyName":Ljava/lang/String;
    :cond_2
    :goto_3
    return-void

    .line 247
    :cond_3
    sget v7, Landroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    goto :goto_0

    .line 267
    .restart local v3    # "fontFamilyId":I
    .local v4, "textViewWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/TextView;>;"
    .restart local v5    # "replyCallback":Landroidx/core/content/res/ResourcesCompat$FontCallback;
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 268
    :catch_0
    move-exception v7

    :goto_4
    move-object v6, v7

    goto :goto_2

    .line 282
    .end local v3    # "fontFamilyId":I
    .end local v4    # "textViewWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/TextView;>;"
    .end local v5    # "replyCallback":Landroidx/core/content/res/ResourcesCompat$FontCallback;
    :cond_5
    move-object v7, v2

    sget v8, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 284
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z

    .line 285
    move-object v7, v2

    sget v8, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v7

    move v3, v7

    .line 286
    .local v3, "typefaceIndex":I
    move v7, v3

    packed-switch v7, :pswitch_data_0

    .line 300
    .end local v3    # "typefaceIndex":I
    :cond_6
    :goto_5
    goto :goto_3

    .line 288
    .restart local v3    # "typefaceIndex":I
    :pswitch_0
    move-object v7, v0

    sget-object v8, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v8, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 289
    goto :goto_5

    .line 292
    :pswitch_1
    move-object v7, v0

    sget-object v8, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v8, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 293
    goto :goto_5

    .line 296
    :pswitch_2
    move-object v7, v0

    sget-object v8, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v8, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    goto :goto_5

    .line 268
    .local v3, "fontFamilyId":I
    .restart local v4    # "textViewWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/TextView;>;"
    .restart local v5    # "replyCallback":Landroidx/core/content/res/ResourcesCompat$FontCallback;
    :catch_1
    move-exception v7

    goto :goto_4

    .line 286
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method applyCompoundDrawablesTints()V
    .locals 5

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextHelper;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v2, :cond_1

    .line 354
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 355
    .local v1, "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 356
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    aget-object v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 357
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    aget-object v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 358
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x3

    aget-object v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 360
    .end local v1    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_3

    .line 361
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v2, :cond_3

    .line 362
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 363
    .restart local v1    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 364
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    aget-object v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 367
    .end local v1    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method autoSizeText()V
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    .line 409
    return-void
.end method

.method getAutoSizeMaxTextSize()I
    .locals 2

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMaxTextSize()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextHelper;
    return v0
.end method

.method getAutoSizeMinTextSize()I
    .locals 2

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMinTextSize()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextHelper;
    return v0
.end method

.method getAutoSizeStepGranularity()I
    .locals 2

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeStepGranularity()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextHelper;
    return v0
.end method

.method getAutoSizeTextAvailableSizes()[I
    .locals 2

    .prologue
    .line 457
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextHelper;
    return-object v0
.end method

.method getAutoSizeTextType()I
    .locals 2

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextType()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextHelper;
    return v0
.end method

.method isAutoSizeEnabled()Z
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 414
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->isAutoSizeEnabled()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatTextHelper;
    return v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 24
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 71
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/appcompat/widget/AppCompatTextHelper;
    move-object/from16 v3, p1

    .local v3, "attrs":Landroid/util/AttributeSet;
    move/from16 v4, p2

    .local v4, "defStyleAttr":I
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v5, v18

    .line 72
    .local v5, "context":Landroid/content/Context;
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    move-result-object v18

    move-object/from16 v6, v18

    .line 75
    .local v6, "drawableManager":Landroidx/appcompat/widget/AppCompatDrawableManager;
    move-object/from16 v18, v5

    move-object/from16 v19, v3

    sget-object v20, Landroidx/appcompat/R$styleable;->AppCompatTextHelper:[I

    move/from16 v21, v4

    const/16 v22, 0x0

    invoke-static/range {v18 .. v22}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v18

    move-object/from16 v7, v18

    .line 77
    .local v7, "a":Landroidx/appcompat/widget/TintTypedArray;
    move-object/from16 v18, v7

    sget v19, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_textAppearance:I

    const/16 v20, -0x1

    invoke-virtual/range {v18 .. v20}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v18

    move/from16 v8, v18

    .line 79
    .local v8, "ap":I
    move-object/from16 v18, v7

    sget v19, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual/range {v18 .. v19}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 80
    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    sget v22, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    const/16 v23, 0x0

    .line 81
    invoke-virtual/range {v21 .. v23}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v21

    .line 80
    invoke-static/range {v19 .. v21}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    .line 83
    :cond_0
    move-object/from16 v18, v7

    sget v19, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual/range {v18 .. v19}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 84
    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    sget v22, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    const/16 v23, 0x0

    .line 85
    invoke-virtual/range {v21 .. v23}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v21

    .line 84
    invoke-static/range {v19 .. v21}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    .line 87
    :cond_1
    move-object/from16 v18, v7

    sget v19, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual/range {v18 .. v19}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 88
    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    sget v22, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    const/16 v23, 0x0

    .line 89
    invoke-virtual/range {v21 .. v23}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v21

    .line 88
    invoke-static/range {v19 .. v21}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    .line 91
    :cond_2
    move-object/from16 v18, v7

    sget v19, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual/range {v18 .. v19}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 92
    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    sget v22, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    const/16 v23, 0x0

    .line 93
    invoke-virtual/range {v21 .. v23}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v21

    .line 92
    invoke-static/range {v19 .. v21}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    .line 96
    :cond_3
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x11

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    .line 97
    move-object/from16 v18, v7

    sget v19, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual/range {v18 .. v19}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 98
    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    sget v22, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    const/16 v23, 0x0

    .line 99
    invoke-virtual/range {v21 .. v23}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v21

    .line 98
    invoke-static/range {v19 .. v21}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    .line 101
    :cond_4
    move-object/from16 v18, v7

    sget v19, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual/range {v18 .. v19}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 102
    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    sget v22, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    const/16 v23, 0x0

    .line 103
    invoke-virtual/range {v21 .. v23}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v21

    .line 102
    invoke-static/range {v19 .. v21}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    .line 107
    :cond_5
    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 112
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    .line 113
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    move/from16 v18, v0

    move/from16 v9, v18

    .line 114
    .local v9, "hasPwdTm":Z
    const/16 v18, 0x0

    move/from16 v10, v18

    .line 115
    .local v10, "allCaps":Z
    const/16 v18, 0x0

    move/from16 v11, v18

    .line 116
    .local v11, "allCapsSet":Z
    const/16 v18, 0x0

    move-object/from16 v12, v18

    .line 117
    .local v12, "textColor":Landroid/content/res/ColorStateList;
    const/16 v18, 0x0

    move-object/from16 v13, v18

    .line 118
    .local v13, "textColorHint":Landroid/content/res/ColorStateList;
    const/16 v18, 0x0

    move-object/from16 v14, v18

    .line 121
    .local v14, "textColorLink":Landroid/content/res/ColorStateList;
    move/from16 v18, v8

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    .line 122
    move-object/from16 v18, v5

    move/from16 v19, v8

    sget-object v20, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static/range {v18 .. v20}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v18

    move-object/from16 v7, v18

    .line 123
    move/from16 v18, v9

    if-nez v18, :cond_6

    move-object/from16 v18, v7

    sget v19, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual/range {v18 .. v19}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 124
    const/16 v18, 0x1

    move/from16 v11, v18

    .line 125
    move-object/from16 v18, v7

    sget v19, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v18

    move/from16 v10, v18

    .line 128
    :cond_6
    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v7

    invoke-direct/range {v18 .. v20}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 129
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x17

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 132
    move-object/from16 v18, v7

    sget v19, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual/range {v18 .. v19}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 133
    move-object/from16 v18, v7

    sget v19, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual/range {v18 .. v19}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v18

    move-object/from16 v12, v18

    .line 135
    :cond_7
    move-object/from16 v18, v7

    sget v19, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual/range {v18 .. v19}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 136
    move-object/from16 v18, v7

    sget v19, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual/range {v18 .. v19}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v18

    move-object/from16 v13, v18

    .line 139
    :cond_8
    move-object/from16 v18, v7

    sget v19, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual/range {v18 .. v19}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 140
    move-object/from16 v18, v7

    sget v19, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual/range {v18 .. v19}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v18

    move-object/from16 v14, v18

    .line 144
    :cond_9
    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 148
    :cond_a
    move-object/from16 v18, v5

    move-object/from16 v19, v3

    sget-object v20, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    move/from16 v21, v4

    const/16 v22, 0x0

    invoke-static/range {v18 .. v22}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v18

    move-object/from16 v7, v18

    .line 150
    move/from16 v18, v9

    if-nez v18, :cond_b

    move-object/from16 v18, v7

    sget v19, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual/range {v18 .. v19}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 151
    const/16 v18, 0x1

    move/from16 v11, v18

    .line 152
    move-object/from16 v18, v7

    sget v19, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v18

    move/from16 v10, v18

    .line 154
    :cond_b
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x17

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_e

    .line 157
    move-object/from16 v18, v7

    sget v19, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual/range {v18 .. v19}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 158
    move-object/from16 v18, v7

    sget v19, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual/range {v18 .. v19}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v18

    move-object/from16 v12, v18

    .line 160
    :cond_c
    move-object/from16 v18, v7

    sget v19, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual/range {v18 .. v19}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 161
    move-object/from16 v18, v7

    sget v19, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual/range {v18 .. v19}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v18

    move-object/from16 v13, v18

    .line 164
    :cond_d
    move-object/from16 v18, v7

    sget v19, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual/range {v18 .. v19}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 165
    move-object/from16 v18, v7

    sget v19, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual/range {v18 .. v19}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v18

    move-object/from16 v14, v18

    .line 170
    :cond_e
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x1c

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_f

    move-object/from16 v18, v7

    sget v19, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    .line 171
    invoke-virtual/range {v18 .. v19}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 172
    move-object/from16 v18, v7

    sget v19, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/16 v20, -0x1

    invoke-virtual/range {v18 .. v20}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v18

    if-nez v18, :cond_f

    .line 173
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 177
    :cond_f
    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v7

    invoke-direct/range {v18 .. v20}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 178
    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 180
    move-object/from16 v18, v12

    if-eqz v18, :cond_10

    .line 181
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v19, v12

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 183
    :cond_10
    move-object/from16 v18, v13

    if-eqz v18, :cond_11

    .line 184
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v19, v13

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 186
    :cond_11
    move-object/from16 v18, v14

    if-eqz v18, :cond_12

    .line 187
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v19, v14

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 189
    :cond_12
    move/from16 v18, v9

    if-nez v18, :cond_13

    move/from16 v18, v11

    if-eqz v18, :cond_13

    .line 190
    move-object/from16 v18, v2

    move/from16 v19, v10

    invoke-virtual/range {v18 .. v19}, Landroidx/appcompat/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 192
    :cond_13
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    move-object/from16 v18, v0

    if-eqz v18, :cond_14

    .line 193
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 196
    :cond_14
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move/from16 v20, v4

    invoke-virtual/range {v18 .. v20}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 198
    sget-boolean v18, Landroidx/core/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v18, :cond_15

    .line 200
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextType()I

    move-result v18

    if-eqz v18, :cond_15

    .line 202
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    move-object/from16 v18, v0

    .line 203
    invoke-virtual/range {v18 .. v18}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v18

    move-object/from16 v15, v18

    .line 204
    .local v15, "autoSizeTextSizesInPx":[I
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_15

    .line 205
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, -0x40800000    # -1.0f

    cmpl-float v18, v18, v19

    if-eqz v18, :cond_19

    .line 208
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    move-object/from16 v19, v0

    .line 209
    invoke-virtual/range {v19 .. v19}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMinTextSize()I

    move-result v19

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    move-object/from16 v20, v0

    .line 210
    invoke-virtual/range {v20 .. v20}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMaxTextSize()I

    move-result v20

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    move-object/from16 v21, v0

    .line 211
    invoke-virtual/range {v21 .. v21}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeStepGranularity()I

    move-result v21

    const/16 v22, 0x0

    .line 208
    invoke-virtual/range {v18 .. v22}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 222
    .end local v15    # "autoSizeTextSizesInPx":[I
    :cond_15
    :goto_0
    move-object/from16 v18, v5

    move-object/from16 v19, v3

    sget-object v20, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    invoke-static/range {v18 .. v20}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v18

    move-object/from16 v7, v18

    .line 223
    move-object/from16 v18, v7

    sget v19, Landroidx/appcompat/R$styleable;->AppCompatTextView_firstBaselineToTopHeight:I

    const/16 v20, -0x1

    invoke-virtual/range {v18 .. v20}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v15, v18

    .line 225
    .local v15, "firstBaselineToTopHeight":I
    move-object/from16 v18, v7

    sget v19, Landroidx/appcompat/R$styleable;->AppCompatTextView_lastBaselineToBottomHeight:I

    const/16 v20, -0x1

    invoke-virtual/range {v18 .. v20}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v16, v18

    .line 227
    .local v16, "lastBaselineToBottomHeight":I
    move-object/from16 v18, v7

    sget v19, Landroidx/appcompat/R$styleable;->AppCompatTextView_lineHeight:I

    const/16 v20, -0x1

    invoke-virtual/range {v18 .. v20}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v17, v18

    .line 229
    .local v17, "lineHeight":I
    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 230
    move/from16 v18, v15

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_16

    .line 231
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move/from16 v19, v15

    invoke-static/range {v18 .. v19}, Landroidx/core/widget/TextViewCompat;->setFirstBaselineToTopHeight(Landroid/widget/TextView;I)V

    .line 233
    :cond_16
    move/from16 v18, v16

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_17

    .line 234
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move/from16 v19, v16

    invoke-static/range {v18 .. v19}, Landroidx/core/widget/TextViewCompat;->setLastBaselineToBottomHeight(Landroid/widget/TextView;I)V

    .line 236
    :cond_17
    move/from16 v18, v17

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_18

    .line 237
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move/from16 v19, v17

    invoke-static/range {v18 .. v19}, Landroidx/core/widget/TextViewCompat;->setLineHeight(Landroid/widget/TextView;I)V

    .line 239
    :cond_18
    return-void

    .line 214
    .end local v16    # "lastBaselineToBottomHeight":I
    .end local v17    # "lineHeight":I
    .local v15, "autoSizeTextSizesInPx":[I
    :cond_19
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v19, v15

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto/16 :goto_0
.end method

.method onAsyncTypefaceReceived(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextHelper;
    move-object v1, p1

    .local v1, "textViewWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/TextView;>;"
    move-object v2, p2

    .local v2, "typeface":Landroid/graphics/Typeface;
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z

    if-eqz v4, :cond_0

    .line 305
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 306
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object v3, v4

    .line 307
    .local v3, "textView":Landroid/widget/TextView;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 308
    move-object v4, v3

    move-object v5, v2

    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 311
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method onLayout(ZIIII)V
    .locals 7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 390
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextHelper;
    move v1, p1

    .local v1, "changed":Z
    move v2, p2

    .local v2, "left":I
    move v3, p3

    .local v3, "top":I
    move v4, p4

    .local v4, "right":I
    move v5, p5

    .local v5, "bottom":I
    sget-boolean v6, Landroidx/core/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez v6, :cond_0

    .line 391
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatTextHelper;->autoSizeText()V

    .line 393
    :cond_0
    return-void
.end method

.method onSetTextAppearance(Landroid/content/Context;I)V
    .locals 9

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextHelper;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "resId":I
    move-object v5, v1

    move v6, v2

    sget-object v7, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v5, v6, v7}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v5

    move-object v3, v5

    .line 316
    .local v3, "a":Landroidx/appcompat/widget/TintTypedArray;
    move-object v5, v3

    sget v6, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 321
    move-object v5, v0

    move-object v6, v3

    sget v7, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 323
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-ge v5, v6, :cond_1

    move-object v5, v3

    sget v6, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 324
    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 327
    move-object v5, v3

    sget v6, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 328
    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v4, v5

    .line 329
    .local v4, "textColor":Landroid/content/res/ColorStateList;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 330
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 334
    .end local v4    # "textColor":Landroid/content/res/ColorStateList;
    :cond_1
    move-object v5, v3

    sget v6, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 335
    move-object v5, v3

    sget v6, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v5

    if-nez v5, :cond_2

    .line 336
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 340
    :cond_2
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 341
    move-object v5, v3

    invoke-virtual {v5}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 342
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-eqz v5, :cond_3

    .line 343
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 345
    :cond_3
    return-void
.end method

.method setAllCaps(Z)V
    .locals 4

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextHelper;
    move v1, p1

    .local v1, "allCaps":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 349
    return-void
.end method

.method setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 430
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextHelper;
    move v1, p1

    .local v1, "autoSizeMinTextSize":I
    move v2, p2

    .local v2, "autoSizeMaxTextSize":I
    move v3, p3

    .local v3, "autoSizeStepGranularity":I
    move v4, p4

    .local v4, "unit":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 432
    return-void
.end method

.method setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 6
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 436
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextHelper;
    move-object v1, p1

    .local v1, "presetSizes":[I
    move v2, p2

    .local v2, "unit":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 437
    return-void
.end method

.method setAutoSizeTextTypeWithDefaults(I)V
    .locals 4

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextHelper;
    move v1, p1

    .local v1, "autoSizeTextType":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeWithDefaults(I)V

    .line 423
    return-void
.end method

.method setTextSize(IF)V
    .locals 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 398
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatTextHelper;
    move v1, p1

    .local v1, "unit":I
    move v2, p2

    .local v2, "size":F
    sget-boolean v3, Landroidx/core/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez v3, :cond_0

    .line 399
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->isAutoSizeEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 400
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/widget/AppCompatTextHelper;->setTextSizeInternal(IF)V

    .line 403
    :cond_0
    return-void
.end method
