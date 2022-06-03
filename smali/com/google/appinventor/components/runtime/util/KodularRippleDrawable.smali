.class public Lcom/google/appinventor/components/runtime/util/KodularRippleDrawable;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static setRippleDrawable(Landroid/view/View;II)V
    .locals 10

    .prologue
    .line 27
    move-object v0, p0

    move v1, p1

    move v2, p2

    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    .line 28
    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move v6, v2

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v3, v4

    .line 29
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 30
    .line 40
    :goto_0
    return-void

    .line 31
    :cond_0
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 32
    move-object v3, v5

    const/4 v5, 0x1

    new-array v5, v5, [I

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const v8, 0x10100a7

    aput v8, v6, v7

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move v8, v2

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 33
    move-object v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [I

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const v8, 0x101009c

    aput v8, v6, v7

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move v8, v2

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 34
    move-object v4, v3

    const/4 v5, 0x0

    new-array v5, v5, [I

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move v8, v1

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 35
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 37
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 38
    const-string/jumbo v4, "KodularRippleDrawable"

    move-object v5, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 40
    goto :goto_0
.end method
