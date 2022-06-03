.class public Lcom/airbnb/lottie/model/DocumentData;
.super Ljava/lang/Object;
.source "DocumentData.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/DocumentData$Justification;
    }
.end annotation


# instance fields
.field public final baselineShift:D

.field public final color:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public final fontName:Ljava/lang/String;

.field public final justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

.field public final lineHeight:D

.field public final size:D

.field public final strokeColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public final strokeOverFill:Z

.field public final strokeWidth:D

.field public final text:Ljava/lang/String;

.field public final tracking:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DLcom/airbnb/lottie/model/DocumentData$Justification;IDDIIDZ)V
    .locals 23
    .param p11    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p12    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 32
    move-object/from16 v3, p0

    .local v3, "this":Lcom/airbnb/lottie/model/DocumentData;
    move-object/from16 v4, p1

    .local v4, "text":Ljava/lang/String;
    move-object/from16 v5, p2

    .local v5, "fontName":Ljava/lang/String;
    move-wide/from16 v6, p3

    .local v6, "size":D
    move-object/from16 v8, p5

    .local v8, "justification":Lcom/airbnb/lottie/model/DocumentData$Justification;
    move/from16 v9, p6

    .local v9, "tracking":I
    move-wide/from16 v10, p7

    .local v10, "lineHeight":D
    move-wide/from16 v12, p9

    .local v12, "baselineShift":D
    move/from16 v14, p11

    .local v14, "color":I
    move/from16 v15, p12

    .local v15, "strokeColor":I
    move-wide/from16 v16, p13

    .local v16, "strokeWidth":D
    move/from16 v18, p15

    .local v18, "strokeOverFill":Z
    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v19}, Ljava/lang/Object;-><init>()V

    .line 33
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 34
    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    .line 35
    move-object/from16 v19, v3

    move-wide/from16 v20, v6

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/airbnb/lottie/model/DocumentData;->size:D

    .line 36
    move-object/from16 v19, v3

    move-object/from16 v20, v8

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 37
    move-object/from16 v19, v3

    move/from16 v20, v9

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    .line 38
    move-object/from16 v19, v3

    move-wide/from16 v20, v10

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:D

    .line 39
    move-object/from16 v19, v3

    move-wide/from16 v20, v12

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/airbnb/lottie/model/DocumentData;->baselineShift:D

    .line 40
    move-object/from16 v19, v3

    move/from16 v20, v14

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/airbnb/lottie/model/DocumentData;->color:I

    .line 41
    move-object/from16 v19, v3

    move/from16 v20, v15

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    .line 42
    move-object/from16 v19, v3

    move-wide/from16 v20, v16

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:D

    .line 43
    move-object/from16 v19, v3

    move/from16 v20, v18

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    .line 44
    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 10

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/DocumentData;
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    move v1, v4

    .line 50
    .local v1, "result":I
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    move v1, v4

    .line 51
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    int-to-double v4, v4

    move-object v6, v0

    iget-wide v6, v6, Lcom/airbnb/lottie/model/DocumentData;->size:D

    add-double/2addr v4, v6

    double-to-int v4, v4

    move v1, v4

    .line 52
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/DocumentData$Justification;->ordinal()I

    move-result v5

    add-int/2addr v4, v5

    move v1, v4

    .line 53
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    add-int/2addr v4, v5

    move v1, v4

    .line 54
    move-object v4, v0

    iget-wide v4, v4, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-wide v2, v4

    .line 55
    .local v2, "temp":J
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move-wide v5, v2

    move-wide v7, v2

    const/16 v9, 0x20

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v5, v5

    add-int/2addr v4, v5

    move v1, v4

    .line 56
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/airbnb/lottie/model/DocumentData;->color:I

    add-int/2addr v4, v5

    move v1, v4

    .line 57
    move v4, v1

    move v0, v4

    .end local v0    # "this":Lcom/airbnb/lottie/model/DocumentData;
    return v0
.end method
