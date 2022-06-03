.class public Lcom/google/appinventor/components/runtime/util/TextViewUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/TextViewUtil$CustomTypefaceSpan;
    }
.end annotation


# static fields
.field private static hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 3

    .prologue
    .line 333
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 334
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    move-object v0, v1

    .line 336
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    move v1, v2

    .line 113
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    move v3, v1

    div-float/2addr v2, v3

    move v0, v2

    return v0
.end method

.method public static getText(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getTitleBarCustomTypeFace(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5

    .prologue
    .line 153
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ZZ)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static getTitleBarTypeFace(I)Landroid/graphics/Typeface;
    .locals 4

    .prologue
    .line 149
    move v0, p0

    move v1, v0

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Landroid/graphics/Typeface;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ZZ)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ZZ)I
    .locals 5

    .prologue
    .line 322
    move v0, p0

    move v1, p1

    const/4 v3, 0x0

    move v2, v3

    .line 323
    move v3, v0

    if-eqz v3, :cond_0

    .line 324
    const/4 v3, 0x1

    move v2, v3

    .line 326
    :cond_0
    move v3, v1

    if-eqz v3, :cond_1

    .line 327
    move v3, v2

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    move v2, v3

    .line 329
    :cond_1
    move v3, v2

    move v0, v3

    return v0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Landroid/graphics/Typeface;
    .locals 4

    .prologue
    .line 254
    move v0, p0

    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 256
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 259
    :pswitch_0
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 302
    :goto_0
    move-object v1, v0

    move-object v0, v1

    return-object v0

    .line 263
    :pswitch_1
    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 264
    goto :goto_0

    .line 267
    :pswitch_2
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 268
    goto :goto_0

    .line 271
    :pswitch_3
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 272
    goto :goto_0

    .line 275
    :pswitch_4
    sget-object v1, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "Roboto-Thin.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    move-object v0, v1

    .line 276
    goto :goto_0

    .line 279
    :pswitch_5
    sget-object v1, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "Roboto-Regular.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    move-object v0, v1

    .line 280
    goto :goto_0

    .line 283
    :pswitch_6
    sget-object v1, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "fontawesome-webfont.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    move-object v0, v1

    .line 284
    goto :goto_0

    .line 287
    :pswitch_7
    sget-object v1, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "MaterialIcons-Regular.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    move-object v0, v1

    .line 288
    goto :goto_0

    .line 291
    :pswitch_8
    sget-object v1, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "fa-regular-400.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    move-object v0, v1

    .line 292
    goto :goto_0

    .line 295
    :pswitch_9
    sget-object v1, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "fa-solid-900.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    move-object v0, v1

    .line 296
    goto :goto_0

    .line 299
    :pswitch_a
    sget-object v1, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "fa-brands-400.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 6

    .prologue
    .line 308
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    :try_start_0
    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getAssetFilePath(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 309
    move-object v1, v3

    move-object v3, v0

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    move-object v2, v1

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    move-object v0, v2

    .line 318
    :goto_0
    move-object v2, v0

    move-object v0, v2

    return-object v0

    .line 312
    :cond_0
    sget-object v2, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 317
    goto :goto_0

    .line 314
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 315
    const-string/jumbo v2, "TextViewUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 316
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public static isEnabled(Landroid/widget/TextView;)Z
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static linkifyMessage(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5

    .prologue
    .line 341
    move-object v0, p0

    new-instance v1, Landroid/text/SpannableString;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    .line 342
    move-object v0, v2

    const/16 v2, 0xf

    invoke-static {v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v1

    .line 343
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public static setAlignment(Landroid/widget/TextView;IZ)V
    .locals 7

    .prologue
    .line 49
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 51
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 54
    :pswitch_0
    const v3, 0x800003

    move v1, v3

    .line 65
    :goto_0
    move v3, v2

    if-eqz v3, :cond_0

    const/16 v3, 0x10

    :goto_1
    move v2, v3

    .line 66
    move-object v3, v0

    move v4, v1

    move v5, v2

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 67
    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->invalidate()V

    .line 68
    return-void

    .line 58
    :pswitch_1
    const/4 v3, 0x1

    move v1, v3

    .line 59
    goto :goto_0

    .line 62
    :pswitch_2
    const v3, 0x800005

    move v1, v3

    goto :goto_0

    .line 65
    :cond_0
    const/16 v3, 0x30

    goto :goto_1

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setBackgroundColor(Landroid/widget/TextView;I)V
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 80
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 81
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    sput-object v1, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public static setCustomFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V
    .locals 10

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v1

    move-object v6, v0

    move-object v7, v2

    :try_start_0
    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    move v7, v3

    move v8, v4

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ZZ)I

    move-result v7

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 169
    move-object v5, v1

    invoke-virtual {v5}, Landroid/widget/TextView;->requestLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .line 173
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 171
    const-string/jumbo v5, "TextViewUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 173
    goto :goto_0
.end method

.method public static setCustomFontTypefaceCanvas(Lcom/google/appinventor/components/runtime/Form;Landroid/graphics/Paint;Ljava/lang/String;ZZ)V
    .locals 10

    .prologue
    .line 178
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v1

    move-object v6, v0

    move-object v7, v2

    :try_start_0
    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    move v7, v3

    move v8, v4

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ZZ)I

    move-result v7

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 181
    .line 182
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 180
    const-string/jumbo v5, "TextViewUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 182
    goto :goto_0
.end method

.method public static setEnabled(Landroid/widget/TextView;Z)V
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 101
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 102
    return-void
.end method

.method public static setFontSize(Landroid/widget/TextView;F)V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 124
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    .line 125
    return-void
.end method

.method public static setFontTypeface(Landroid/widget/TextView;IZZ)V
    .locals 9

    .prologue
    .line 141
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    :try_start_0
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Landroid/graphics/Typeface;

    move-result-object v5

    move v6, v2

    move v7, v3

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ZZ)I

    move-result v6

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 142
    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->requestLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .line 146
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 144
    const-string/jumbo v4, "TextViewUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 146
    goto :goto_0
.end method

.method public static setFontTypefaceCanvas(Landroid/graphics/Paint;IZZ)V
    .locals 9

    .prologue
    .line 159
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    :try_start_0
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Landroid/graphics/Typeface;

    move-result-object v5

    move v6, v2

    move v7, v3

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ZZ)I

    move-result v6

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 162
    .line 163
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 161
    const-string/jumbo v4, "TextViewUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 163
    goto :goto_0
.end method

.method public static setHint(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 248
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 249
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 250
    return-void
.end method

.method public static setHintColor(Landroid/widget/TextView;I)V
    .locals 4

    .prologue
    .line 243
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 244
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 245
    return-void
.end method

.method public static setMinHeight(Landroid/widget/TextView;I)V
    .locals 4

    .prologue
    .line 408
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 409
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 410
    return-void
.end method

.method public static setMinSize(Landroid/widget/TextView;II)V
    .locals 5

    .prologue
    .line 420
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setMinWidth(Landroid/widget/TextView;I)V

    .line 421
    move-object v3, v0

    move v4, v2

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setMinHeight(Landroid/widget/TextView;I)V

    .line 422
    return-void
.end method

.method public static setMinWidth(Landroid/widget/TextView;I)V
    .locals 4

    .prologue
    .line 395
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 396
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 397
    return-void
.end method

.method public static setPadding(Landroid/widget/TextView;I)V
    .locals 8

    .prologue
    .line 223
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move v7, v3

    move v3, v7

    move v4, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 224
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    .line 225
    return-void
.end method

.method public static setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 212
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    .line 214
    return-void
.end method

.method public static setTextColor(Landroid/widget/TextView;I)V
    .locals 4

    .prologue
    .line 234
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 236
    return-void
.end method

.method public static setTextColors(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 239
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 240
    return-void
.end method

.method public static setTextHTML(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 201
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    .line 203
    return-void
.end method
