.class final Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
.super Ljava/lang/Object;
.source "BaseStrokeContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/animation/content/BaseStrokeContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PathGroup"
.end annotation


# instance fields
.field private final paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/PathContent;",
            ">;"
        }
    .end annotation
.end field

.field private final trimPath:Lcom/airbnb/lottie/animation/content/TrimPathContent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/animation/content/TrimPathContent;)V
    .locals 6
    .param p1    # Lcom/airbnb/lottie/animation/content/TrimPathContent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    move-object v1, p1

    .local v1, "trimPath":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 332
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->paths:Ljava/util/List;

    .line 336
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->trimPath:Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 337
    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/animation/content/TrimPathContent;Lcom/airbnb/lottie/animation/content/BaseStrokeContent$1;)V
    .locals 5

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    move-object v1, p1

    .local v1, "x0":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    move-object v2, p2

    .local v2, "x1":Lcom/airbnb/lottie/animation/content/BaseStrokeContent$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;-><init>(Lcom/airbnb/lottie/animation/content/TrimPathContent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;
    .locals 2

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "x0":Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->paths:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "x0":Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;
    .locals 2

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "x0":Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->trimPath:Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-object v0, v1

    .end local v0    # "x0":Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    return-object v0
.end method
