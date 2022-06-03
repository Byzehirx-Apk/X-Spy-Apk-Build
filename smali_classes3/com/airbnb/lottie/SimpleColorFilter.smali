.class public Lcom/airbnb/lottie/SimpleColorFilter;
.super Landroid/graphics/PorterDuffColorFilter;
.source "SimpleColorFilter.java"


# direct methods
.method public constructor <init>(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/SimpleColorFilter;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    move v3, v1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 18
    return-void
.end method
