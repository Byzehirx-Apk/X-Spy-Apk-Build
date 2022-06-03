.class Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData;
.super Ljava/lang/Object;
.source "SpriteAnimatorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FrameData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field fractions:[F

.field property:Landroid/util/Property;

.field final synthetic this$0:Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

.field values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;[FLandroid/util/Property;[Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Landroid/util/Property;",
            "[TT;)V"
        }
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData;, "Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData<TT;>;"
    move-object v1, p1

    .local v1, "this$0":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    move-object v2, p2

    .local v2, "fractions":[F
    move-object v3, p3

    .local v3, "property":Landroid/util/Property;
    move-object v4, p4

    .local v4, "values":[Ljava/lang/Object;, "[TT;"
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData;->this$0:Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData;->fractions:[F

    .line 35
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData;->property:Landroid/util/Property;

    .line 36
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData;->values:[Ljava/lang/Object;

    .line 37
    return-void
.end method
