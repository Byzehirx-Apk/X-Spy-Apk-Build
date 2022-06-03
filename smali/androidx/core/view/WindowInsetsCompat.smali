.class public Landroidx/core/view/WindowInsetsCompat;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# instance fields
.field private final mInsets:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/WindowInsetsCompat;
    move-object v1, p1

    .local v1, "src":Landroidx/core/view/WindowInsetsCompat;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 45
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_1

    .line 46
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    iput-object v3, v2, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    .line 50
    :goto_1
    return-void

    .line 46
    :cond_0
    new-instance v3, Landroid/view/WindowInsets;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    iget-object v5, v5, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v5, Landroid/view/WindowInsets;

    invoke-direct {v4, v5}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    goto :goto_0

    .line 48
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    goto :goto_1
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/WindowInsetsCompat;
    move-object v1, p1

    .local v1, "insets":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 36
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    .line 37
    return-void
.end method

.method static unwrap(Landroidx/core/view/WindowInsetsCompat;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "insets":Landroidx/core/view/WindowInsetsCompat;
    move-object v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "insets":Landroidx/core/view/WindowInsetsCompat;
    return-object v0

    .restart local v0    # "insets":Landroidx/core/view/WindowInsetsCompat;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    goto :goto_0
.end method

.method static wrap(Ljava/lang/Object;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "insets":Ljava/lang/Object;
    move-object v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "insets":Ljava/lang/Object;
    return-object v0

    .restart local v0    # "insets":Ljava/lang/Object;
    :cond_0
    new-instance v1, Landroidx/core/view/WindowInsetsCompat;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/core/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public consumeDisplayCutout()Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/WindowInsetsCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 369
    new-instance v1, Landroidx/core/view/WindowInsetsCompat;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v3, Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/core/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 371
    .end local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :cond_0
    move-object v1, v0

    move-object v0, v1

    goto :goto_0
.end method

.method public consumeStableInsets()Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/WindowInsetsCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 341
    new-instance v1, Landroidx/core/view/WindowInsetsCompat;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v3, Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/core/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 343
    .end local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/WindowInsetsCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 196
    new-instance v1, Landroidx/core/view/WindowInsetsCompat;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v3, Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/core/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 198
    .end local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/WindowInsetsCompat;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 378
    const/4 v3, 0x1

    move v0, v3

    .line 384
    .end local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :goto_0
    return v0

    .line 380
    .restart local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 381
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 383
    :cond_2
    move-object v3, v1

    check-cast v3, Landroidx/core/view/WindowInsetsCompat;

    move-object v2, v3

    .line 384
    .local v2, "other":Landroidx/core/view/WindowInsetsCompat;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    if-nez v3, :cond_4

    move-object v3, v2

    iget-object v3, v3, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    move-object v4, v2

    iget-object v4, v4, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1
.end method

.method public getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/WindowInsetsCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 356
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/DisplayCutoutCompat;->wrap(Ljava/lang/Object;)Landroidx/core/view/DisplayCutoutCompat;

    move-result-object v1

    move-object v0, v1

    .line 358
    .end local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getStableInsetBottom()I
    .locals 3

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/WindowInsetsCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 309
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    move v0, v1

    .line 311
    .end local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getStableInsetLeft()I
    .locals 3

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/WindowInsetsCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 270
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    move v0, v1

    .line 272
    .end local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getStableInsetRight()I
    .locals 3

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/WindowInsetsCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 289
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v1

    move v0, v1

    .line 291
    .end local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getStableInsetTop()I
    .locals 3

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/WindowInsetsCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 251
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    move v0, v1

    .line 253
    .end local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getSystemWindowInsetBottom()I
    .locals 3

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/WindowInsetsCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 114
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    move v0, v1

    .line 116
    .end local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getSystemWindowInsetLeft()I
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/WindowInsetsCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 63
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    move v0, v1

    .line 65
    .end local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getSystemWindowInsetRight()I
    .locals 3

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/WindowInsetsCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 97
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    move v0, v1

    .line 99
    .end local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getSystemWindowInsetTop()I
    .locals 3

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/WindowInsetsCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 80
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    move v0, v1

    .line 82
    .end local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public hasInsets()Z
    .locals 3

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/WindowInsetsCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 144
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->hasInsets()Z

    move-result v1

    move v0, v1

    .line 146
    .end local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public hasStableInsets()Z
    .locals 3

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/WindowInsetsCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 328
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->hasStableInsets()Z

    move-result v1

    move v0, v1

    .line 330
    .end local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public hasSystemWindowInsets()Z
    .locals 3

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/WindowInsetsCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 131
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->hasSystemWindowInsets()Z

    move-result v1

    move v0, v1

    .line 133
    .end local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/WindowInsetsCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    return v0

    .restart local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public isConsumed()Z
    .locals 3

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/WindowInsetsCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 165
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v1

    move v0, v1

    .line 167
    .end local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isRound()Z
    .locals 3

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/WindowInsetsCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 183
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->isRound()Z

    move-result v1

    move v0, v1

    .line 185
    .end local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public replaceSystemWindowInsets(IIII)Landroidx/core/view/WindowInsetsCompat;
    .locals 13

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/WindowInsetsCompat;
    move v1, p1

    .local v1, "left":I
    move v2, p2

    .local v2, "top":I
    move/from16 v3, p3

    .local v3, "right":I
    move/from16 v4, p4

    .local v4, "bottom":I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x14

    if-lt v5, v6, :cond_0

    .line 214
    new-instance v5, Landroidx/core/view/WindowInsetsCompat;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v7, Landroid/view/WindowInsets;

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    .line 215
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/core/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v5

    .line 217
    .end local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :cond_0
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method

.method public replaceSystemWindowInsets(Landroid/graphics/Rect;)Landroidx/core/view/WindowInsetsCompat;
    .locals 7

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/WindowInsetsCompat;
    move-object v1, p1

    .local v1, "systemWindowInsets":Landroid/graphics/Rect;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 231
    new-instance v2, Landroidx/core/view/WindowInsetsCompat;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    check-cast v4, Landroid/view/WindowInsets;

    move-object v5, v1

    .line 232
    invoke-virtual {v4, v5}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/core/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v2

    .line 234
    .end local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/view/WindowInsetsCompat;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method
