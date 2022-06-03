.class public Lcom/airbnb/lottie/model/content/Mask;
.super Ljava/lang/Object;
.source "Mask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    }
.end annotation


# instance fields
.field private final inverted:Z

.field private final maskMode:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

.field private final maskPath:Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

.field private final opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/content/Mask$MaskMode;Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Z)V
    .locals 7

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/Mask;
    move-object v1, p1

    .local v1, "maskMode":Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    move-object v2, p2

    .local v2, "maskPath":Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;
    move-object v3, p3

    .local v3, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    move v4, p4

    .local v4, "inverted":Z
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 19
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/airbnb/lottie/model/content/Mask;->maskMode:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 20
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/airbnb/lottie/model/content/Mask;->maskPath:Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    .line 21
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/airbnb/lottie/model/content/Mask;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 22
    move-object v5, v0

    move v6, v4

    iput-boolean v6, v5, Lcom/airbnb/lottie/model/content/Mask;->inverted:Z

    .line 23
    return-void
.end method


# virtual methods
.method public getMaskMode()Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/Mask;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/Mask;->maskMode:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/Mask;
    return-object v0
.end method

.method public getMaskPath()Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/Mask;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/Mask;->maskPath:Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/Mask;
    return-object v0
.end method

.method public getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/Mask;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/Mask;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/Mask;
    return-object v0
.end method

.method public isInverted()Z
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/Mask;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/model/content/Mask;->inverted:Z

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/Mask;
    return v0
.end method
