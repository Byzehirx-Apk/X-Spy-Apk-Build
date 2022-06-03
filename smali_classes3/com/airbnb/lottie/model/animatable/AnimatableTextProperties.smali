.class public Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
.super Ljava/lang/Object;
.source "AnimatableTextProperties.java"


# instance fields
.field public final color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final stroke:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final strokeWidth:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final tracking:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V
    .locals 7
    .param p1    # Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    move-object v1, p1

    .local v1, "color":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    move-object v2, p2

    .local v2, "stroke":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    move-object v3, p3

    .local v3, "strokeWidth":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object v4, p4

    .local v4, "tracking":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 15
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 16
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->stroke:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 17
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->strokeWidth:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 18
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->tracking:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 19
    return-void
.end method
