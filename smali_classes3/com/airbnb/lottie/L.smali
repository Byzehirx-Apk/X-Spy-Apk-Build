.class public Lcom/airbnb/lottie/L;
.super Ljava/lang/Object;
.source "L.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static DBG:Z = false

.field private static final MAX_DEPTH:I = 0x14

.field public static final TAG:Ljava/lang/String; = "LOTTIE"

.field private static depthPastMaxDepth:I

.field private static sections:[Ljava/lang/String;

.field private static startTimeNs:[J

.field private static traceDepth:I

.field private static traceEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/airbnb/lottie/L;->DBG:Z

    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    .line 16
    const/4 v0, 0x0

    sput v0, Lcom/airbnb/lottie/L;->traceDepth:I

    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/L;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 31
    move-object v1, p0

    .local v1, "section":Ljava/lang/String;
    sget-boolean v2, Lcom/airbnb/lottie/L;->traceEnabled:Z

    if-nez v2, :cond_0

    .line 32
    .line 42
    :goto_0
    return-void

    .line 34
    :cond_0
    sget v2, Lcom/airbnb/lottie/L;->traceDepth:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_1

    .line 35
    sget v2, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    sget-object v2, Lcom/airbnb/lottie/L;->sections:[Ljava/lang/String;

    sget v3, Lcom/airbnb/lottie/L;->traceDepth:I

    move-object v4, v1

    aput-object v4, v2, v3

    .line 39
    sget-object v2, Lcom/airbnb/lottie/L;->startTimeNs:[J

    sget v3, Lcom/airbnb/lottie/L;->traceDepth:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 40
    move-object v2, v1

    invoke-static {v2}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 41
    sget v2, Lcom/airbnb/lottie/L;->traceDepth:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/airbnb/lottie/L;->traceDepth:I

    .line 42
    goto :goto_0
.end method

.method public static endSection(Ljava/lang/String;)F
    .locals 8

    .prologue
    .line 45
    move-object v1, p0

    .local v1, "section":Ljava/lang/String;
    sget v2, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    if-lez v2, :cond_0

    .line 46
    sget v2, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    .line 47
    const/4 v2, 0x0

    move v1, v2

    .line 61
    .end local v1    # "section":Ljava/lang/String;
    :goto_0
    return v1

    .line 49
    .restart local v1    # "section":Ljava/lang/String;
    :cond_0
    sget-boolean v2, Lcom/airbnb/lottie/L;->traceEnabled:Z

    if-nez v2, :cond_1

    .line 50
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 52
    :cond_1
    sget v2, Lcom/airbnb/lottie/L;->traceDepth:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/airbnb/lottie/L;->traceDepth:I

    .line 53
    sget v2, Lcom/airbnb/lottie/L;->traceDepth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 54
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "Can\'t end trace section. There are none."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_2
    move-object v2, v1

    sget-object v3, Lcom/airbnb/lottie/L;->sections:[Ljava/lang/String;

    sget v4, Lcom/airbnb/lottie/L;->traceDepth:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 57
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unbalanced trace call "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/airbnb/lottie/L;->sections:[Ljava/lang/String;

    sget v6, Lcom/airbnb/lottie/L;->traceDepth:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_3
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 61
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sget-object v4, Lcom/airbnb/lottie/L;->startTimeNs:[J

    sget v5, Lcom/airbnb/lottie/L;->traceDepth:I

    aget-wide v4, v4, v5

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const v3, 0x49742400    # 1000000.0f

    div-float/2addr v2, v3

    move v1, v2

    goto :goto_0
.end method

.method public static setTraceEnabled(Z)V
    .locals 3

    .prologue
    .line 20
    move v0, p0

    .local v0, "enabled":Z
    sget-boolean v1, Lcom/airbnb/lottie/L;->traceEnabled:Z

    move v2, v0

    if-ne v1, v2, :cond_0

    .line 21
    .line 28
    :goto_0
    return-void

    .line 23
    :cond_0
    move v1, v0

    sput-boolean v1, Lcom/airbnb/lottie/L;->traceEnabled:Z

    .line 24
    sget-boolean v1, Lcom/airbnb/lottie/L;->traceEnabled:Z

    if-eqz v1, :cond_1

    .line 25
    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/airbnb/lottie/L;->sections:[Ljava/lang/String;

    .line 26
    const/16 v1, 0x14

    new-array v1, v1, [J

    sput-object v1, Lcom/airbnb/lottie/L;->startTimeNs:[J

    .line 28
    :cond_1
    goto :goto_0
.end method
