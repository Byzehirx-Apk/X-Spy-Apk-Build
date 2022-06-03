.class Lgnu/kawa/functions/LispEscapeFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# static fields
.field public static final ESCAPE_ALL:I = 0xf2

.field public static final ESCAPE_NORMAL:I = 0xf1

.field public static final alwaysTerminate:Lgnu/kawa/functions/LispEscapeFormat;


# instance fields
.field escapeAll:Z

.field param1:I

.field param2:I

.field param3:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 785
    new-instance v0, Lgnu/kawa/functions/LispEscapeFormat;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const/high16 v3, -0x40000000    # -2.0f

    invoke-direct {v1, v2, v3}, Lgnu/kawa/functions/LispEscapeFormat;-><init>(II)V

    sput-object v0, Lgnu/kawa/functions/LispEscapeFormat;->alwaysTerminate:Lgnu/kawa/functions/LispEscapeFormat;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 5

    .prologue
    .line 789
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispEscapeFormat;
    move v1, p1

    .local v1, "param1":I
    move v2, p2

    .local v2, "param2":I
    move-object v3, v0

    invoke-direct {v3}, Lgnu/text/ReportFormat;-><init>()V

    .line 790
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lgnu/kawa/functions/LispEscapeFormat;->param1:I

    .line 791
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lgnu/kawa/functions/LispEscapeFormat;->param2:I

    .line 792
    move-object v3, v0

    const/high16 v4, -0x40000000    # -2.0f

    iput v4, v3, Lgnu/kawa/functions/LispEscapeFormat;->param3:I

    .line 793
    return-void
.end method

.method public constructor <init>(III)V
    .locals 6

    .prologue
    .line 796
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispEscapeFormat;
    move v1, p1

    .local v1, "param1":I
    move v2, p2

    .local v2, "param2":I
    move v3, p3

    .local v3, "param3":I
    move-object v4, v0

    invoke-direct {v4}, Lgnu/text/ReportFormat;-><init>()V

    .line 797
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lgnu/kawa/functions/LispEscapeFormat;->param1:I

    .line 798
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lgnu/kawa/functions/LispEscapeFormat;->param2:I

    .line 799
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lgnu/kawa/functions/LispEscapeFormat;->param3:I

    .line 800
    return-void
.end method

.method static getParam(I[Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 9

    .prologue
    .line 804
    move v0, p0

    .local v0, "param":I
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move v2, p2

    .local v2, "start":I
    move v4, v0

    const/high16 v5, -0x50000000

    if-ne v4, v5, :cond_0

    .line 805
    move-object v4, v1

    array-length v4, v4

    move v5, v2

    sub-int/2addr v4, v5

    invoke-static {v4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v4

    move-object v0, v4

    .line 823
    .end local v0    # "param":I
    :goto_0
    return-object v0

    .line 806
    .restart local v0    # "param":I
    :cond_0
    move v4, v0

    const/high16 v5, -0x60000000

    if-ne v4, v5, :cond_7

    .line 808
    move-object v4, v1

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    .line 809
    .local v3, "arg":Ljava/lang/Object;
    move-object v4, v3

    instance-of v4, v4, Lgnu/math/Numeric;

    if-eqz v4, :cond_1

    .line 810
    move-object v4, v3

    check-cast v4, Lgnu/math/Numeric;

    move-object v0, v4

    goto :goto_0

    .line 811
    :cond_1
    move-object v4, v3

    instance-of v4, v4, Ljava/lang/Number;

    if-eqz v4, :cond_4

    .line 813
    move-object v4, v3

    instance-of v4, v4, Ljava/lang/Float;

    if-nez v4, :cond_2

    move-object v4, v3

    instance-of v4, v4, Ljava/lang/Double;

    if-eqz v4, :cond_3

    .line 814
    :cond_2
    new-instance v4, Lgnu/math/DFloNum;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v0, v4

    goto :goto_0

    .line 815
    :cond_3
    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 817
    :cond_4
    move-object v4, v3

    instance-of v4, v4, Lgnu/text/Char;

    if-eqz v4, :cond_5

    .line 818
    new-instance v4, Lgnu/math/IntNum;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    check-cast v6, Lgnu/text/Char;

    invoke-virtual {v6}, Lgnu/text/Char;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Lgnu/math/IntNum;-><init>(I)V

    move-object v0, v4

    goto :goto_0

    .line 819
    :cond_5
    move-object v4, v3

    instance-of v4, v4, Ljava/lang/Character;

    if-eqz v4, :cond_6

    .line 820
    new-instance v4, Lgnu/math/IntNum;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    check-cast v6, Ljava/lang/Character;

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v6

    invoke-direct {v5, v6}, Lgnu/math/IntNum;-><init>(I)V

    move-object v0, v4

    goto :goto_0

    .line 821
    :cond_6
    new-instance v4, Lgnu/math/DFloNum;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v5, v6, v7}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v0, v4

    goto :goto_0

    .line 823
    .end local v3    # "arg":Ljava/lang/Object;
    :cond_7
    move v4, v0

    invoke-static {v4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 834
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/LispEscapeFormat;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move v2, p2

    .local v2, "start":I
    move-object/from16 v3, p3

    .local v3, "dst":Ljava/io/Writer;
    move-object/from16 v4, p4

    .local v4, "fpos":Ljava/text/FieldPosition;
    move v10, v2

    move v5, v10

    .line 836
    .local v5, "orig_start":I
    move-object v10, v0

    iget v10, v10, Lgnu/kawa/functions/LispEscapeFormat;->param1:I

    const/high16 v11, -0x40000000    # -2.0f

    if-ne v10, v11, :cond_1

    .line 837
    move v10, v2

    move-object v11, v1

    array-length v11, v11

    if-ne v10, v11, :cond_0

    const/4 v10, 0x1

    :goto_0
    move v6, v10

    .line 864
    .local v6, "do_terminate":Z
    :goto_1
    move v10, v6

    if-nez v10, :cond_9

    const/4 v10, 0x0

    :goto_2
    move v11, v2

    invoke-static {v10, v11}, Lgnu/kawa/functions/LispEscapeFormat;->result(II)I

    move-result v10

    move v0, v10

    .end local v0    # "this":Lgnu/kawa/functions/LispEscapeFormat;
    return v0

    .line 837
    .end local v6    # "do_terminate":Z
    .restart local v0    # "this":Lgnu/kawa/functions/LispEscapeFormat;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 838
    :cond_1
    move-object v10, v0

    iget v10, v10, Lgnu/kawa/functions/LispEscapeFormat;->param2:I

    const/high16 v11, -0x40000000    # -2.0f

    if-ne v10, v11, :cond_2

    move-object v10, v0

    iget v10, v10, Lgnu/kawa/functions/LispEscapeFormat;->param1:I

    if-nez v10, :cond_2

    .line 839
    const/4 v10, 0x1

    move v6, v10

    .restart local v6    # "do_terminate":Z
    goto :goto_1

    .line 842
    .end local v6    # "do_terminate":Z
    :cond_2
    move-object v10, v0

    iget v10, v10, Lgnu/kawa/functions/LispEscapeFormat;->param1:I

    move-object v11, v1

    move v12, v2

    invoke-static {v10, v11, v12}, Lgnu/kawa/functions/LispEscapeFormat;->getParam(I[Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v10

    move-object v7, v10

    .line 843
    .local v7, "arg1":Lgnu/math/Numeric;
    move-object v10, v0

    iget v10, v10, Lgnu/kawa/functions/LispEscapeFormat;->param1:I

    const/high16 v11, -0x60000000

    if-ne v10, v11, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 844
    :cond_3
    move-object v10, v0

    iget v10, v10, Lgnu/kawa/functions/LispEscapeFormat;->param2:I

    const/high16 v11, -0x40000000    # -2.0f

    if-ne v10, v11, :cond_4

    .line 846
    move-object v10, v7

    invoke-virtual {v10}, Lgnu/math/Numeric;->isZero()Z

    move-result v10

    move v6, v10

    .restart local v6    # "do_terminate":Z
    goto :goto_1

    .line 850
    .end local v6    # "do_terminate":Z
    :cond_4
    move-object v10, v0

    iget v10, v10, Lgnu/kawa/functions/LispEscapeFormat;->param2:I

    move-object v11, v1

    move v12, v2

    invoke-static {v10, v11, v12}, Lgnu/kawa/functions/LispEscapeFormat;->getParam(I[Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v10

    move-object v8, v10

    .line 851
    .local v8, "arg2":Lgnu/math/Numeric;
    move-object v10, v0

    iget v10, v10, Lgnu/kawa/functions/LispEscapeFormat;->param2:I

    const/high16 v11, -0x60000000

    if-ne v10, v11, :cond_5

    add-int/lit8 v2, v2, 0x1

    .line 852
    :cond_5
    move-object v10, v0

    iget v10, v10, Lgnu/kawa/functions/LispEscapeFormat;->param3:I

    const/high16 v11, -0x40000000    # -2.0f

    if-ne v10, v11, :cond_6

    .line 854
    move-object v10, v7

    move-object v11, v8

    invoke-virtual {v10, v11}, Lgnu/math/Numeric;->equals(Ljava/lang/Object;)Z

    move-result v10

    move v6, v10

    .restart local v6    # "do_terminate":Z
    goto :goto_1

    .line 858
    .end local v6    # "do_terminate":Z
    :cond_6
    move-object v10, v0

    iget v10, v10, Lgnu/kawa/functions/LispEscapeFormat;->param3:I

    move-object v11, v1

    move v12, v2

    invoke-static {v10, v11, v12}, Lgnu/kawa/functions/LispEscapeFormat;->getParam(I[Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v10

    move-object v9, v10

    .line 859
    .local v9, "arg3":Lgnu/math/Numeric;
    move-object v10, v0

    iget v10, v10, Lgnu/kawa/functions/LispEscapeFormat;->param3:I

    const/high16 v11, -0x60000000

    if-ne v10, v11, :cond_7

    add-int/lit8 v2, v2, 0x1

    .line 860
    :cond_7
    move-object v10, v8

    move-object v11, v7

    invoke-virtual {v10, v11}, Lgnu/math/Numeric;->geq(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    move-object v10, v9

    move-object v11, v8

    invoke-virtual {v10, v11}, Lgnu/math/Numeric;->geq(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    :goto_3
    move v6, v10

    .restart local v6    # "do_terminate":Z
    goto/16 :goto_1

    .end local v6    # "do_terminate":Z
    :cond_8
    const/4 v10, 0x0

    goto :goto_3

    .line 864
    .end local v7    # "arg1":Lgnu/math/Numeric;
    .end local v8    # "arg2":Lgnu/math/Numeric;
    .end local v9    # "arg3":Lgnu/math/Numeric;
    .restart local v6    # "do_terminate":Z
    :cond_9
    move-object v10, v0

    iget-boolean v10, v10, Lgnu/kawa/functions/LispEscapeFormat;->escapeAll:Z

    if-eqz v10, :cond_a

    const/16 v10, 0xf2

    goto/16 :goto_2

    :cond_a
    const/16 v10, 0xf1

    goto/16 :goto_2
.end method
