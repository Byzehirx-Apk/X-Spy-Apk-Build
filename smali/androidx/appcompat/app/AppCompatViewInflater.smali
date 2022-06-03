.class public Landroidx/appcompat/app/AppCompatViewInflater;
.super Ljava/lang/Object;
.source "AppCompatViewInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppCompatViewInflater"

.field private static final sClassPrefixList:[Ljava/lang/String;

.field private static final sConstructorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sOnClickAttrs:[I


# instance fields
.field private final mConstructorArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-class v3, Landroid/util/AttributeSet;

    aput-object v3, v1, v2

    sput-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->sConstructorSignature:[Ljava/lang/Class;

    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x101026f

    aput v3, v1, v2

    sput-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->sOnClickAttrs:[I

    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "android.widget."

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "android.view."

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "android.webkit."

    aput-object v3, v1, v2

    sput-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    .line 74
    new-instance v0, Landroidx/collection/ArrayMap;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatViewInflater;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 77
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, v1, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 366
    return-void
.end method

.method private checkOnClickListener(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 12

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatViewInflater;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v3, v6

    .line 293
    .local v3, "context":Landroid/content/Context;
    move-object v6, v3

    instance-of v6, v6, Landroid/content/ContextWrapper;

    if-eqz v6, :cond_0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xf

    if-lt v6, v7, :cond_1

    move-object v6, v1

    .line 294
    invoke-static {v6}, Landroidx/core/view/ViewCompat;->hasOnClickListeners(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 298
    .line 307
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    move-object v6, v3

    move-object v7, v2

    sget-object v8, Landroidx/appcompat/app/AppCompatViewInflater;->sOnClickAttrs:[I

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v4, v6

    .line 302
    .local v4, "a":Landroid/content/res/TypedArray;
    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 303
    .local v5, "handlerName":Ljava/lang/String;
    move-object v6, v5

    if-eqz v6, :cond_2

    .line 304
    move-object v6, v1

    new-instance v7, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    move-object v10, v5

    invoke-direct {v8, v9, v10}, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    :cond_2
    move-object v6, v4

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 307
    goto :goto_0
.end method

.method private createViewByPrefix(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatViewInflater;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, p3

    .local v3, "prefix":Ljava/lang/String;
    sget-object v6, Landroidx/appcompat/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;

    move-object v7, v2

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Constructor;

    move-object v4, v6

    .line 314
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    move-object v6, v4

    if-nez v6, :cond_0

    .line 316
    move-object v6, v1

    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object v7, v3

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-class v7, Landroid/view/View;

    .line 317
    invoke-virtual {v6, v7}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    move-object v5, v6

    .line 319
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    move-object v6, v5

    sget-object v7, Landroidx/appcompat/app/AppCompatViewInflater;->sConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    move-object v4, v6

    .line 320
    sget-object v6, Landroidx/appcompat/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;

    move-object v7, v2

    move-object v8, v4

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 322
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    :cond_0
    move-object v6, v4

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 323
    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 327
    .end local v0    # "this":Landroidx/appcompat/app/AppCompatViewInflater;
    :goto_1
    return-object v0

    .line 316
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatViewInflater;
    :cond_1
    move-object v7, v2

    goto :goto_0

    .line 324
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 327
    .local v5, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method private createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 13

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatViewInflater;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "attrs":Landroid/util/AttributeSet;
    move-object v8, v2

    const-string/jumbo v9, "view"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 256
    move-object v8, v3

    const/4 v9, 0x0

    const-string/jumbo v10, "class"

    invoke-interface {v8, v9, v10}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 260
    :cond_0
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    .line 261
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x1

    move-object v10, v3

    aput-object v10, v8, v9

    .line 263
    const/4 v8, -0x1

    move-object v9, v2

    const/16 v10, 0x2e

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 264
    const/4 v8, 0x0

    move v4, v8

    .local v4, "i":I
    :goto_0
    move v8, v4

    sget-object v9, Landroidx/appcompat/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    array-length v9, v9

    if-ge v8, v9, :cond_2

    .line 265
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    sget-object v11, Landroidx/appcompat/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    move v12, v4

    aget-object v11, v11, v12

    invoke-direct {v8, v9, v10, v11}, Landroidx/appcompat/app/AppCompatViewInflater;->createViewByPrefix(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    move-object v5, v8

    .line 266
    .local v5, "view":Landroid/view/View;
    move-object v8, v5

    if-eqz v8, :cond_1

    .line 267
    move-object v8, v5

    move-object v6, v8

    .line 280
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    .line 281
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    move-object v8, v6

    move-object v0, v8

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatViewInflater;
    .end local v4    # "i":I
    .end local v5    # "view":Landroid/view/View;
    :goto_1
    return-object v0

    .line 264
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatViewInflater;
    .restart local v4    # "i":I
    .restart local v5    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 270
    .end local v5    # "view":Landroid/view/View;
    :cond_2
    const/4 v8, 0x0

    move-object v4, v8

    .line 280
    .end local v4    # "i":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    .line 281
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    move-object v8, v4

    move-object v0, v8

    goto :goto_1

    .line 272
    :cond_3
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    const/4 v11, 0x0

    :try_start_1
    invoke-direct {v8, v9, v10, v11}, Landroidx/appcompat/app/AppCompatViewInflater;->createViewByPrefix(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    move-object v4, v8

    .line 280
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    .line 281
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    move-object v8, v4

    move-object v0, v8

    goto :goto_1

    .line 274
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 277
    .local v4, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    move-object v5, v8

    .line 280
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    .line 281
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    move-object v8, v5

    move-object v0, v8

    goto :goto_1

    .line 280
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    .line 281
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    move-object v8, v7

    throw v8
.end method

.method private static themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;
    .locals 12

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    move v2, p2

    .local v2, "useAndroidTheme":Z
    move v3, p3

    .local v3, "useAppTheme":Z
    move-object v6, v0

    move-object v7, v1

    sget-object v8, Landroidx/appcompat/R$styleable;->View:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v4, v6

    .line 337
    .local v4, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    move v5, v6

    .line 338
    .local v5, "themeId":I
    move v6, v2

    if-eqz v6, :cond_0

    .line 340
    move-object v6, v4

    sget v7, Landroidx/appcompat/R$styleable;->View_android_theme:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    move v5, v6

    .line 342
    :cond_0
    move v6, v3

    if-eqz v6, :cond_1

    move v6, v5

    if-nez v6, :cond_1

    .line 344
    move-object v6, v4

    sget v7, Landroidx/appcompat/R$styleable;->View_theme:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    move v5, v6

    .line 346
    move v6, v5

    if-eqz v6, :cond_1

    .line 347
    const-string/jumbo v6, "AppCompatViewInflater"

    const-string/jumbo v7, "app:theme is now deprecated. Please move to using android:theme instead."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 351
    :cond_1
    move-object v6, v4

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 353
    move v6, v5

    if-eqz v6, :cond_3

    move-object v6, v0

    instance-of v6, v6, Landroidx/appcompat/view/ContextThemeWrapper;

    if-eqz v6, :cond_2

    move-object v6, v0

    check-cast v6, Landroidx/appcompat/view/ContextThemeWrapper;

    .line 354
    invoke-virtual {v6}, Landroidx/appcompat/view/ContextThemeWrapper;->getThemeResId()I

    move-result v6

    move v7, v5

    if-eq v6, v7, :cond_3

    .line 357
    :cond_2
    new-instance v6, Landroidx/appcompat/view/ContextThemeWrapper;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move v9, v5

    invoke-direct {v7, v8, v9}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v6

    .line 359
    :cond_3
    move-object v6, v0

    move-object v0, v6

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method private verifyNotNull(Landroid/view/View;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatViewInflater;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 244
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " asked to inflate view for <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ">, but returned null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 247
    :cond_0
    return-void
.end method


# virtual methods
.method protected createAutoCompleteTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatViewInflater;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    new-instance v3, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatViewInflater;
    return-object v0
.end method

.method protected createButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatButton;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatViewInflater;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    new-instance v3, Landroidx/appcompat/widget/AppCompatButton;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatViewInflater;
    return-object v0
.end method

.method protected createCheckBox(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatCheckBox;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatViewInflater;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    new-instance v3, Landroidx/appcompat/widget/AppCompatCheckBox;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatViewInflater;
    return-object v0
.end method

.method protected createCheckedTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatCheckedTextView;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatViewInflater;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    new-instance v3, Landroidx/appcompat/widget/AppCompatCheckedTextView;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatViewInflater;
    return-object v0
.end method

.method protected createEditText(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatEditText;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatViewInflater;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    new-instance v3, Landroidx/appcompat/widget/AppCompatEditText;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatViewInflater;
    return-object v0
.end method

.method protected createImageButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatImageButton;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatViewInflater;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    new-instance v3, Landroidx/appcompat/widget/AppCompatImageButton;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatViewInflater;
    return-object v0
.end method

.method protected createImageView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatViewInflater;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    new-instance v3, Landroidx/appcompat/widget/AppCompatImageView;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatViewInflater;
    return-object v0
.end method

.method protected createMultiAutoCompleteTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatViewInflater;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    new-instance v3, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatViewInflater;
    return-object v0
.end method

.method protected createRadioButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatRadioButton;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatViewInflater;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    new-instance v3, Landroidx/appcompat/widget/AppCompatRadioButton;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatViewInflater;
    return-object v0
.end method

.method protected createRatingBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatRatingBar;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatViewInflater;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    new-instance v3, Landroidx/appcompat/widget/AppCompatRatingBar;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatViewInflater;
    return-object v0
.end method

.method protected createSeekBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatSeekBar;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatViewInflater;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    new-instance v3, Landroidx/appcompat/widget/AppCompatSeekBar;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatViewInflater;
    return-object v0
.end method

.method protected createSpinner(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatSpinner;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatViewInflater;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    new-instance v3, Landroidx/appcompat/widget/AppCompatSpinner;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatViewInflater;
    return-object v0
.end method

.method protected createTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatViewInflater;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatViewInflater;
    return-object v0
.end method

.method protected createView(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatViewInflater;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, p3

    .local v3, "attrs":Landroid/util/AttributeSet;
    const/4 v4, 0x0

    move-object v0, v4

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatViewInflater;
    return-object v0
.end method

.method final createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;
    .locals 17
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 82
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatViewInflater;
    move-object/from16 v1, p1

    .local v1, "parent":Landroid/view/View;
    move-object/from16 v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "context":Landroid/content/Context;
    move-object/from16 v4, p4

    .local v4, "attrs":Landroid/util/AttributeSet;
    move/from16 v5, p5

    .local v5, "inheritContext":Z
    move/from16 v6, p6

    .local v6, "readAndroidTheme":Z
    move/from16 v7, p7

    .local v7, "readAppTheme":Z
    move/from16 v8, p8

    .local v8, "wrapContext":Z
    move-object v13, v3

    move-object v9, v13

    .line 86
    .local v9, "originalContext":Landroid/content/Context;
    move v13, v5

    if-eqz v13, :cond_0

    move-object v13, v1

    if-eqz v13, :cond_0

    .line 87
    move-object v13, v1

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    move-object v3, v13

    .line 89
    :cond_0
    move v13, v6

    if-nez v13, :cond_1

    move v13, v7

    if-eqz v13, :cond_2

    .line 91
    :cond_1
    move-object v13, v3

    move-object v14, v4

    move v15, v6

    move/from16 v16, v7

    invoke-static/range {v13 .. v16}, Landroidx/appcompat/app/AppCompatViewInflater;->themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;

    move-result-object v13

    move-object v3, v13

    .line 93
    :cond_2
    move v13, v8

    if-eqz v13, :cond_3

    .line 94
    move-object v13, v3

    invoke-static {v13}, Landroidx/appcompat/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v13

    move-object v3, v13

    .line 97
    :cond_3
    const/4 v13, 0x0

    move-object v10, v13

    .line 100
    .local v10, "view":Landroid/view/View;
    move-object v13, v2

    move-object v11, v13

    const/4 v13, -0x1

    move v12, v13

    move-object v13, v11

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :cond_4
    :goto_0
    move v13, v12

    packed-switch v13, :pswitch_data_0

    .line 158
    move-object v13, v0

    move-object v14, v3

    move-object v15, v2

    move-object/from16 v16, v4

    invoke-virtual/range {v13 .. v16}, Landroidx/appcompat/app/AppCompatViewInflater;->createView(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v13

    move-object v10, v13

    .line 161
    :goto_1
    move-object v13, v10

    if-nez v13, :cond_5

    move-object v13, v9

    move-object v14, v3

    if-eq v13, v14, :cond_5

    .line 164
    move-object v13, v0

    move-object v14, v3

    move-object v15, v2

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v16}, Landroidx/appcompat/app/AppCompatViewInflater;->createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v13

    move-object v10, v13

    .line 167
    :cond_5
    move-object v13, v10

    if-eqz v13, :cond_6

    .line 169
    move-object v13, v0

    move-object v14, v10

    move-object v15, v4

    invoke-direct {v13, v14, v15}, Landroidx/appcompat/app/AppCompatViewInflater;->checkOnClickListener(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 172
    :cond_6
    move-object v13, v10

    move-object v0, v13

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatViewInflater;
    return-object v0

    .line 100
    .restart local v0    # "this":Landroidx/appcompat/app/AppCompatViewInflater;
    :sswitch_0
    move-object v13, v11

    const-string/jumbo v14, "TextView"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x0

    move v12, v13

    goto :goto_0

    :sswitch_1
    move-object v13, v11

    const-string/jumbo v14, "ImageView"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    move v12, v13

    goto :goto_0

    :sswitch_2
    move-object v13, v11

    const-string/jumbo v14, "Button"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x2

    move v12, v13

    goto :goto_0

    :sswitch_3
    move-object v13, v11

    const-string/jumbo v14, "EditText"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x3

    move v12, v13

    goto :goto_0

    :sswitch_4
    move-object v13, v11

    const-string/jumbo v14, "Spinner"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x4

    move v12, v13

    goto :goto_0

    :sswitch_5
    move-object v13, v11

    const-string/jumbo v14, "ImageButton"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x5

    move v12, v13

    goto :goto_0

    :sswitch_6
    move-object v13, v11

    const-string/jumbo v14, "CheckBox"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x6

    move v12, v13

    goto/16 :goto_0

    :sswitch_7
    move-object v13, v11

    const-string/jumbo v14, "RadioButton"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x7

    move v12, v13

    goto/16 :goto_0

    :sswitch_8
    move-object v13, v11

    const-string/jumbo v14, "CheckedTextView"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v13, 0x8

    move v12, v13

    goto/16 :goto_0

    :sswitch_9
    move-object v13, v11

    const-string/jumbo v14, "AutoCompleteTextView"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v13, 0x9

    move v12, v13

    goto/16 :goto_0

    :sswitch_a
    move-object v13, v11

    const-string/jumbo v14, "MultiAutoCompleteTextView"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v13, 0xa

    move v12, v13

    goto/16 :goto_0

    :sswitch_b
    move-object v13, v11

    const-string/jumbo v14, "RatingBar"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v13, 0xb

    move v12, v13

    goto/16 :goto_0

    :sswitch_c
    move-object v13, v11

    const-string/jumbo v14, "SeekBar"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v13, 0xc

    move v12, v13

    goto/16 :goto_0

    .line 102
    :pswitch_0
    move-object v13, v0

    move-object v14, v3

    move-object v15, v4

    invoke-virtual {v13, v14, v15}, Landroidx/appcompat/app/AppCompatViewInflater;->createTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v13

    move-object v10, v13

    .line 103
    move-object v13, v0

    move-object v14, v10

    move-object v15, v2

    invoke-direct {v13, v14, v15}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 104
    goto/16 :goto_1

    .line 106
    :pswitch_1
    move-object v13, v0

    move-object v14, v3

    move-object v15, v4

    invoke-virtual {v13, v14, v15}, Landroidx/appcompat/app/AppCompatViewInflater;->createImageView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v13

    move-object v10, v13

    .line 107
    move-object v13, v0

    move-object v14, v10

    move-object v15, v2

    invoke-direct {v13, v14, v15}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 108
    goto/16 :goto_1

    .line 110
    :pswitch_2
    move-object v13, v0

    move-object v14, v3

    move-object v15, v4

    invoke-virtual {v13, v14, v15}, Landroidx/appcompat/app/AppCompatViewInflater;->createButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatButton;

    move-result-object v13

    move-object v10, v13

    .line 111
    move-object v13, v0

    move-object v14, v10

    move-object v15, v2

    invoke-direct {v13, v14, v15}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 112
    goto/16 :goto_1

    .line 114
    :pswitch_3
    move-object v13, v0

    move-object v14, v3

    move-object v15, v4

    invoke-virtual {v13, v14, v15}, Landroidx/appcompat/app/AppCompatViewInflater;->createEditText(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object v13

    move-object v10, v13

    .line 115
    move-object v13, v0

    move-object v14, v10

    move-object v15, v2

    invoke-direct {v13, v14, v15}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 116
    goto/16 :goto_1

    .line 118
    :pswitch_4
    move-object v13, v0

    move-object v14, v3

    move-object v15, v4

    invoke-virtual {v13, v14, v15}, Landroidx/appcompat/app/AppCompatViewInflater;->createSpinner(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatSpinner;

    move-result-object v13

    move-object v10, v13

    .line 119
    move-object v13, v0

    move-object v14, v10

    move-object v15, v2

    invoke-direct {v13, v14, v15}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 120
    goto/16 :goto_1

    .line 122
    :pswitch_5
    move-object v13, v0

    move-object v14, v3

    move-object v15, v4

    invoke-virtual {v13, v14, v15}, Landroidx/appcompat/app/AppCompatViewInflater;->createImageButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatImageButton;

    move-result-object v13

    move-object v10, v13

    .line 123
    move-object v13, v0

    move-object v14, v10

    move-object v15, v2

    invoke-direct {v13, v14, v15}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 124
    goto/16 :goto_1

    .line 126
    :pswitch_6
    move-object v13, v0

    move-object v14, v3

    move-object v15, v4

    invoke-virtual {v13, v14, v15}, Landroidx/appcompat/app/AppCompatViewInflater;->createCheckBox(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v13

    move-object v10, v13

    .line 127
    move-object v13, v0

    move-object v14, v10

    move-object v15, v2

    invoke-direct {v13, v14, v15}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 128
    goto/16 :goto_1

    .line 130
    :pswitch_7
    move-object v13, v0

    move-object v14, v3

    move-object v15, v4

    invoke-virtual {v13, v14, v15}, Landroidx/appcompat/app/AppCompatViewInflater;->createRadioButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatRadioButton;

    move-result-object v13

    move-object v10, v13

    .line 131
    move-object v13, v0

    move-object v14, v10

    move-object v15, v2

    invoke-direct {v13, v14, v15}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 132
    goto/16 :goto_1

    .line 134
    :pswitch_8
    move-object v13, v0

    move-object v14, v3

    move-object v15, v4

    invoke-virtual {v13, v14, v15}, Landroidx/appcompat/app/AppCompatViewInflater;->createCheckedTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatCheckedTextView;

    move-result-object v13

    move-object v10, v13

    .line 135
    move-object v13, v0

    move-object v14, v10

    move-object v15, v2

    invoke-direct {v13, v14, v15}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 136
    goto/16 :goto_1

    .line 138
    :pswitch_9
    move-object v13, v0

    move-object v14, v3

    move-object v15, v4

    invoke-virtual {v13, v14, v15}, Landroidx/appcompat/app/AppCompatViewInflater;->createAutoCompleteTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    move-result-object v13

    move-object v10, v13

    .line 139
    move-object v13, v0

    move-object v14, v10

    move-object v15, v2

    invoke-direct {v13, v14, v15}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 140
    goto/16 :goto_1

    .line 142
    :pswitch_a
    move-object v13, v0

    move-object v14, v3

    move-object v15, v4

    invoke-virtual {v13, v14, v15}, Landroidx/appcompat/app/AppCompatViewInflater;->createMultiAutoCompleteTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;

    move-result-object v13

    move-object v10, v13

    .line 143
    move-object v13, v0

    move-object v14, v10

    move-object v15, v2

    invoke-direct {v13, v14, v15}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 144
    goto/16 :goto_1

    .line 146
    :pswitch_b
    move-object v13, v0

    move-object v14, v3

    move-object v15, v4

    invoke-virtual {v13, v14, v15}, Landroidx/appcompat/app/AppCompatViewInflater;->createRatingBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatRatingBar;

    move-result-object v13

    move-object v10, v13

    .line 147
    move-object v13, v0

    move-object v14, v10

    move-object v15, v2

    invoke-direct {v13, v14, v15}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 148
    goto/16 :goto_1

    .line 150
    :pswitch_c
    move-object v13, v0

    move-object v14, v3

    move-object v15, v4

    invoke-virtual {v13, v14, v15}, Landroidx/appcompat/app/AppCompatViewInflater;->createSeekBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatSeekBar;

    move-result-object v13

    move-object v10, v13

    .line 151
    move-object v13, v0

    move-object v14, v10

    move-object v15, v2

    invoke-direct {v13, v14, v15}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 152
    goto/16 :goto_1

    .line 100
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_b
        -0x56c015e7 -> :sswitch_8
        -0x503aa7ad -> :sswitch_a
        -0x37f7066e -> :sswitch_0
        -0x37e04bb3 -> :sswitch_5
        -0x274065a5 -> :sswitch_c
        -0x1440b607 -> :sswitch_4
        0x2e46a6ed -> :sswitch_7
        0x431b5280 -> :sswitch_1
        0x5445f9ba -> :sswitch_9
        0x5f7507c3 -> :sswitch_6
        0x63577677 -> :sswitch_3
        0x77471352 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
