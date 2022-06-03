.class Lcom/google/android/material/internal/StateListAnimator$Tuple;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Tuple"
.end annotation


# instance fields
.field final animator:Landroid/animation/ValueAnimator;

.field final specs:[I


# direct methods
.method constructor <init>([ILandroid/animation/ValueAnimator;)V
    .locals 5

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/StateListAnimator$Tuple;
    move-object v1, p1

    .local v1, "specs":[I
    move-object v2, p2

    .local v2, "animator":Landroid/animation/ValueAnimator;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 119
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/material/internal/StateListAnimator$Tuple;->specs:[I

    .line 120
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/material/internal/StateListAnimator$Tuple;->animator:Landroid/animation/ValueAnimator;

    .line 121
    return-void
.end method
