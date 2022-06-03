.class public Lcom/airbnb/lottie/animation/LPaint;
.super Landroid/graphics/Paint;
.source "LPaint.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/LPaint;
    move-object v1, v0

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/LPaint;
    move v1, p1

    .local v1, "flags":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 22
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 8

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/LPaint;
    move v1, p1

    .local v1, "flags":I
    move-object v2, p2

    .local v2, "porterDuffMode":Landroid/graphics/PorterDuff$Mode;
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 31
    move-object v3, v0

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/animation/LPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-result-object v3

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/graphics/PorterDuff$Mode;)V
    .locals 7

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/LPaint;
    move-object v1, p1

    .local v1, "porterDuffMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 26
    move-object v2, v0

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/animation/LPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-result-object v2

    .line 27
    return-void
.end method


# virtual methods
.method public setTextLocales(Landroid/os/LocaleList;)V
    .locals 0
    .param p1, "locales"    # Landroid/os/LocaleList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    return-void
.end method
