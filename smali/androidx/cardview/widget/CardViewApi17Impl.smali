.class Landroidx/cardview/widget/CardViewApi17Impl;
.super Landroidx/cardview/widget/CardViewBaseImpl;
.source "CardViewApi17Impl.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x11
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewApi17Impl;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/cardview/widget/CardViewBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public initStatic()V
    .locals 5

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Landroidx/cardview/widget/CardViewApi17Impl;
    new-instance v1, Landroidx/cardview/widget/CardViewApi17Impl$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/cardview/widget/CardViewApi17Impl$1;-><init>(Landroidx/cardview/widget/CardViewApi17Impl;)V

    sput-object v1, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->sRoundRectHelper:Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    .line 37
    return-void
.end method
