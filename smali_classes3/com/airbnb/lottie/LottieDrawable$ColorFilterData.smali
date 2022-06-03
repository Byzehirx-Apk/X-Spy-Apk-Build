.class Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;
.super Ljava/lang/Object;
.source "LottieDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorFilterData"
.end annotation


# instance fields
.field final colorFilter:Landroid/graphics/ColorFilter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final contentName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final layerName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1058
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;
    move-object v1, p1

    .local v1, "layerName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "contentName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "colorFilter":Landroid/graphics/ColorFilter;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1059
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->layerName:Ljava/lang/String;

    .line 1060
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->contentName:Ljava/lang/String;

    .line 1061
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->colorFilter:Landroid/graphics/ColorFilter;

    .line 1062
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 1079
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 1080
    const/4 v3, 0x1

    move v0, v3

    .line 1089
    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;
    :goto_0
    return v0

    .line 1083
    .restart local v0    # "this":Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;

    if-nez v3, :cond_1

    .line 1084
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 1087
    :cond_1
    move-object v3, v1

    check-cast v3, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;

    move-object v2, v3

    .line 1089
    .local v2, "other":Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->hashCode()I

    move-result v3

    move-object v4, v2

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->colorFilter:Landroid/graphics/ColorFilter;

    move-object v4, v2

    iget-object v4, v4, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->colorFilter:Landroid/graphics/ColorFilter;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 1066
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;
    const/16 v2, 0x11

    move v1, v2

    .line 1067
    .local v1, "hashCode":I
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->layerName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1068
    move v2, v1

    const/16 v3, 0x1f

    mul-int/lit8 v2, v2, 0x1f

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->layerName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    mul-int/2addr v2, v3

    move v1, v2

    .line 1071
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->contentName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1072
    move v2, v1

    const/16 v3, 0x1f

    mul-int/lit8 v2, v2, 0x1f

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->contentName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    mul-int/2addr v2, v3

    move v1, v2

    .line 1074
    :cond_1
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;
    return v0
.end method
