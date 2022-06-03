.class public Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
.super Ljava/lang/Object;
.source "FabTransformationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transformation/FabTransformationBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FabTransformationSpec"
.end annotation


# instance fields
.field public positioning:Lcom/google/android/material/animation/Positioning;

.field public timings:Lcom/google/android/material/animation/MotionSpec;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 709
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
