.class public Lcom/google/android/material/resources/TextAppearance;
.super Ljava/lang/Object;
.source "TextAppearance.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextAppearance"

.field private static final TYPEFACE_MONOSPACE:I = 0x3

.field private static final TYPEFACE_SANS:I = 0x1

.field private static final TYPEFACE_SERIF:I = 0x2


# instance fields
.field private font:Landroid/graphics/Typeface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final fontFamily:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final fontFamilyResourceId:I
    .annotation build Landroidx/annotation/FontRes;
    .end annotation
.end field

.field private fontResolved:Z

.field public final shadowColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final shadowDx:F

.field public final shadowDy:F

.field public final shadowRadius:F

.field public final textAllCaps:Z

.field public final textColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final textColorHint:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final textColorLink:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final textSize:F

.field public final textStyle:I

.field public final typeface:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 9
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/resources/TextAppearance;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "id":I
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 69
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    .line 74
    move-object v5, v1

    move v6, v2

    sget-object v7, Lcom/google/android/material/R$styleable;->TextAppearance:[I

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v3, v5

    .line 76
    .local v3, "a":Landroid/content/res/TypedArray;
    move-object v5, v0

    move-object v6, v3

    sget v7, Lcom/google/android/material/R$styleable;->TextAppearance_android_textSize:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, v5, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    .line 77
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    sget v8, Lcom/google/android/material/R$styleable;->TextAppearance_android_textColor:I

    .line 78
    invoke-static {v6, v7, v8}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    .line 80
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    sget v8, Lcom/google/android/material/R$styleable;->TextAppearance_android_textColorHint:I

    .line 81
    invoke-static {v6, v7, v8}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/material/resources/TextAppearance;->textColorHint:Landroid/content/res/ColorStateList;

    .line 83
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    sget v8, Lcom/google/android/material/R$styleable;->TextAppearance_android_textColorLink:I

    .line 84
    invoke-static {v6, v7, v8}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/material/resources/TextAppearance;->textColorLink:Landroid/content/res/ColorStateList;

    .line 86
    move-object v5, v0

    move-object v6, v3

    sget v7, Lcom/google/android/material/R$styleable;->TextAppearance_android_textStyle:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v5, Lcom/google/android/material/resources/TextAppearance;->textStyle:I

    .line 87
    move-object v5, v0

    move-object v6, v3

    sget v7, Lcom/google/android/material/R$styleable;->TextAppearance_android_typeface:I

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v5, Lcom/google/android/material/resources/TextAppearance;->typeface:I

    .line 88
    move-object v5, v3

    sget v6, Lcom/google/android/material/R$styleable;->TextAppearance_fontFamily:I

    sget v7, Lcom/google/android/material/R$styleable;->TextAppearance_android_fontFamily:I

    .line 89
    invoke-static {v5, v6, v7}, Lcom/google/android/material/resources/MaterialResources;->getIndexWithValue(Landroid/content/res/TypedArray;II)I

    move-result v5

    move v4, v5

    .line 93
    .local v4, "fontFamilyIndex":I
    move-object v5, v0

    move-object v6, v3

    move v7, v4

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Lcom/google/android/material/resources/TextAppearance;->fontFamilyResourceId:I

    .line 94
    move-object v5, v0

    move-object v6, v3

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/material/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    .line 95
    move-object v5, v0

    move-object v6, v3

    sget v7, Lcom/google/android/material/R$styleable;->TextAppearance_textAllCaps:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v5, Lcom/google/android/material/resources/TextAppearance;->textAllCaps:Z

    .line 96
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    sget v8, Lcom/google/android/material/R$styleable;->TextAppearance_android_shadowColor:I

    .line 97
    invoke-static {v6, v7, v8}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    .line 99
    move-object v5, v0

    move-object v6, v3

    sget v7, Lcom/google/android/material/R$styleable;->TextAppearance_android_shadowDx:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v5, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    .line 100
    move-object v5, v0

    move-object v6, v3

    sget v7, Lcom/google/android/material/R$styleable;->TextAppearance_android_shadowDy:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v5, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    .line 101
    move-object v5, v0

    move-object v6, v3

    sget v7, Lcom/google/android/material/R$styleable;->TextAppearance_android_shadowRadius:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v5, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    .line 103
    move-object v5, v3

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/material/resources/TextAppearance;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 7

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/resources/TextAppearance;
    move-object v1, p1

    .local v1, "x1":Landroid/graphics/Typeface;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    move-object v0, v2

    .end local v0    # "x0":Lcom/google/android/material/resources/TextAppearance;
    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/material/resources/TextAppearance;Z)Z
    .locals 7

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/resources/TextAppearance;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    move v0, v2

    .end local v0    # "x0":Lcom/google/android/material/resources/TextAppearance;
    return v0
.end method

.method static synthetic access$200(Lcom/google/android/material/resources/TextAppearance;)V
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/resources/TextAppearance;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/resources/TextAppearance;->createFallbackTypeface()V

    return-void
.end method

.method private createFallbackTypeface()V
    .locals 4

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/resources/TextAppearance;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    .line 194
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/resources/TextAppearance;->textStyle:I

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 198
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    if-nez v1, :cond_1

    .line 199
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/resources/TextAppearance;->typeface:I

    packed-switch v1, :pswitch_data_0

    .line 210
    move-object v1, v0

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v2, v1, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 213
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    .line 214
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/resources/TextAppearance;->textStyle:I

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 217
    :cond_1
    return-void

    .line 201
    :pswitch_0
    move-object v1, v0

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v2, v1, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 202
    goto :goto_0

    .line 204
    :pswitch_1
    move-object v1, v0

    sget-object v2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v2, v1, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 205
    goto :goto_0

    .line 207
    :pswitch_2
    move-object v1, v0

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v2, v1, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 208
    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getFont(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/resources/TextAppearance;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    if-eqz v3, :cond_0

    .line 115
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    move-object v0, v3

    .line 134
    .end local v0    # "this":Lcom/google/android/material/resources/TextAppearance;
    :goto_0
    return-object v0

    .line 119
    .restart local v0    # "this":Lcom/google/android/material/resources/TextAppearance;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Context;->isRestricted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 121
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    :try_start_0
    iget v5, v5, Lcom/google/android/material/resources/TextAppearance;->fontFamilyResourceId:I

    invoke-static {v4, v5}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 122
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    if-eqz v3, :cond_1

    .line 123
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/resources/TextAppearance;->textStyle:I

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    .line 132
    :cond_1
    :goto_1
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/resources/TextAppearance;->createFallbackTypeface()V

    .line 133
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    .line 134
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    move-object v0, v3

    goto :goto_0

    .line 125
    :catch_0
    move-exception v3

    :goto_2
    move-object v2, v3

    .line 129
    goto :goto_1

    .line 127
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 128
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "TextAppearance"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error loading font "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_1

    .line 125
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    goto :goto_2
.end method

.method public getFontAsync(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/core/content/res/ResourcesCompat$FontCallback;)V
    .locals 13
    .param p3    # Landroidx/core/content/res/ResourcesCompat$FontCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/resources/TextAppearance;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "textPaint":Landroid/text/TextPaint;
    move-object/from16 v3, p3

    .local v3, "callback":Landroidx/core/content/res/ResourcesCompat$FontCallback;
    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    if-eqz v5, :cond_0

    .line 148
    move-object v5, v0

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/material/resources/TextAppearance;->updateTextPaintMeasureState(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 149
    .line 189
    :goto_0
    return-void

    .line 154
    :cond_0
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/resources/TextAppearance;->createFallbackTypeface()V

    .line 156
    move-object v5, v1

    invoke-virtual {v5}, Landroid/content/Context;->isRestricted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 157
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    .line 158
    move-object v5, v0

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/material/resources/TextAppearance;->updateTextPaintMeasureState(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 159
    goto :goto_0

    .line 164
    :cond_1
    move-object v5, v1

    move-object v6, v0

    :try_start_0
    iget v6, v6, Lcom/google/android/material/resources/TextAppearance;->fontFamilyResourceId:I

    new-instance v7, Lcom/google/android/material/resources/TextAppearance$1;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    move-object v10, v2

    move-object v11, v3

    invoke-direct {v8, v9, v10, v11}, Lcom/google/android/material/resources/TextAppearance$1;-><init>(Lcom/google/android/material/resources/TextAppearance;Landroid/text/TextPaint;Landroidx/core/content/res/ResourcesCompat$FontCallback;)V

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;ILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 188
    .line 189
    :goto_1
    goto :goto_0

    .line 184
    :catch_0
    move-exception v5

    :goto_2
    move-object v4, v5

    .line 188
    goto :goto_1

    .line 186
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 187
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "TextAppearance"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error loading font "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    goto :goto_1

    .line 184
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    goto :goto_2
.end method

.method public updateDrawState(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/core/content/res/ResourcesCompat$FontCallback;)V
    .locals 11

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/resources/TextAppearance;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "textPaint":Landroid/text/TextPaint;
    move-object v3, p3

    .local v3, "callback":Landroidx/core/content/res/ResourcesCompat$FontCallback;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/material/resources/TextAppearance;->updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/core/content/res/ResourcesCompat$FontCallback;)V

    .line 228
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    move-object v6, v2

    iget-object v6, v6, Landroid/text/TextPaint;->drawableState:[I

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    .line 230
    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    .line 228
    :goto_0
    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 232
    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    if-eqz v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    move-object v9, v2

    iget-object v9, v9, Landroid/text/TextPaint;->drawableState:[I

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    .line 237
    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v8

    .line 232
    :goto_1
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 239
    return-void

    .line 230
    :cond_0
    const/high16 v5, -0x1000000

    goto :goto_0

    .line 237
    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/core/content/res/ResourcesCompat$FontCallback;)V
    .locals 8
    .param p3    # Landroidx/core/content/res/ResourcesCompat$FontCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/resources/TextAppearance;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "textPaint":Landroid/text/TextPaint;
    move-object v3, p3

    .local v3, "callback":Landroidx/core/content/res/ResourcesCompat$FontCallback;
    invoke-static {}, Lcom/google/android/material/resources/TextAppearanceConfig;->shouldLoadFontSynchronously()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 250
    move-object v4, v0

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/google/android/material/resources/TextAppearance;->getFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/material/resources/TextAppearance;->updateTextPaintMeasureState(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/material/resources/TextAppearance;->getFontAsync(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/core/content/res/ResourcesCompat$FontCallback;)V

    .line 253
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    if-nez v4, :cond_0

    .line 255
    move-object v4, v0

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/material/resources/TextAppearance;->updateTextPaintMeasureState(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

.method public updateTextPaintMeasureState(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V
    .locals 7
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/resources/TextAppearance;
    move-object v1, p1

    .local v1, "textPaint":Landroid/text/TextPaint;
    move-object v2, p2

    .local v2, "typeface":Landroid/graphics/Typeface;
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 269
    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/resources/TextAppearance;->textStyle:I

    move-object v5, v2

    invoke-virtual {v5}, Landroid/graphics/Typeface;->getStyle()I

    move-result v5

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    move v3, v4

    .line 270
    .local v3, "fake":I
    move-object v4, v1

    move v5, v3

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 271
    move-object v4, v1

    move v5, v3

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    const/high16 v5, -0x41800000    # -0.25f

    :goto_1
    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 273
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 274
    return-void

    .line 270
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 271
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method
