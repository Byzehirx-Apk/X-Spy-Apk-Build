.class public Lcom/airbnb/lottie/LottieImageAsset;
.super Ljava/lang/Object;
.source "LottieImageAsset.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final dirName:Ljava/lang/String;

.field private final fileName:Ljava/lang/String;

.field private final height:I

.field private final id:Ljava/lang/String;

.field private final width:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieImageAsset;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "id":Ljava/lang/String;
    move-object v4, p4

    .local v4, "fileName":Ljava/lang/String;
    move-object v5, p5

    .local v5, "dirName":Ljava/lang/String;
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 21
    move-object v6, v0

    move v7, v1

    iput v7, v6, Lcom/airbnb/lottie/LottieImageAsset;->width:I

    .line 22
    move-object v6, v0

    move v7, v2

    iput v7, v6, Lcom/airbnb/lottie/LottieImageAsset;->height:I

    .line 23
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/airbnb/lottie/LottieImageAsset;->id:Ljava/lang/String;

    .line 24
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/airbnb/lottie/LottieImageAsset;->fileName:Ljava/lang/String;

    .line 25
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/airbnb/lottie/LottieImageAsset;->dirName:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieImageAsset;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieImageAsset;->bitmap:Landroid/graphics/Bitmap;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieImageAsset;
    return-object v0
.end method

.method public getDirName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieImageAsset;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieImageAsset;->dirName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieImageAsset;
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieImageAsset;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieImageAsset;->fileName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieImageAsset;
    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieImageAsset;
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/LottieImageAsset;->height:I

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieImageAsset;
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieImageAsset;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/LottieImageAsset;->id:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieImageAsset;
    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieImageAsset;
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/LottieImageAsset;->width:I

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/LottieImageAsset;
    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieImageAsset;
    move-object v1, p1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/LottieImageAsset;->bitmap:Landroid/graphics/Bitmap;

    .line 60
    return-void
.end method
