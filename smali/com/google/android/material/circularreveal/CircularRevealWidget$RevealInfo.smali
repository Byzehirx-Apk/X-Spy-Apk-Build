.class public Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
.super Ljava/lang/Object;
.source "CircularRevealWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/circularreveal/CircularRevealWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RevealInfo"
.end annotation


# static fields
.field public static final INVALID_RADIUS:F = 3.4028235E38f


# instance fields
.field public centerX:F

.field public centerY:F

.field public radius:F


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 6

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    move v1, p1

    .local v1, "centerX":F
    move v2, p2

    .local v2, "centerY":F
    move v3, p3

    .local v3, "radius":F
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 147
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    .line 148
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    .line 149
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 150
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/circularreveal/CircularRevealWidget$1;)V
    .locals 3

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    move-object v1, p1

    .local v1, "x0":Lcom/google/android/material/circularreveal/CircularRevealWidget$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V
    .locals 6

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    move-object v1, p1

    .local v1, "other":Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    move-object v4, v1

    iget v4, v4, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    move-object v5, v1

    iget v5, v5, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    .line 154
    return-void
.end method


# virtual methods
.method public isInvalid()Z
    .locals 3

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public set(FFF)V
    .locals 6

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    move v1, p1

    .local v1, "centerX":F
    move v2, p2

    .local v2, "centerY":F
    move v3, p3

    .local v3, "radius":F
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    .line 158
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    .line 159
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 160
    return-void
.end method

.method public set(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V
    .locals 6

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    move-object v1, p1

    .local v1, "other":Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    move-object v4, v1

    iget v4, v4, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    move-object v5, v1

    iget v5, v5, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->set(FFF)V

    .line 164
    return-void
.end method
