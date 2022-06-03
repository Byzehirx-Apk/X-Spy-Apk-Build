.class Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FloatFrameData;
.super Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData;
.source "SpriteAnimatorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FloatFrameData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;


# direct methods
.method public constructor <init>(Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;[FLandroid/util/Property;[Ljava/lang/Float;)V
    .locals 10

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FloatFrameData;
    move-object v1, p1

    .local v1, "this$0":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    move-object v2, p2

    .local v2, "fractions":[F
    move-object v3, p3

    .local v3, "property":Landroid/util/Property;
    move-object v4, p4

    .local v4, "values":[Ljava/lang/Float;
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FloatFrameData;->this$0:Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    .line 54
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData;-><init>(Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;[FLandroid/util/Property;[Ljava/lang/Object;)V

    .line 55
    return-void
.end method
