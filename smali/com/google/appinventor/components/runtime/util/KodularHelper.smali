.class public Lcom/google/appinventor/components/runtime/util/KodularHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string/jumbo v0, "KodularHelper"

    sput-object v0, Lcom/google/appinventor/components/runtime/util/KodularHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public static getPackageIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    .line 123
    move-object v0, p0

    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_1

    .line 125
    move-object v3, v0

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 126
    move-object v3, v0

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    .line 155
    :goto_0
    return-object v0

    .line 127
    :cond_0
    move-object v3, v0

    instance-of v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v3, :cond_2

    .line 128
    move-object v3, v0

    check-cast v3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v1, v3

    .line 129
    move-object v3, v0

    check-cast v3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    .line 131
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    .line 132
    move-object v2, v4

    const/4 v4, 0x0

    move-object v5, v1

    aput-object v5, v3, v4

    .line 133
    move-object v3, v2

    const/4 v4, 0x1

    move-object v5, v0

    aput-object v5, v3, v4

    .line 135
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    invoke-direct {v4, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    .line 137
    move-object v0, v4

    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getIntrinsicWidth()I

    move-result v3

    move v1, v3

    .line 138
    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getIntrinsicHeight()I

    move-result v3

    move v2, v3

    .line 140
    move v3, v1

    move v4, v2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v1, v3

    .line 142
    new-instance v3, Landroid/graphics/Canvas;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v2, v3

    .line 144
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    move-object v7, v2

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/LayerDrawable;->setBounds(IIII)V

    .line 145
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 147
    move-object v3, v1

    move-object v0, v3

    goto :goto_0

    .line 150
    :cond_1
    move-object v3, v0

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 154
    .line 155
    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 153
    :catch_0
    move-exception v3

    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public static prepareRippleDrawable(Landroid/view/View;Landroid/view/MotionEvent;I)V
    .locals 11

    .prologue
    .line 163
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/RippleDrawable;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    .line 164
    move-object v0, v4

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 165
    const/4 v3, 0x1

    new-array v3, v3, [[I

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [I

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const v9, 0x101009e

    aput v9, v7, v8

    aput-object v6, v4, v5

    move-object v1, v3

    .line 166
    const/4 v3, 0x1

    new-array v3, v3, [I

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x0

    move v6, v2

    aput v6, v4, v5

    move-object v2, v3

    .line 168
    new-instance v3, Landroid/content/res/ColorStateList;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v1, v3

    .line 169
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 170
    sget-object v3, Lcom/google/appinventor/components/runtime/util/KodularHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Prepare new RippleDrawable successfully executed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 173
    .line 174
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 172
    sget-object v3, Lcom/google/appinventor/components/runtime/util/KodularHelper;->LOG_TAG:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 174
    goto :goto_0
.end method

.method public static setAppBackgroundTaskInfo(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 13

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v6, 0x0

    move-object v3, v6

    .line 106
    move-object v6, v0

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    move-object v4, v6

    .line 107
    move-object v6, v0

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 109
    move-object v6, v4

    move-object v7, v5

    :try_start_0
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v3, v6

    .line 112
    .line 113
    :goto_0
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 114
    move-object v6, v3

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->getPackageIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    .line 115
    move-object v3, v7

    if-eqz v6, :cond_0

    .line 116
    move-object v6, v0

    new-instance v7, Landroid/app/ActivityManager$TaskDescription;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    move-object v10, v3

    move v11, v2

    invoke-direct {v8, v9, v10, v11}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 119
    :cond_0
    return-void

    .line 111
    :catch_0
    move-exception v6

    sget-object v6, Lcom/google/appinventor/components/runtime/util/KodularHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "wrong icon or icon was empty or null or not found. setAppBackgroundTaskInfo"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_0
.end method

.method public static setButtonTintList(Landroid/widget/CompoundButton;I)V
    .locals 4

    .prologue
    .line 200
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    :try_start_0
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 201
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->invalidate()V

    .line 202
    sget-object v2, Lcom/google/appinventor/components/runtime/util/KodularHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Set new buttonTintList successfully executed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 205
    .line 206
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 204
    sget-object v2, Lcom/google/appinventor/components/runtime/util/KodularHelper;->LOG_TAG:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 206
    goto :goto_0
.end method

.method public static setMarginToBtn(Landroid/widget/Button;Landroid/content/Context;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 234
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 235
    move-object v2, v6

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 236
    move-object v5, v2

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 238
    new-instance v5, Ljava/util/ArrayList;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v5

    .line 239
    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move-object v6, v2

    array-length v6, v6

    if-le v5, v6, :cond_0

    .line 240
    move-object v5, v3

    move-object v6, v1

    move-object v7, v2

    move v8, v4

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 239
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 242
    :cond_0
    move-object v5, v2

    array-length v5, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 244
    move-object v5, v0

    :try_start_0
    invoke-virtual {v5}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 245
    move-object v4, v6

    move-object v6, v3

    const/4 v7, 0x0

    .line 246
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v7, v3

    const/4 v8, 0x0

    .line 247
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v8, v3

    const/4 v9, 0x0

    .line 248
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v9, v3

    const/4 v10, 0x0

    .line 249
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 245
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 251
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/Button;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .line 286
    :goto_1
    return-void

    .line 253
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 254
    sget-object v5, Lcom/google/appinventor/components/runtime/util/KodularHelper;->LOG_TAG:Ljava/lang/String;

    move-object v6, v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 255
    goto :goto_1

    .line 256
    :cond_1
    move-object v5, v2

    array-length v5, v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 258
    move-object v5, v0

    :try_start_1
    invoke-virtual {v5}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 259
    move-object v4, v6

    const/4 v6, 0x0

    move-object v7, v3

    const/4 v8, 0x0

    .line 261
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    move-object v9, v3

    const/4 v10, 0x1

    .line 263
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 259
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 265
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/Button;->invalidate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 269
    goto :goto_1

    .line 267
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 268
    sget-object v5, Lcom/google/appinventor/components/runtime/util/KodularHelper;->LOG_TAG:Ljava/lang/String;

    move-object v6, v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 269
    goto :goto_1

    .line 270
    :cond_2
    move-object v5, v2

    array-length v5, v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 272
    move-object v5, v0

    :try_start_2
    invoke-virtual {v5}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 273
    move-object v4, v6

    move-object v6, v3

    const/4 v7, 0x0

    .line 274
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v7, v3

    const/4 v8, 0x1

    .line 275
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v8, v3

    const/4 v9, 0x2

    .line 276
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v9, v3

    const/4 v10, 0x3

    .line 277
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 273
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 279
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/Button;->invalidate()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 283
    goto/16 :goto_1

    .line 281
    :catch_2
    move-exception v5

    move-object v4, v5

    .line 282
    sget-object v5, Lcom/google/appinventor/components/runtime/util/KodularHelper;->LOG_TAG:Ljava/lang/String;

    move-object v6, v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 286
    :cond_3
    goto/16 :goto_1
.end method

.method public static setMarginToButton(Landroid/widget/Button;Landroid/content/Context;IIII)V
    .locals 14

    .prologue
    .line 290
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v7, v0

    :try_start_0
    invoke-virtual {v7}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    .line 291
    move-object v6, v8

    move-object v8, v1

    move v9, v2

    .line 292
    invoke-static {v8, v9}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v8

    move-object v9, v1

    move v10, v3

    .line 293
    invoke-static {v9, v10}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v9

    move-object v10, v1

    move v11, v4

    .line 294
    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v10

    move-object v11, v1

    move v12, v5

    .line 295
    invoke-static {v11, v12}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v11

    .line 291
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 296
    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    move-object v7, v0

    invoke-virtual {v7}, Landroid/widget/Button;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .line 301
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 299
    sget-object v7, Lcom/google/appinventor/components/runtime/util/KodularHelper;->LOG_TAG:Ljava/lang/String;

    move-object v8, v6

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 301
    goto :goto_0
.end method

.method public static setNavigationBarColor(Landroid/app/Activity;I)V
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 94
    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 95
    sget-object v2, Lcom/google/appinventor/components/runtime/util/KodularHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Set new navigationBarColor successfully executed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 98
    .line 99
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 97
    sget-object v2, Lcom/google/appinventor/components/runtime/util/KodularHelper;->LOG_TAG:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 99
    goto :goto_0
.end method

.method public static setPadding(Landroid/view/View;Landroid/content/Context;IIII)V
    .locals 12

    .prologue
    .line 213
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    .line 214
    :try_start_0
    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v7

    move-object v8, v1

    move v9, v3

    .line 215
    invoke-static {v8, v9}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v8

    move-object v9, v1

    move v10, v4

    .line 216
    invoke-static {v9, v10}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v9

    move-object v10, v1

    move v11, v5

    .line 217
    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v10

    .line 213
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 218
    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .line 222
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 220
    sget-object v6, Lcom/google/appinventor/components/runtime/util/KodularHelper;->LOG_TAG:Ljava/lang/String;

    move-object v7, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 222
    goto :goto_0
.end method

.method public static setRippleDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .locals 13

    .prologue
    .line 181
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v5, 0x2

    :try_start_0
    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/4 v7, 0x1

    move-object v8, v1

    aput-object v8, v6, v7

    move-object v3, v5

    .line 182
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v3

    invoke-direct {v6, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v3, v5

    .line 184
    const/4 v5, 0x1

    new-array v5, v5, [[I

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [I

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    const v11, 0x101009e

    aput v11, v9, v10

    aput-object v8, v6, v7

    move-object v4, v5

    .line 185
    const/4 v5, 0x1

    new-array v5, v5, [I

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/4 v7, 0x0

    move v8, v2

    aput v8, v6, v7

    move-object v2, v5

    .line 186
    new-instance v5, Landroid/content/res/ColorStateList;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v4

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v2, v5

    .line 187
    new-instance v5, Landroid/graphics/drawable/RippleDrawable;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v2

    move-object v8, v3

    move-object v9, v1

    invoke-direct {v6, v7, v8, v9}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v1, v5

    .line 188
    move-object v5, v0

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 189
    sget-object v5, Lcom/google/appinventor/components/runtime/util/KodularHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "Set new RippleDrawable successfully executed"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 192
    .line 193
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 191
    sget-object v5, Lcom/google/appinventor/components/runtime/util/KodularHelper;->LOG_TAG:Ljava/lang/String;

    move-object v6, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 193
    goto :goto_0
.end method

.method public static setShadow(Landroid/widget/TextView;FFFI)V
    .locals 10

    .prologue
    .line 329
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v3

    move v7, v1

    move v8, v2

    move v9, v4

    :try_start_0
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 330
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .line 334
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 332
    sget-object v5, Lcom/google/appinventor/components/runtime/util/KodularHelper;->LOG_TAG:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 334
    goto :goto_0
.end method

.method public static setShape(Landroid/view/View;IIZ)V
    .locals 9

    .prologue
    .line 308
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    :try_start_0
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    .line 309
    move-object v4, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 310
    move-object v5, v4

    move v6, v3

    if-eqz v6, :cond_0

    const/high16 v6, 0x42480000    # 50.0f

    :goto_0
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 311
    move-object v5, v4

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 312
    move-object v5, v4

    const/4 v6, 0x3

    move v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 313
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-ge v5, v6, :cond_1

    .line 314
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    :goto_1
    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 321
    .line 322
    :goto_2
    return-void

    .line 310
    :cond_0
    const/high16 v6, 0x41200000    # 10.0f

    goto :goto_0

    .line 316
    :cond_1
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 319
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 320
    sget-object v5, Lcom/google/appinventor/components/runtime/util/KodularHelper;->LOG_TAG:Ljava/lang/String;

    move-object v6, v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 322
    goto :goto_2
.end method

.method public static setStatusBarColor(Landroid/app/Activity;I)V
    .locals 5

    .prologue
    .line 79
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 80
    move-object v0, v3

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 81
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 82
    sget-object v2, Lcom/google/appinventor/components/runtime/util/KodularHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Set new statusBarColor successfully executed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 85
    .line 86
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 84
    sget-object v2, Lcom/google/appinventor/components/runtime/util/KodularHelper;->LOG_TAG:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 86
    goto :goto_0
.end method

.method public static textToBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IF)Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    .line 341
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    :try_start_0
    new-instance v6, Landroid/graphics/Paint;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    .line 342
    move-object v5, v7

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 343
    move-object v6, v5

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    move-object v6, v5

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 345
    move-object v6, v0

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 346
    move-object v6, v1

    const-string/jumbo v7, "material"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 347
    move-object v6, v5

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypefaceCanvas(Landroid/graphics/Paint;IZZ)V

    .line 352
    :cond_0
    :goto_0
    move v6, v4

    float-to-int v6, v6

    move v11, v6

    move v6, v11

    move v7, v11

    .line 354
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v0, v6

    .line 355
    new-instance v6, Landroid/graphics/Canvas;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    .line 357
    move-object v1, v7

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    move v3, v6

    .line 358
    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    move-object v7, v5

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v7

    move-object v8, v5

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v8

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v6, v6

    move v4, v6

    .line 360
    move-object v6, v1

    move-object v7, v2

    invoke-static {v7}, Lcom/google/appinventor/components/common/HtmlEntities;->decodeHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move v8, v3

    int-to-float v8, v8

    move v9, v4

    int-to-float v9, v9

    move-object v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 362
    move-object v6, v0

    move-object v0, v6

    .line 364
    :goto_1
    return-object v0

    .line 348
    :cond_1
    move-object v6, v1

    const-string/jumbo v7, "font_awesome"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 349
    move-object v6, v5

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypefaceCanvas(Landroid/graphics/Paint;IZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 364
    :catch_0
    move-exception v6

    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method
