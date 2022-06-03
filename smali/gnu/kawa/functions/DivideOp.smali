.class public Lgnu/kawa/functions/DivideOp;
.super Lgnu/kawa/functions/ArithOp;
.source "DivideOp.java"


# static fields
.field public static final $Sl:Lgnu/kawa/functions/DivideOp;

.field public static final div:Lgnu/kawa/functions/DivideOp;

.field public static final div0:Lgnu/kawa/functions/DivideOp;

.field public static final idiv:Lgnu/kawa/functions/DivideOp;

.field public static final mod:Lgnu/kawa/functions/DivideOp;

.field public static final mod0:Lgnu/kawa/functions/DivideOp;

.field public static final modulo:Lgnu/kawa/functions/DivideOp;

.field public static final quotient:Lgnu/kawa/functions/DivideOp;

.field public static final remainder:Lgnu/kawa/functions/DivideOp;


# instance fields
.field rounding_mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 19
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "/"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->$Sl:Lgnu/kawa/functions/DivideOp;

    .line 20
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "idiv"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->idiv:Lgnu/kawa/functions/DivideOp;

    .line 21
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "quotient"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->quotient:Lgnu/kawa/functions/DivideOp;

    .line 22
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "remainder"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->remainder:Lgnu/kawa/functions/DivideOp;

    .line 23
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "modulo"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->modulo:Lgnu/kawa/functions/DivideOp;

    .line 24
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "div"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->div:Lgnu/kawa/functions/DivideOp;

    .line 25
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "mod"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->mod:Lgnu/kawa/functions/DivideOp;

    .line 26
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "div0"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->div0:Lgnu/kawa/functions/DivideOp;

    .line 27
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "mod0"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->mod0:Lgnu/kawa/functions/DivideOp;

    .line 29
    sget-object v0, Lgnu/kawa/functions/DivideOp;->idiv:Lgnu/kawa/functions/DivideOp;

    const/4 v1, 0x3

    iput v1, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 30
    sget-object v0, Lgnu/kawa/functions/DivideOp;->quotient:Lgnu/kawa/functions/DivideOp;

    const/4 v1, 0x3

    iput v1, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 31
    sget-object v0, Lgnu/kawa/functions/DivideOp;->remainder:Lgnu/kawa/functions/DivideOp;

    const/4 v1, 0x3

    iput v1, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 32
    sget-object v0, Lgnu/kawa/functions/DivideOp;->modulo:Lgnu/kawa/functions/DivideOp;

    const/4 v1, 0x1

    iput v1, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 33
    sget-object v0, Lgnu/kawa/functions/DivideOp;->div:Lgnu/kawa/functions/DivideOp;

    const/4 v1, 0x5

    iput v1, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 34
    sget-object v0, Lgnu/kawa/functions/DivideOp;->mod:Lgnu/kawa/functions/DivideOp;

    const/4 v1, 0x5

    iput v1, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 35
    sget-object v0, Lgnu/kawa/functions/DivideOp;->div0:Lgnu/kawa/functions/DivideOp;

    const/4 v1, 0x4

    iput v1, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 36
    sget-object v0, Lgnu/kawa/functions/DivideOp;->mod0:Lgnu/kawa/functions/DivideOp;

    const/4 v1, 0x4

    iput v1, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/DivideOp;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "op":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lgnu/kawa/functions/ArithOp;-><init>(Ljava/lang/String;I)V

    .line 42
    move-object v3, v0

    sget-object v4, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v5, "gnu.kawa.functions.CompileArith:validateApplyArithOp"

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/functions/DivideOp;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    sget-object v3, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    move-object v4, v0

    const-string/jumbo v5, "*gnu.kawa.functions.CompileArith:forDiv"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 50
    move-object/from16 v3, p0

    .local v3, "this":Lgnu/kawa/functions/DivideOp;
    move-object/from16 v4, p1

    .local v4, "args":[Ljava/lang/Object;
    move-object/from16 v30, v4

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v5, v30

    .line 51
    .local v5, "len":I
    move/from16 v30, v5

    if-nez v30, :cond_0

    .line 52
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v30

    move-object/from16 v3, v30

    .line 257
    .end local v3    # "this":Lgnu/kawa/functions/DivideOp;
    :goto_0
    return-object v3

    .line 53
    .restart local v3    # "this":Lgnu/kawa/functions/DivideOp;
    :cond_0
    move-object/from16 v30, v4

    const/16 v31, 0x0

    aget-object v30, v30, v31

    check-cast v30, Ljava/lang/Number;

    move-object/from16 v6, v30

    .line 54
    .local v6, "result":Ljava/lang/Number;
    move/from16 v30, v5

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    .line 55
    move-object/from16 v30, v3

    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v31

    move-object/from16 v32, v6

    invoke-virtual/range {v30 .. v32}, Lgnu/kawa/functions/DivideOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v3, v30

    goto :goto_0

    .line 56
    :cond_1
    move-object/from16 v30, v6

    invoke-static/range {v30 .. v30}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v30

    move/from16 v7, v30

    .line 57
    .local v7, "code":I
    const/16 v30, 0x1

    move/from16 v8, v30

    .local v8, "i":I
    :goto_1
    move/from16 v30, v8

    move/from16 v31, v5

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_f

    .line 59
    move-object/from16 v30, v4

    move/from16 v31, v8

    aget-object v30, v30, v31

    move-object/from16 v9, v30

    .line 60
    .local v9, "arg2":Ljava/lang/Object;
    move-object/from16 v30, v9

    invoke-static/range {v30 .. v30}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v30

    move/from16 v10, v30

    .line 61
    .local v10, "code2":I
    move/from16 v30, v7

    move/from16 v31, v10

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_4

    move/from16 v30, v10

    :goto_2
    move/from16 v7, v30

    .line 62
    move/from16 v30, v7

    move/from16 v11, v30

    .line 63
    .local v11, "scode":I
    move/from16 v30, v7

    const/16 v31, 0x4

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_2

    .line 65
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v30, v0

    packed-switch v30, :pswitch_data_0

    .line 72
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    move/from16 v30, v0

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_5

    move/from16 v30, v7

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_2

    move/from16 v30, v7

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_5

    .line 74
    .line 80
    :cond_2
    :goto_3
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v30, v0

    const/16 v31, 0x5

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    move/from16 v30, v7

    const/16 v31, 0xa

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_6

    .line 82
    const/16 v30, 0xa

    move/from16 v11, v30

    .line 83
    move/from16 v30, v7

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_3

    move/from16 v30, v7

    const/16 v31, 0x7

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_3

    .line 84
    const/16 v30, 0x9

    move/from16 v7, v30

    .line 92
    :cond_3
    :goto_4
    move/from16 v30, v11

    packed-switch v30, :pswitch_data_1

    .line 213
    :pswitch_0
    move-object/from16 v30, v6

    invoke-static/range {v30 .. v30}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v30

    move-object/from16 v27, v30

    .line 214
    .local v27, "num1":Lgnu/math/Numeric;
    move-object/from16 v30, v9

    invoke-static/range {v30 .. v30}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v30

    move-object/from16 v28, v30

    .line 215
    .local v28, "num2":Lgnu/math/Numeric;
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v30, v0

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_d

    move-object/from16 v30, v28

    invoke-virtual/range {v30 .. v30}, Lgnu/math/Numeric;->isZero()Z

    move-result v30

    if-eqz v30, :cond_d

    .line 216
    move-object/from16 v30, v28

    invoke-virtual/range {v30 .. v30}, Lgnu/math/Numeric;->isExact()Z

    move-result v30

    if-eqz v30, :cond_c

    move-object/from16 v30, v27

    :goto_5
    move-object/from16 v3, v30

    goto/16 :goto_0

    .line 61
    .end local v11    # "scode":I
    .end local v27    # "num1":Lgnu/math/Numeric;
    .end local v28    # "num2":Lgnu/math/Numeric;
    :cond_4
    move/from16 v30, v7

    goto/16 :goto_2

    .line 69
    .restart local v11    # "scode":I
    :pswitch_1
    const/16 v30, 0x4

    move/from16 v36, v30

    move/from16 v30, v36

    move/from16 v31, v36

    move/from16 v7, v31

    move/from16 v11, v30

    .line 70
    goto/16 :goto_3

    .line 76
    :cond_5
    const/16 v30, 0x4

    move/from16 v11, v30

    goto/16 :goto_3

    .line 86
    :cond_6
    move/from16 v30, v11

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_7

    move/from16 v30, v11

    const/16 v31, 0x7

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    .line 88
    :cond_7
    const/16 v30, 0x9

    move/from16 v11, v30

    .line 89
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v30, v0

    const/16 v31, 0x7

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    .line 90
    move/from16 v30, v11

    move/from16 v7, v30

    goto :goto_4

    .line 95
    :pswitch_2
    move-object/from16 v30, v6

    invoke-static/range {v30 .. v30}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v30

    move/from16 v12, v30

    .line 96
    .local v12, "i1":I
    move-object/from16 v30, v9

    invoke-static/range {v30 .. v30}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v30

    move/from16 v13, v30

    .line 97
    .local v13, "i2":I
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v30, v0

    packed-switch v30, :pswitch_data_2

    .line 103
    move/from16 v30, v12

    move/from16 v31, v13

    div-int v30, v30, v31

    move/from16 v12, v30

    .line 106
    :goto_6
    move/from16 v30, v12

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v6, v30

    .line 236
    .end local v12    # "i1":I
    .end local v13    # "i2":I
    :goto_7
    move/from16 v30, v7

    move/from16 v31, v11

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_8

    .line 238
    move/from16 v30, v7

    packed-switch v30, :pswitch_data_3

    .line 57
    :cond_8
    :goto_8
    :pswitch_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 100
    .restart local v12    # "i1":I
    .restart local v13    # "i2":I
    :pswitch_4
    move/from16 v30, v12

    move/from16 v31, v13

    rem-int v30, v30, v31

    move/from16 v12, v30

    .line 101
    goto :goto_6

    .line 109
    .end local v12    # "i1":I
    .end local v13    # "i2":I
    :pswitch_5
    move-object/from16 v30, v6

    invoke-static/range {v30 .. v30}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v30

    move-wide/from16 v14, v30

    .line 110
    .local v14, "l1":J
    move-object/from16 v30, v9

    invoke-static/range {v30 .. v30}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v30

    move-wide/from16 v16, v30

    .line 111
    .local v16, "l2":J
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v30, v0

    packed-switch v30, :pswitch_data_4

    .line 117
    move-wide/from16 v30, v14

    move-wide/from16 v32, v16

    div-long v30, v30, v32

    move-wide/from16 v14, v30

    .line 120
    :goto_9
    move-wide/from16 v30, v14

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v6, v30

    .line 121
    goto :goto_7

    .line 114
    :pswitch_6
    move-wide/from16 v30, v14

    move-wide/from16 v32, v16

    rem-long v30, v30, v32

    move-wide/from16 v14, v30

    .line 115
    goto :goto_9

    .line 123
    .end local v14    # "l1":J
    .end local v16    # "l2":J
    :pswitch_7
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v30, v0

    packed-switch v30, :pswitch_data_5

    .line 144
    :goto_a
    :pswitch_8
    goto :goto_7

    .line 127
    :pswitch_9
    move-object/from16 v30, v6

    invoke-static/range {v30 .. v30}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v30

    move-object/from16 v31, v9

    invoke-static/range {v31 .. v31}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v31

    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v32

    invoke-static/range {v30 .. v32}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v30

    move-object/from16 v6, v30

    .line 130
    goto :goto_a

    .line 132
    :pswitch_a
    move-object/from16 v30, v6

    invoke-static/range {v30 .. v30}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v30

    move-object/from16 v31, v9

    invoke-static/range {v31 .. v31}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v31

    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v32

    invoke-static/range {v30 .. v32}, Lgnu/math/IntNum;->remainder(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v30

    move-object/from16 v6, v30

    .line 135
    goto :goto_a

    .line 137
    :pswitch_b
    move-object/from16 v30, v6

    invoke-static/range {v30 .. v30}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v30

    move-object/from16 v31, v9

    invoke-static/range {v31 .. v31}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v30

    move-object/from16 v6, v30

    .line 139
    move-object/from16 v30, v6

    move-object/from16 v0, v30

    instance-of v0, v0, Lgnu/math/IntNum;

    move/from16 v30, v0

    if-eqz v30, :cond_9

    const/16 v30, 0x4

    :goto_b
    move/from16 v7, v30

    .line 141
    move/from16 v30, v7

    move/from16 v11, v30

    goto :goto_a

    .line 139
    :cond_9
    const/16 v30, 0x6

    goto :goto_b

    .line 147
    :pswitch_c
    move-object/from16 v30, v6

    invoke-static/range {v30 .. v30}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v30

    move-object/from16 v18, v30

    .line 148
    .local v18, "bd1":Ljava/math/BigDecimal;
    move-object/from16 v30, v9

    invoke-static/range {v30 .. v30}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v30

    move-object/from16 v19, v30

    .line 149
    .local v19, "bd2":Ljava/math/BigDecimal;
    const/16 v30, 0x0

    move/from16 v20, v30

    .line 151
    .local v20, "mprec":I
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v30

    packed-switch v30, :pswitch_data_6

    .line 165
    :goto_c
    :pswitch_d
    sget-object v30, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    move-object/from16 v21, v30

    .line 168
    .local v21, "mround":Ljava/math/RoundingMode;
    :goto_d
    new-instance v30, Ljava/math/MathContext;

    move-object/from16 v36, v30

    move-object/from16 v30, v36

    move-object/from16 v31, v36

    move/from16 v32, v20

    move-object/from16 v33, v21

    invoke-direct/range {v31 .. v33}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    move-object/from16 v22, v30

    .line 169
    .local v22, "mcontext":Ljava/math/MathContext;
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v30, v0

    packed-switch v30, :pswitch_data_7

    .line 186
    :goto_e
    :pswitch_e
    goto/16 :goto_7

    .line 154
    .end local v21    # "mround":Ljava/math/RoundingMode;
    .end local v22    # "mcontext":Ljava/math/MathContext;
    :pswitch_f
    sget-object v30, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    move-object/from16 v21, v30

    .line 155
    .restart local v21    # "mround":Ljava/math/RoundingMode;
    goto :goto_d

    .line 157
    .end local v21    # "mround":Ljava/math/RoundingMode;
    :pswitch_10
    sget-object v30, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    move-object/from16 v21, v30

    .line 158
    .restart local v21    # "mround":Ljava/math/RoundingMode;
    goto :goto_d

    .line 160
    .end local v21    # "mround":Ljava/math/RoundingMode;
    :pswitch_11
    sget-object v30, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-object/from16 v21, v30

    .line 161
    .restart local v21    # "mround":Ljava/math/RoundingMode;
    goto :goto_d

    .line 163
    .end local v21    # "mround":Ljava/math/RoundingMode;
    :pswitch_12
    move-object/from16 v30, v19

    invoke-virtual/range {v30 .. v30}, Ljava/math/BigDecimal;->signum()I

    move-result v30

    if-gez v30, :cond_a

    sget-object v30, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    :goto_f
    move-object/from16 v21, v30

    .restart local v21    # "mround":Ljava/math/RoundingMode;
    goto :goto_c

    .end local v21    # "mround":Ljava/math/RoundingMode;
    :cond_a
    sget-object v30, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    goto :goto_f

    .line 172
    .restart local v21    # "mround":Ljava/math/RoundingMode;
    .restart local v22    # "mcontext":Ljava/math/MathContext;
    :pswitch_13
    move-object/from16 v30, v18

    move-object/from16 v31, v19

    invoke-virtual/range {v30 .. v31}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v30

    move-object/from16 v6, v30

    .line 173
    goto :goto_e

    .line 175
    :pswitch_14
    move-object/from16 v30, v18

    move-object/from16 v31, v19

    move-object/from16 v32, v22

    invoke-virtual/range {v30 .. v32}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v30

    move-object/from16 v6, v30

    .line 176
    goto :goto_e

    .line 178
    :pswitch_15
    move-object/from16 v30, v18

    move-object/from16 v31, v19

    move-object/from16 v32, v22

    invoke-virtual/range {v30 .. v32}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v30

    move-object/from16 v6, v30

    .line 180
    const/16 v30, 0x3

    move/from16 v36, v30

    move/from16 v30, v36

    move/from16 v31, v36

    move/from16 v11, v31

    move/from16 v7, v30

    .line 181
    goto :goto_e

    .line 183
    :pswitch_16
    move-object/from16 v30, v18

    move-object/from16 v31, v19

    move-object/from16 v32, v22

    invoke-virtual/range {v30 .. v32}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v30

    move-object/from16 v6, v30

    goto :goto_e

    .line 189
    .end local v18    # "bd1":Ljava/math/BigDecimal;
    .end local v19    # "bd2":Ljava/math/BigDecimal;
    .end local v20    # "mprec":I
    .end local v21    # "mround":Ljava/math/RoundingMode;
    .end local v22    # "mcontext":Ljava/math/MathContext;
    :pswitch_17
    move-object/from16 v30, v6

    invoke-static/range {v30 .. v30}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v30

    move-wide/from16 v23, v30

    .line 190
    .local v23, "d1":D
    move-object/from16 v30, v9

    invoke-static/range {v30 .. v30}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v30

    move-wide/from16 v25, v30

    .line 191
    .local v25, "d2":D
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v30, v0

    packed-switch v30, :pswitch_data_8

    .line 210
    :goto_10
    goto/16 :goto_7

    .line 195
    :pswitch_18
    move-wide/from16 v30, v23

    move-wide/from16 v32, v25

    div-double v30, v30, v32

    invoke-static/range {v30 .. v31}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v30

    move-object/from16 v6, v30

    .line 196
    goto :goto_10

    .line 198
    :pswitch_19
    move-wide/from16 v30, v23

    move-wide/from16 v32, v25

    div-double v30, v30, v32

    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v32

    invoke-static/range {v30 .. v32}, Lgnu/math/RealNum;->toInt(DI)D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v30

    move-object/from16 v6, v30

    .line 199
    goto :goto_10

    .line 201
    :pswitch_1a
    move-wide/from16 v30, v23

    move-wide/from16 v32, v25

    div-double v30, v30, v32

    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v32

    invoke-static/range {v30 .. v32}, Lgnu/math/RealNum;->toExactInt(DI)Lgnu/math/IntNum;

    move-result-object v30

    move-object/from16 v6, v30

    .line 202
    const/16 v30, 0x4

    move/from16 v36, v30

    move/from16 v30, v36

    move/from16 v31, v36

    move/from16 v11, v31

    move/from16 v7, v30

    .line 203
    goto :goto_10

    .line 205
    :pswitch_1b
    move-wide/from16 v30, v25

    const-wide/16 v32, 0x0

    cmpl-double v30, v30, v32

    if-eqz v30, :cond_b

    .line 206
    move-wide/from16 v30, v23

    move-wide/from16 v32, v23

    move-wide/from16 v34, v25

    div-double v32, v32, v34

    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v34

    invoke-static/range {v32 .. v34}, Lgnu/math/RealNum;->toInt(DI)D

    move-result-wide v32

    move-wide/from16 v34, v25

    mul-double v32, v32, v34

    sub-double v30, v30, v32

    move-wide/from16 v23, v30

    .line 207
    :cond_b
    move-wide/from16 v30, v23

    invoke-static/range {v30 .. v31}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v30

    move-object/from16 v6, v30

    goto :goto_10

    .line 216
    .end local v23    # "d1":D
    .end local v25    # "d2":D
    .restart local v27    # "num1":Lgnu/math/Numeric;
    .restart local v28    # "num2":Lgnu/math/Numeric;
    :cond_c
    move-object/from16 v30, v27

    invoke-virtual/range {v30 .. v30}, Lgnu/math/Numeric;->toInexact()Lgnu/math/Numeric;

    move-result-object v30

    goto/16 :goto_5

    .line 217
    :cond_d
    move-object/from16 v30, v27

    move-object/from16 v31, v28

    invoke-virtual/range {v30 .. v31}, Lgnu/math/Numeric;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v30

    move-object/from16 v29, v30

    .line 218
    .local v29, "numr":Lgnu/math/Numeric;
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v30, v0

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_e

    .line 219
    move-object/from16 v30, v27

    move-object/from16 v31, v29

    check-cast v31, Lgnu/math/RealNum;

    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object v31

    move-object/from16 v32, v28

    invoke-virtual/range {v31 .. v32}, Lgnu/math/RealNum;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lgnu/math/Numeric;->sub(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v30

    move-object/from16 v29, v30

    .line 220
    :cond_e
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v30, v0

    packed-switch v30, :pswitch_data_9

    .line 233
    move-object/from16 v30, v29

    move-object/from16 v6, v30

    goto/16 :goto_7

    .line 223
    :pswitch_1c
    move-object/from16 v30, v29

    check-cast v30, Lgnu/math/RealNum;

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lgnu/math/RealNum;->toExactInt(I)Lgnu/math/IntNum;

    move-result-object v30

    move-object/from16 v6, v30

    .line 224
    const/16 v30, 0x4

    move/from16 v36, v30

    move/from16 v30, v36

    move/from16 v31, v36

    move/from16 v7, v31

    move/from16 v11, v30

    .line 225
    goto/16 :goto_7

    .line 227
    :pswitch_1d
    move-object/from16 v30, v29

    check-cast v30, Lgnu/math/RealNum;

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object v30

    move-object/from16 v6, v30

    .line 228
    goto/16 :goto_7

    .line 230
    :pswitch_1e
    move-object/from16 v30, v29

    invoke-virtual/range {v30 .. v30}, Lgnu/math/Numeric;->toInexact()Lgnu/math/Numeric;

    move-result-object v30

    move-object/from16 v6, v30

    .line 231
    goto/16 :goto_7

    .line 241
    .end local v27    # "num1":Lgnu/math/Numeric;
    .end local v28    # "num2":Lgnu/math/Numeric;
    .end local v29    # "numr":Lgnu/math/Numeric;
    :pswitch_1f
    move-object/from16 v30, v6

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Number;->intValue()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v6, v30

    .line 242
    goto/16 :goto_8

    .line 244
    :pswitch_20
    move-object/from16 v30, v6

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Number;->longValue()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v6, v30

    .line 245
    goto/16 :goto_8

    .line 247
    :pswitch_21
    move-object/from16 v30, v6

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Number;->floatValue()F

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v30

    move-object/from16 v6, v30

    .line 248
    goto/16 :goto_8

    .line 250
    :pswitch_22
    move-object/from16 v30, v6

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v30

    move-object/from16 v6, v30

    .line 251
    goto/16 :goto_8

    .line 253
    :pswitch_23
    move-object/from16 v30, v6

    invoke-static/range {v30 .. v30}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v30

    move-object/from16 v6, v30

    goto/16 :goto_8

    .line 257
    .end local v9    # "arg2":Ljava/lang/Object;
    .end local v10    # "code2":I
    .end local v11    # "scode":I
    :cond_f
    move-object/from16 v30, v6

    move-object/from16 v3, v30

    goto/16 :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 92
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_17
    .end packed-switch

    .line 97
    :pswitch_data_2
    .packed-switch 0x8
        :pswitch_4
    .end packed-switch

    .line 238
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_20
        :pswitch_23
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_21
        :pswitch_22
    .end packed-switch

    .line 111
    :pswitch_data_4
    .packed-switch 0x8
        :pswitch_6
    .end packed-switch

    .line 123
    :pswitch_data_5
    .packed-switch 0x4
        :pswitch_b
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 151
    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_d
        :pswitch_12
    .end packed-switch

    .line 169
    :pswitch_data_7
    .packed-switch 0x4
        :pswitch_13
        :pswitch_e
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch

    .line 191
    :pswitch_data_8
    .packed-switch 0x4
        :pswitch_18
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch

    .line 220
    :pswitch_data_9
    .packed-switch 0x5
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch
.end method

.method public getRoundingMode()I
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/DivideOp;
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/functions/DivideOp;
    return v0
.end method

.method public numArgs()I
    .locals 3

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/DivideOp;
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/functions/DivideOp;->op:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/16 v1, -0xfff

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/kawa/functions/DivideOp;
    return v0

    .restart local v0    # "this":Lgnu/kawa/functions/DivideOp;
    :cond_0
    const/16 v1, 0x2002

    goto :goto_0
.end method
