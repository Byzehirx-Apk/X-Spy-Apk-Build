.class public Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;
.super Ljava/lang/Object;
.source "CircularRevealWidget.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/circularreveal/CircularRevealWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CircularRevealEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final CIRCULAR_REVEAL:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator",
            "<",
            "Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 208
    new-instance v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;-><init>()V

    sput-object v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->CIRCULAR_REVEAL:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 209
    move-object v1, v0

    new-instance v2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(Lcom/google/android/material/circularreveal/CircularRevealWidget$1;)V

    iput-object v2, v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    return-void
.end method


# virtual methods
.method public evaluate(FLcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    .locals 10

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;
    move v1, p1

    .local v1, "fraction":F
    move-object v2, p2

    .local v2, "startValue":Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    move-object v3, p3

    .local v3, "endValue":Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-object v5, v2

    iget v5, v5, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    move-object v6, v3

    iget v6, v6, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    move v7, v1

    .line 214
    invoke-static {v5, v6, v7}, Lcom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result v5

    move-object v6, v2

    iget v6, v6, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    move-object v7, v3

    iget v7, v7, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    move v8, v1

    .line 215
    invoke-static {v6, v7, v8}, Lcom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result v6

    move-object v7, v2

    iget v7, v7, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    move-object v8, v3

    iget v8, v8, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    move v9, v1

    .line 216
    invoke-static {v7, v8, v9}, Lcom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result v7

    .line 213
    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->set(FFF)V

    .line 217
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-object v0, v4

    .end local v0    # "this":Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;
    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    check-cast v6, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-object v7, v3

    check-cast v7, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->evaluate(FLcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;
    return-object v0
.end method
