.class public final Landroidx/core/view/MenuItemCompat;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/MenuItemCompat$OnActionExpandListener;
    }
.end annotation


# static fields
.field public static final SHOW_AS_ACTION_ALWAYS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_AS_ACTION_IF_ROOM:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_AS_ACTION_NEVER:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_AS_ACTION_WITH_TEXT:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MenuItemCompat"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 557
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/MenuItemCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collapseActionView(Landroid/view/MenuItem;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "item":Landroid/view/MenuItem;
    move-object v1, v0

    invoke-interface {v1}, Landroid/view/MenuItem;->collapseActionView()Z

    move-result v1

    move v0, v1

    .end local v0    # "item":Landroid/view/MenuItem;
    return v0
.end method

.method public static expandActionView(Landroid/view/MenuItem;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "item":Landroid/view/MenuItem;
    move-object v1, v0

    invoke-interface {v1}, Landroid/view/MenuItem;->expandActionView()Z

    move-result v1

    move v0, v1

    .end local v0    # "item":Landroid/view/MenuItem;
    return v0
.end method

.method public static getActionProvider(Landroid/view/MenuItem;)Landroidx/core/view/ActionProvider;
    .locals 3

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "item":Landroid/view/MenuItem;
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v1, :cond_0

    .line 225
    move-object v1, v0

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->getSupportActionProvider()Landroidx/core/view/ActionProvider;

    move-result-object v1

    move-object v0, v1

    .line 230
    .end local v0    # "item":Landroid/view/MenuItem;
    :goto_0
    return-object v0

    .line 229
    .restart local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    const-string/jumbo v1, "MenuItemCompat"

    const-string/jumbo v2, "getActionProvider: item does not implement SupportMenuItem; returning null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 230
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "item":Landroid/view/MenuItem;
    move-object v1, v0

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "item":Landroid/view/MenuItem;
    return-object v0
.end method

.method public static getAlphabeticModifiers(Landroid/view/MenuItem;)I
    .locals 3

    .prologue
    .line 481
    move-object v0, p0

    .local v0, "item":Landroid/view/MenuItem;
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v1, :cond_0

    .line 482
    move-object v1, v0

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->getAlphabeticModifiers()I

    move-result v1

    move v0, v1

    .line 487
    .end local v0    # "item":Landroid/view/MenuItem;
    :goto_0
    return v0

    .line 484
    .restart local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 485
    move-object v1, v0

    invoke-interface {v1}, Landroid/view/MenuItem;->getAlphabeticModifiers()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 487
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static getContentDescription(Landroid/view/MenuItem;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "item":Landroid/view/MenuItem;
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v1, :cond_0

    .line 336
    move-object v1, v0

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .line 341
    .end local v0    # "item":Landroid/view/MenuItem;
    :goto_0
    return-object v0

    .line 338
    .restart local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 339
    move-object v1, v0

    invoke-interface {v1}, Landroid/view/MenuItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 341
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getIconTintList(Landroid/view/MenuItem;)Landroid/content/res/ColorStateList;
    .locals 3

    .prologue
    .line 515
    move-object v0, p0

    .local v0, "item":Landroid/view/MenuItem;
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v1, :cond_0

    .line 516
    move-object v1, v0

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    .line 521
    .end local v0    # "item":Landroid/view/MenuItem;
    :goto_0
    return-object v0

    .line 518
    .restart local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 519
    move-object v1, v0

    invoke-interface {v1}, Landroid/view/MenuItem;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 521
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getIconTintMode(Landroid/view/MenuItem;)Landroid/graphics/PorterDuff$Mode;
    .locals 3

    .prologue
    .line 548
    move-object v0, p0

    .local v0, "item":Landroid/view/MenuItem;
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v1, :cond_0

    .line 549
    move-object v1, v0

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    move-object v0, v1

    .line 554
    .end local v0    # "item":Landroid/view/MenuItem;
    :goto_0
    return-object v0

    .line 551
    .restart local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 552
    move-object v1, v0

    invoke-interface {v1}, Landroid/view/MenuItem;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 554
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getNumericModifiers(Landroid/view/MenuItem;)I
    .locals 3

    .prologue
    .line 436
    move-object v0, p0

    .local v0, "item":Landroid/view/MenuItem;
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v1, :cond_0

    .line 437
    move-object v1, v0

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->getNumericModifiers()I

    move-result v1

    move v0, v1

    .line 442
    .end local v0    # "item":Landroid/view/MenuItem;
    :goto_0
    return v0

    .line 439
    .restart local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 440
    move-object v1, v0

    invoke-interface {v1}, Landroid/view/MenuItem;->getNumericModifiers()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 442
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static getTooltipText(Landroid/view/MenuItem;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "item":Landroid/view/MenuItem;
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v1, :cond_0

    .line 365
    move-object v1, v0

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .line 370
    .end local v0    # "item":Landroid/view/MenuItem;
    :goto_0
    return-object v0

    .line 367
    .restart local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 368
    move-object v1, v0

    invoke-interface {v1}, Landroid/view/MenuItem;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 370
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static isActionViewExpanded(Landroid/view/MenuItem;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "item":Landroid/view/MenuItem;
    move-object v1, v0

    invoke-interface {v1}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v1

    move v0, v1

    .end local v0    # "item":Landroid/view/MenuItem;
    return v0
.end method

.method public static setActionProvider(Landroid/view/MenuItem;Landroidx/core/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "item":Landroid/view/MenuItem;
    move-object v1, p1

    .local v1, "provider":Landroidx/core/view/ActionProvider;
    move-object v2, v0

    instance-of v2, v2, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v2, :cond_0

    .line 208
    move-object v2, v0

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportMenuItem;->setSupportActionProvider(Landroidx/core/view/ActionProvider;)Landroidx/core/internal/view/SupportMenuItem;

    move-result-object v2

    move-object v0, v2

    .line 212
    .end local v0    # "item":Landroid/view/MenuItem;
    :goto_0
    return-object v0

    .line 211
    .restart local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    const-string/jumbo v2, "MenuItemCompat"

    const-string/jumbo v3, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 212
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public static setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "item":Landroid/view/MenuItem;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move v3, v1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "item":Landroid/view/MenuItem;
    return-object v0
.end method

.method public static setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "item":Landroid/view/MenuItem;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "item":Landroid/view/MenuItem;
    return-object v0
.end method

.method public static setAlphabeticShortcut(Landroid/view/MenuItem;CI)V
    .locals 6

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "item":Landroid/view/MenuItem;
    move v1, p1

    .local v1, "alphaChar":C
    move v2, p2

    .local v2, "alphaModifiers":I
    move-object v3, v0

    instance-of v3, v3, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v3, :cond_1

    .line 464
    move-object v3, v0

    check-cast v3, Landroidx/core/internal/view/SupportMenuItem;

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroidx/core/internal/view/SupportMenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    move-result-object v3

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 466
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    move-result-object v3

    goto :goto_0
.end method

.method public static setContentDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "item":Landroid/view/MenuItem;
    move-object v1, p1

    .local v1, "contentDescription":Ljava/lang/CharSequence;
    move-object v2, v0

    instance-of v2, v2, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v2, :cond_1

    .line 323
    move-object v2, v0

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportMenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    move-result-object v2

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 325
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    goto :goto_0
.end method

.method public static setIconTintList(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "item":Landroid/view/MenuItem;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    instance-of v2, v2, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v2, :cond_1

    .line 504
    move-object v2, v0

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportMenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    move-result-object v2

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 506
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    move-result-object v2

    goto :goto_0
.end method

.method public static setIconTintMode(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V
    .locals 4

    .prologue
    .line 534
    move-object v0, p0

    .local v0, "item":Landroid/view/MenuItem;
    move-object v1, p1

    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    instance-of v2, v2, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v2, :cond_1

    .line 535
    move-object v2, v0

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportMenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    move-result-object v2

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 537
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    move-result-object v2

    goto :goto_0
.end method

.method public static setNumericShortcut(Landroid/view/MenuItem;CI)V
    .locals 6

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "item":Landroid/view/MenuItem;
    move v1, p1

    .local v1, "numericChar":C
    move v2, p2

    .local v2, "numericModifiers":I
    move-object v3, v0

    instance-of v3, v3, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v3, :cond_1

    .line 419
    move-object v3, v0

    check-cast v3, Landroidx/core/internal/view/SupportMenuItem;

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroidx/core/internal/view/SupportMenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    move-result-object v3

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 421
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroid/view/MenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    move-result-object v3

    goto :goto_0
.end method

.method public static setOnActionExpandListener(Landroid/view/MenuItem;Landroidx/core/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "item":Landroid/view/MenuItem;
    move-object v1, p1

    .local v1, "listener":Landroidx/core/view/MenuItemCompat$OnActionExpandListener;
    move-object v2, v0

    new-instance v3, Landroidx/core/view/MenuItemCompat$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/core/view/MenuItemCompat$1;-><init>(Landroidx/core/view/MenuItemCompat$OnActionExpandListener;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "item":Landroid/view/MenuItem;
    return-object v0
.end method

.method public static setShortcut(Landroid/view/MenuItem;CCII)V
    .locals 10

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "item":Landroid/view/MenuItem;
    move v1, p1

    .local v1, "numericChar":C
    move v2, p2

    .local v2, "alphaChar":C
    move v3, p3

    .local v3, "numericModifiers":I
    move v4, p4

    .local v4, "alphaModifiers":I
    move-object v5, v0

    instance-of v5, v5, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v5, :cond_1

    .line 398
    move-object v5, v0

    check-cast v5, Landroidx/core/internal/view/SupportMenuItem;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Landroidx/core/internal/view/SupportMenuItem;->setShortcut(CCII)Landroid/view/MenuItem;

    move-result-object v5

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_0

    .line 401
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/view/MenuItem;->setShortcut(CCII)Landroid/view/MenuItem;

    move-result-object v5

    goto :goto_0
.end method

.method public static setShowAsAction(Landroid/view/MenuItem;I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "item":Landroid/view/MenuItem;
    move v1, p1

    .local v1, "actionEnum":I
    move-object v2, v0

    move v3, v1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 136
    return-void
.end method

.method public static setTooltipText(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "item":Landroid/view/MenuItem;
    move-object v1, p1

    .local v1, "tooltipText":Ljava/lang/CharSequence;
    move-object v2, v0

    instance-of v2, v2, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v2, :cond_1

    .line 352
    move-object v2, v0

    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportMenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    move-result-object v2

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 354
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    goto :goto_0
.end method
