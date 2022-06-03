.class public abstract Lgnu/mapping/MethodProc;
.super Lgnu/mapping/ProcedureN;
.source "MethodProc.java"


# static fields
.field public static final NO_MATCH:I = -0x1

.field public static final NO_MATCH_AMBIGUOUS:I = -0xd0000

.field public static final NO_MATCH_BAD_TYPE:I = -0xc0000

.field public static final NO_MATCH_TOO_FEW_ARGS:I = -0xf0000

.field public static final NO_MATCH_TOO_MANY_ARGS:I = -0xe0000

.field static final unknownArgTypes:[Lgnu/bytecode/Type;


# instance fields
.field protected argTypes:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    aput-object v3, v1, v2

    sput-object v0, Lgnu/mapping/MethodProc;->unknownArgTypes:[Lgnu/bytecode/Type;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/MethodProc;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method public static matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 12

    .prologue
    .line 101
    move v0, p0

    .local v0, "code":I
    move-object v1, p1

    .local v1, "proc":Lgnu/mapping/Procedure;
    move-object v2, p2

    .local v2, "args":[Ljava/lang/Object;
    move v4, v0

    int-to-short v4, v4

    move v3, v4

    .line 102
    .local v3, "arg":I
    move v4, v0

    const/high16 v5, -0x10000

    and-int/2addr v4, v5

    move v0, v4

    .line 103
    move v4, v0

    const/high16 v5, -0xc0000

    if-eq v4, v5, :cond_0

    .line 104
    new-instance v4, Lgnu/mapping/WrongArguments;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v1

    move-object v7, v2

    array-length v7, v7

    invoke-direct {v5, v6, v7}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    move-object v0, v4

    .line 105
    .end local v0    # "code":I
    :goto_0
    return-object v0

    .restart local v0    # "code":I
    :cond_0
    new-instance v4, Lgnu/mapping/WrongType;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v1

    move v7, v3

    move v8, v3

    if-lez v8, :cond_1

    move-object v8, v2

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    aget-object v8, v8, v9

    :goto_1
    invoke-direct {v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;)V

    move-object v0, v4

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public static mostSpecific([Lgnu/mapping/MethodProc;I)I
    .locals 13

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "procs":[Lgnu/mapping/MethodProc;
    move v1, p1

    .local v1, "length":I
    move v10, v1

    const/4 v11, 0x1

    if-gt v10, v11, :cond_0

    .line 171
    move v10, v1

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v0, v10

    .line 221
    .end local v0    # "procs":[Lgnu/mapping/MethodProc;
    :goto_0
    return v0

    .line 173
    .restart local v0    # "procs":[Lgnu/mapping/MethodProc;
    :cond_0
    move-object v10, v0

    const/4 v11, 0x0

    aget-object v10, v10, v11

    move-object v2, v10

    .line 176
    .local v2, "best":Lgnu/mapping/MethodProc;
    const/4 v10, 0x0

    move-object v3, v10

    .line 179
    .local v3, "bests":[Lgnu/mapping/MethodProc;
    const/4 v10, 0x0

    move v4, v10

    .line 181
    .local v4, "bestn":I
    const/4 v10, 0x1

    move v5, v10

    .local v5, "i":I
    :goto_1
    move v10, v5

    move v11, v1

    if-ge v10, v11, :cond_8

    .line 183
    move-object v10, v0

    move v11, v5

    aget-object v10, v10, v11

    move-object v6, v10

    .line 184
    .local v6, "method":Lgnu/mapping/MethodProc;
    move-object v10, v2

    if-eqz v10, :cond_4

    .line 186
    move-object v10, v2

    move-object v11, v6

    invoke-static {v10, v11}, Lgnu/mapping/MethodProc;->mostSpecific(Lgnu/mapping/MethodProc;Lgnu/mapping/MethodProc;)Lgnu/mapping/MethodProc;

    move-result-object v10

    move-object v7, v10

    .line 187
    .local v7, "winner":Lgnu/mapping/MethodProc;
    move-object v10, v7

    if-nez v10, :cond_3

    .line 189
    move-object v10, v3

    if-nez v10, :cond_1

    .line 190
    move v10, v1

    new-array v10, v10, [Lgnu/mapping/MethodProc;

    move-object v3, v10

    .line 191
    :cond_1
    move-object v10, v3

    const/4 v11, 0x0

    move-object v12, v2

    aput-object v12, v10, v11

    .line 192
    move-object v10, v3

    const/4 v11, 0x1

    move-object v12, v6

    aput-object v12, v10, v11

    .line 193
    const/4 v10, 0x2

    move v4, v10

    .line 194
    const/4 v10, 0x0

    move-object v2, v10

    .line 201
    .line 181
    .end local v7    # "winner":Lgnu/mapping/MethodProc;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 196
    .restart local v7    # "winner":Lgnu/mapping/MethodProc;
    :cond_3
    move-object v10, v7

    move-object v11, v6

    if-ne v10, v11, :cond_2

    .line 198
    move-object v10, v6

    move-object v2, v10

    .line 199
    move v10, v5

    move v4, v10

    goto :goto_2

    .line 204
    .end local v7    # "winner":Lgnu/mapping/MethodProc;
    :cond_4
    const/4 v10, 0x0

    move v7, v10

    .local v7, "j":I
    :goto_3
    move v10, v7

    move v11, v4

    if-ge v10, v11, :cond_7

    .line 206
    move-object v10, v3

    move v11, v7

    aget-object v10, v10, v11

    move-object v8, v10

    .line 207
    .local v8, "old":Lgnu/mapping/MethodProc;
    move-object v10, v8

    move-object v11, v6

    invoke-static {v10, v11}, Lgnu/mapping/MethodProc;->mostSpecific(Lgnu/mapping/MethodProc;Lgnu/mapping/MethodProc;)Lgnu/mapping/MethodProc;

    move-result-object v10

    move-object v9, v10

    .line 208
    .local v9, "winner":Lgnu/mapping/MethodProc;
    move-object v10, v9

    move-object v11, v8

    if-ne v10, v11, :cond_5

    .line 209
    goto :goto_2

    .line 210
    :cond_5
    move-object v10, v9

    if-nez v10, :cond_6

    .line 212
    move-object v10, v3

    move v11, v4

    add-int/lit8 v4, v4, 0x1

    move-object v12, v6

    aput-object v12, v10, v11

    .line 213
    goto :goto_2

    .line 204
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 217
    .end local v8    # "old":Lgnu/mapping/MethodProc;
    .end local v9    # "winner":Lgnu/mapping/MethodProc;
    :cond_7
    move-object v10, v6

    move-object v2, v10

    .line 218
    move v10, v5

    move v4, v10

    goto :goto_2

    .line 221
    .end local v6    # "method":Lgnu/mapping/MethodProc;
    .end local v7    # "j":I
    :cond_8
    move-object v10, v2

    if-nez v10, :cond_9

    const/4 v10, -0x1

    :goto_4
    move v0, v10

    goto :goto_0

    :cond_9
    move v10, v4

    goto :goto_4
.end method

.method public static mostSpecific(Lgnu/mapping/MethodProc;Lgnu/mapping/MethodProc;)Lgnu/mapping/MethodProc;
    .locals 19

    .prologue
    .line 122
    move-object/from16 v2, p0

    .local v2, "proc1":Lgnu/mapping/MethodProc;
    move-object/from16 v3, p1

    .local v3, "proc2":Lgnu/mapping/MethodProc;
    const/16 v17, 0x0

    move/from16 v4, v17

    .line 124
    .local v4, "not1":Z
    const/16 v17, 0x0

    move/from16 v5, v17

    .line 125
    .local v5, "not2":Z
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lgnu/mapping/MethodProc;->minArgs()I

    move-result v17

    move/from16 v6, v17

    .line 126
    .local v6, "min1":I
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lgnu/mapping/MethodProc;->minArgs()I

    move-result v17

    move/from16 v7, v17

    .line 127
    .local v7, "min2":I
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lgnu/mapping/MethodProc;->maxArgs()I

    move-result v17

    move/from16 v8, v17

    .line 128
    .local v8, "max1":I
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lgnu/mapping/MethodProc;->maxArgs()I

    move-result v17

    move/from16 v9, v17

    .line 129
    .local v9, "max2":I
    move/from16 v17, v8

    if-ltz v17, :cond_0

    move/from16 v17, v8

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    :cond_0
    move/from16 v17, v9

    if-ltz v17, :cond_2

    move/from16 v17, v9

    move/from16 v18, v6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 131
    :cond_1
    const/16 v17, 0x0

    move-object/from16 v2, v17

    .line 164
    .end local v2    # "proc1":Lgnu/mapping/MethodProc;
    :goto_0
    return-object v2

    .line 132
    .restart local v2    # "proc1":Lgnu/mapping/MethodProc;
    :cond_2
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lgnu/mapping/MethodProc;->numParameters()I

    move-result v17

    move/from16 v10, v17

    .line 133
    .local v10, "num1":I
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lgnu/mapping/MethodProc;->numParameters()I

    move-result v17

    move/from16 v11, v17

    .line 134
    .local v11, "num2":I
    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    move/from16 v17, v10

    :goto_1
    move/from16 v12, v17

    .line 135
    .local v12, "limit":I
    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 137
    move/from16 v17, v8

    if-gez v17, :cond_3

    .line 138
    const/16 v17, 0x1

    move/from16 v4, v17

    .line 139
    :cond_3
    move/from16 v17, v9

    if-gez v17, :cond_4

    .line 140
    const/16 v17, 0x1

    move/from16 v5, v17

    .line 142
    :cond_4
    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 143
    const/16 v17, 0x1

    move/from16 v4, v17

    .line 146
    :cond_5
    :goto_2
    const/16 v17, 0x0

    move/from16 v13, v17

    .local v13, "i":I
    :goto_3
    move/from16 v17, v13

    move/from16 v18, v12

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 148
    move-object/from16 v17, v2

    move/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Lgnu/mapping/MethodProc;->getParameterType(I)Lgnu/bytecode/Type;

    move-result-object v17

    move-object/from16 v14, v17

    .line 149
    .local v14, "t1":Lgnu/bytecode/Type;
    move-object/from16 v17, v3

    move/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Lgnu/mapping/MethodProc;->getParameterType(I)Lgnu/bytecode/Type;

    move-result-object v17

    move-object/from16 v15, v17

    .line 150
    .local v15, "t2":Lgnu/bytecode/Type;
    move-object/from16 v17, v14

    move-object/from16 v18, v15

    invoke-virtual/range {v17 .. v18}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v17

    move/from16 v16, v17

    .line 151
    .local v16, "comp":I
    move/from16 v17, v16

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 153
    const/16 v17, 0x1

    move/from16 v5, v17

    .line 154
    move/from16 v17, v4

    if-eqz v17, :cond_8

    .line 155
    const/16 v17, 0x0

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 134
    .end local v12    # "limit":I
    .end local v13    # "i":I
    .end local v14    # "t1":Lgnu/bytecode/Type;
    .end local v15    # "t2":Lgnu/bytecode/Type;
    .end local v16    # "comp":I
    :cond_6
    move/from16 v17, v11

    goto :goto_1

    .line 144
    .restart local v12    # "limit":I
    :cond_7
    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_5

    .line 145
    const/16 v17, 0x1

    move/from16 v5, v17

    goto :goto_2

    .line 157
    .restart local v13    # "i":I
    .restart local v14    # "t1":Lgnu/bytecode/Type;
    .restart local v15    # "t2":Lgnu/bytecode/Type;
    .restart local v16    # "comp":I
    :cond_8
    move/from16 v17, v16

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 159
    const/16 v17, 0x1

    move/from16 v4, v17

    .line 160
    move/from16 v17, v5

    if-eqz v17, :cond_9

    .line 161
    const/16 v17, 0x0

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 146
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 164
    .end local v14    # "t1":Lgnu/bytecode/Type;
    .end local v15    # "t2":Lgnu/bytecode/Type;
    .end local v16    # "comp":I
    :cond_a
    move/from16 v17, v5

    if-eqz v17, :cond_b

    move-object/from16 v17, v2

    :goto_4
    move-object/from16 v2, v17

    goto/16 :goto_0

    :cond_b
    move/from16 v17, v4

    if-eqz v17, :cond_c

    move-object/from16 v17, v3

    goto :goto_4

    :cond_c
    const/16 v17, 0x0

    goto :goto_4
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/MethodProc;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    array-length v4, v4

    invoke-static {v3, v4}, Lgnu/mapping/MethodProc;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 111
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v3

    move-object v2, v3

    .line 112
    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/MethodProc;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 113
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/mapping/MethodProc;
    return-object v0
.end method

.method public getParameterType(I)Lgnu/bytecode/Type;
    .locals 7

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/MethodProc;
    move v1, p1

    .local v1, "index":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/MethodProc;->argTypes:Ljava/lang/Object;

    instance-of v4, v4, [Lgnu/bytecode/Type;

    if-nez v4, :cond_0

    .line 62
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/mapping/MethodProc;->resolveParameterTypes()V

    .line 64
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/MethodProc;->argTypes:Ljava/lang/Object;

    check-cast v4, [Lgnu/bytecode/Type;

    check-cast v4, [Lgnu/bytecode/Type;

    move-object v2, v4

    .line 65
    .local v2, "atypes":[Lgnu/bytecode/Type;
    move v4, v1

    move-object v5, v2

    array-length v5, v5

    if-ge v4, v5, :cond_2

    move v4, v1

    move-object v5, v2

    array-length v5, v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    if-lt v4, v5, :cond_1

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/mapping/MethodProc;->maxArgs()I

    move-result v4

    if-ltz v4, :cond_2

    .line 67
    :cond_1
    move-object v4, v2

    move v5, v1

    aget-object v4, v4, v5

    move-object v0, v4

    .line 74
    .end local v0    # "this":Lgnu/mapping/MethodProc;
    :goto_0
    return-object v0

    .line 68
    .restart local v0    # "this":Lgnu/mapping/MethodProc;
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/mapping/MethodProc;->maxArgs()I

    move-result v4

    if-gez v4, :cond_3

    .line 70
    move-object v4, v2

    move-object v5, v2

    array-length v5, v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    move-object v3, v4

    .line 71
    .local v3, "rtype":Lgnu/bytecode/Type;
    move-object v4, v3

    instance-of v4, v4, Lgnu/bytecode/ArrayType;

    if-eqz v4, :cond_3

    .line 72
    move-object v4, v3

    check-cast v4, Lgnu/bytecode/ArrayType;

    invoke-virtual {v4}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 74
    .end local v3    # "rtype":Lgnu/bytecode/Type;
    :cond_3
    sget-object v4, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object v0, v4

    goto :goto_0
.end method

.method public isApplicable([Lgnu/bytecode/Type;)I
    .locals 11

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/MethodProc;
    move-object v1, p1

    .local v1, "argTypes":[Lgnu/bytecode/Type;
    move-object v8, v1

    array-length v8, v8

    move v2, v8

    .line 22
    .local v2, "argCount":I
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/mapping/MethodProc;->numArgs()I

    move-result v8

    move v3, v8

    .line 23
    .local v3, "num":I
    move v8, v2

    move v9, v3

    const/16 v10, 0xfff

    and-int/lit16 v9, v9, 0xfff

    if-lt v8, v9, :cond_0

    move v8, v3

    if-ltz v8, :cond_1

    move v8, v2

    move v9, v3

    const/16 v10, 0xc

    shr-int/lit8 v9, v9, 0xc

    if-le v8, v9, :cond_1

    .line 25
    :cond_0
    const/4 v8, -0x1

    move v0, v8

    .line 36
    .end local v0    # "this":Lgnu/mapping/MethodProc;
    :goto_0
    return v0

    .line 26
    .restart local v0    # "this":Lgnu/mapping/MethodProc;
    :cond_1
    const/4 v8, 0x1

    move v4, v8

    .line 27
    .local v4, "result":I
    move v8, v2

    move v5, v8

    .local v5, "i":I
    :goto_1
    add-int/lit8 v5, v5, -0x1

    move v8, v5

    if-ltz v8, :cond_4

    .line 29
    move-object v8, v0

    move v9, v5

    invoke-virtual {v8, v9}, Lgnu/mapping/MethodProc;->getParameterType(I)Lgnu/bytecode/Type;

    move-result-object v8

    move-object v6, v8

    .line 30
    .local v6, "ptype":Lgnu/bytecode/Type;
    move-object v8, v6

    move-object v9, v1

    move v10, v5

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v8

    move v7, v8

    .line 31
    .local v7, "code":I
    move v8, v7

    const/4 v9, -0x3

    if-ne v8, v9, :cond_2

    .line 32
    const/4 v8, -0x1

    move v0, v8

    goto :goto_0

    .line 33
    :cond_2
    move v8, v7

    if-gez v8, :cond_3

    .line 34
    const/4 v8, 0x0

    move v4, v8

    .line 35
    :cond_3
    goto :goto_1

    .line 36
    .end local v6    # "ptype":Lgnu/bytecode/Type;
    .end local v7    # "code":I
    :cond_4
    move v8, v4

    move v0, v8

    goto :goto_0
.end method

.method public numParameters()I
    .locals 6

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/MethodProc;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/mapping/MethodProc;->numArgs()I

    move-result v4

    move v1, v4

    .line 43
    .local v1, "num":I
    move v4, v1

    const/16 v5, 0xc

    shr-int/lit8 v4, v4, 0xc

    move v2, v4

    .line 44
    .local v2, "max":I
    move v4, v2

    if-ltz v4, :cond_0

    .line 45
    move v4, v2

    move v0, v4

    .line 48
    .end local v0    # "this":Lgnu/mapping/MethodProc;
    :goto_0
    return v0

    .line 47
    .restart local v0    # "this":Lgnu/mapping/MethodProc;
    :cond_0
    move v4, v1

    const/16 v5, 0xfff

    and-int/lit16 v4, v4, 0xfff

    move v3, v4

    .line 48
    .local v3, "min":I
    move v4, v3

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method protected resolveParameterTypes()V
    .locals 3

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/MethodProc;
    move-object v1, v0

    sget-object v2, Lgnu/mapping/MethodProc;->unknownArgTypes:[Lgnu/bytecode/Type;

    iput-object v2, v1, Lgnu/mapping/MethodProc;->argTypes:Ljava/lang/Object;

    .line 57
    return-void
.end method
