.class Lgnu/kawa/functions/LispObjectFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field base:Lgnu/text/ReportFormat;

.field colInc:I

.field minPad:I

.field minWidth:I

.field padChar:I

.field where:I


# direct methods
.method public constructor <init>(Lgnu/text/ReportFormat;IIIII)V
    .locals 9

    .prologue
    .line 751
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispObjectFormat;
    move-object v1, p1

    .local v1, "base":Lgnu/text/ReportFormat;
    move v2, p2

    .local v2, "minWidth":I
    move v3, p3

    .local v3, "colInc":I
    move v4, p4

    .local v4, "minPad":I
    move v5, p5

    .local v5, "padChar":I
    move v6, p6

    .local v6, "where":I
    move-object v7, v0

    invoke-direct {v7}, Lgnu/text/ReportFormat;-><init>()V

    .line 752
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lgnu/kawa/functions/LispObjectFormat;->base:Lgnu/text/ReportFormat;

    .line 753
    move-object v7, v0

    move v8, v2

    iput v8, v7, Lgnu/kawa/functions/LispObjectFormat;->minWidth:I

    .line 754
    move-object v7, v0

    move v8, v3

    iput v8, v7, Lgnu/kawa/functions/LispObjectFormat;->colInc:I

    .line 755
    move-object v7, v0

    move v8, v4

    iput v8, v7, Lgnu/kawa/functions/LispObjectFormat;->minPad:I

    .line 756
    move-object v7, v0

    move v8, v5

    iput v8, v7, Lgnu/kawa/functions/LispObjectFormat;->padChar:I

    .line 757
    move-object v7, v0

    move v8, v6

    iput v8, v7, Lgnu/kawa/functions/LispObjectFormat;->where:I

    .line 758
    return-void
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 764
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/kawa/functions/LispObjectFormat;
    move-object/from16 v2, p1

    .local v2, "args":[Ljava/lang/Object;
    move/from16 v3, p2

    .local v3, "start":I
    move-object/from16 v4, p3

    .local v4, "dst":Ljava/io/Writer;
    move-object/from16 v5, p4

    .local v5, "fpos":Ljava/text/FieldPosition;
    move-object v10, v1

    iget v10, v10, Lgnu/kawa/functions/LispObjectFormat;->minWidth:I

    const/4 v11, 0x0

    move-object v12, v2

    move v13, v3

    invoke-static {v10, v11, v12, v13}, Lgnu/kawa/functions/LispObjectFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v10

    move v6, v10

    .line 765
    .local v6, "minWidth":I
    move-object v10, v1

    iget v10, v10, Lgnu/kawa/functions/LispObjectFormat;->minWidth:I

    const/high16 v11, -0x60000000

    if-ne v10, v11, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 766
    :cond_0
    move-object v10, v1

    iget v10, v10, Lgnu/kawa/functions/LispObjectFormat;->colInc:I

    const/4 v11, 0x1

    move-object v12, v2

    move v13, v3

    invoke-static {v10, v11, v12, v13}, Lgnu/kawa/functions/LispObjectFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v10

    move v7, v10

    .line 767
    .local v7, "colInc":I
    move-object v10, v1

    iget v10, v10, Lgnu/kawa/functions/LispObjectFormat;->colInc:I

    const/high16 v11, -0x60000000

    if-ne v10, v11, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 768
    :cond_1
    move-object v10, v1

    iget v10, v10, Lgnu/kawa/functions/LispObjectFormat;->minPad:I

    const/4 v11, 0x0

    move-object v12, v2

    move v13, v3

    invoke-static {v10, v11, v12, v13}, Lgnu/kawa/functions/LispObjectFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v10

    move v8, v10

    .line 769
    .local v8, "minPad":I
    move-object v10, v1

    iget v10, v10, Lgnu/kawa/functions/LispObjectFormat;->minPad:I

    const/high16 v11, -0x60000000

    if-ne v10, v11, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 770
    :cond_2
    move-object v10, v1

    iget v10, v10, Lgnu/kawa/functions/LispObjectFormat;->padChar:I

    const/16 v11, 0x20

    move-object v12, v2

    move v13, v3

    invoke-static {v10, v11, v12, v13}, Lgnu/kawa/functions/LispObjectFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v10

    move v9, v10

    .line 771
    .local v9, "padChar":C
    move-object v10, v1

    iget v10, v10, Lgnu/kawa/functions/LispObjectFormat;->padChar:I

    const/high16 v11, -0x60000000

    if-ne v10, v11, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 772
    :cond_3
    move-object v10, v1

    iget-object v10, v10, Lgnu/kawa/functions/LispObjectFormat;->base:Lgnu/text/ReportFormat;

    move-object v11, v2

    move v12, v3

    move-object v13, v4

    move v14, v9

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/kawa/functions/LispObjectFormat;->where:I

    move/from16 v18, v0

    move-object/from16 v19, v5

    invoke-static/range {v10 .. v19}, Lgnu/text/PadFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;CIIIILjava/text/FieldPosition;)I

    move-result v10

    move v1, v10

    .end local v1    # "this":Lgnu/kawa/functions/LispObjectFormat;
    return v1
.end method
