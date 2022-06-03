.class public Lcom/airbnb/lottie/FontAssetDelegate;
.super Ljava/lang/Object;
.source "FontAssetDelegate.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/FontAssetDelegate;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetchFont(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/FontAssetDelegate;
    move-object v1, p1

    .local v1, "fontFamily":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/airbnb/lottie/FontAssetDelegate;
    return-object v0
.end method

.method public getFontPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/FontAssetDelegate;
    move-object v1, p1

    .local v1, "fontFamily":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/airbnb/lottie/FontAssetDelegate;
    return-object v0
.end method
