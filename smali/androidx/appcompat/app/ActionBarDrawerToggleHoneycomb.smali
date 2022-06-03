.class Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggleHoneycomb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarDrawerToggleHC"

.field private static final THEME_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x101030b

    aput v3, v1, v2

    sput-object v0, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb;->THEME_ATTRS:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 141
    return-void
.end method

.method public static getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "activity":Landroid/app/Activity;
    move-object v3, v0

    sget-object v4, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb;->THEME_ATTRS:[I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    move-object v1, v3

    .line 93
    .local v1, "a":Landroid/content/res/TypedArray;
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 94
    .local v2, "result":Landroid/graphics/drawable/Drawable;
    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "activity":Landroid/app/Activity;
    return-object v0
.end method

.method public static setActionBarDescription(Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;Landroid/app/Activity;I)Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    .locals 11

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "info":Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move v2, p2

    .local v2, "contentDescRes":I
    move-object v4, v0

    if-nez v4, :cond_0

    .line 73
    new-instance v4, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    invoke-direct {v5, v6}, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;-><init>(Landroid/app/Activity;)V

    move-object v0, v4

    .line 75
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_1

    .line 77
    move-object v4, v1

    :try_start_0
    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    move-object v3, v4

    .line 78
    .local v3, "actionBar":Landroid/app/ActionBar;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;

    move-object v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 79
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-gt v4, v5, :cond_1

    .line 82
    move-object v4, v3

    move-object v5, v3

    invoke-virtual {v5}, Landroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 88
    .end local v3    # "actionBar":Landroid/app/ActionBar;
    :cond_1
    :goto_0
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "info":Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    return-object v0

    .line 84
    .restart local v0    # "info":Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 85
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ActionBarDrawerToggleHC"

    const-string/jumbo v5, "Couldn\'t set content description via JB-MR2 API"

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    goto :goto_0
.end method

.method public static setActionBarUpIndicator(Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    .locals 12

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "info":Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object v2, p2

    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    move v3, p3

    .local v3, "contentDescRes":I
    new-instance v5, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    invoke-direct {v6, v7}, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;-><init>(Landroid/app/Activity;)V

    move-object v0, v5

    .line 54
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_0

    .line 56
    move-object v5, v1

    :try_start_0
    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    move-object v4, v5

    .line 57
    .local v4, "actionBar":Landroid/app/ActionBar;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    move-object v6, v4

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v2

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 58
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;

    move-object v6, v4

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move v10, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 61
    .line 67
    .end local v4    # "actionBar":Landroid/app/ActionBar;
    :goto_0
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "info":Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    return-object v0

    .line 59
    .restart local v0    # "info":Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 60
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ActionBarDrawerToggleHC"

    const-string/jumbo v6, "Couldn\'t set home-as-up indicator via JB-MR2 API"

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    .line 61
    goto :goto_0

    .line 62
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;

    if-eqz v5, :cond_1

    .line 63
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 65
    :cond_1
    const-string/jumbo v5, "ActionBarDrawerToggleHC"

    const-string/jumbo v6, "Couldn\'t set home-as-up indicator"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0
.end method
