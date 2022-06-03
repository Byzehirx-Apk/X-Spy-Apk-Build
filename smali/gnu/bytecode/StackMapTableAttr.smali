.class public Lgnu/bytecode/StackMapTableAttr;
.super Lgnu/bytecode/MiscAttr;
.source "StackMapTableAttr.java"


# static fields
.field public static compressStackMapTable:Z


# instance fields
.field countLocals:I

.field countStack:I

.field encodedLocals:[I

.field encodedStack:[I

.field numEntries:I

.field prevPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lgnu/bytecode/StackMapTableAttr;->compressStackMapTable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/StackMapTableAttr;
    move-object v1, v0

    const-string/jumbo v2, "StackMapTable"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lgnu/bytecode/MiscAttr;-><init>(Ljava/lang/String;[BII)V

    .line 14
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lgnu/bytecode/StackMapTableAttr;->prevPosition:I

    .line 24
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 25
    return-void
.end method

.method public constructor <init>([BLgnu/bytecode/CodeAttr;)V
    .locals 8

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/StackMapTableAttr;
    move-object v1, p1

    .local v1, "data":[B
    move-object v2, p2

    .local v2, "code":Lgnu/bytecode/CodeAttr;
    move-object v3, v0

    const-string/jumbo v4, "StackMapTable"

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v1

    array-length v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/bytecode/MiscAttr;-><init>(Ljava/lang/String;[BII)V

    .line 14
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lgnu/bytecode/StackMapTableAttr;->prevPosition:I

    .line 31
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/StackMapTableAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 32
    move-object v3, v0

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgnu/bytecode/StackMapTableAttr;->u2(I)I

    move-result v4

    iput v4, v3, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    .line 33
    return-void
.end method

.method static reallocBuffer([II)[I
    .locals 8

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "buffer":[I
    move v1, p1

    .local v1, "needed":I
    move-object v3, v0

    if-nez v3, :cond_1

    .line 259
    move v3, v1

    const/16 v4, 0xa

    add-int/lit8 v3, v3, 0xa

    new-array v3, v3, [I

    move-object v0, v3

    .line 266
    :cond_0
    :goto_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "buffer":[I
    return-object v0

    .line 260
    .restart local v0    # "buffer":[I
    :cond_1
    move v3, v1

    move-object v4, v0

    array-length v4, v4

    if-le v3, v4, :cond_0

    .line 262
    move v3, v1

    const/16 v4, 0xa

    add-int/lit8 v3, v3, 0xa

    new-array v3, v3, [I

    move-object v2, v3

    .line 263
    .local v2, "tmp":[I
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method public emitStackMapEntry(Lgnu/bytecode/Label;Lgnu/bytecode/CodeAttr;)V
    .locals 21

    .prologue
    .line 100
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/bytecode/StackMapTableAttr;
    move-object/from16 v2, p1

    .local v2, "label":Lgnu/bytecode/Label;
    move-object/from16 v3, p2

    .local v3, "code":Lgnu/bytecode/CodeAttr;
    move-object v15, v2

    iget v15, v15, Lgnu/bytecode/Label;->position:I

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->prevPosition:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    move v4, v15

    .line 101
    .local v4, "offset_delta":I
    const/4 v15, 0x0

    move v5, v15

    .line 102
    .local v5, "matchingLocals":I
    move-object v15, v2

    iget-object v15, v15, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    array-length v15, v15

    move v6, v15

    .line 103
    .local v6, "rawLocalsCount":I
    move v15, v6

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    .line 105
    move v15, v6

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int v15, v15, v16

    new-array v15, v15, [I

    move-object v7, v15

    .line 106
    .local v7, "tmp":[I
    move-object v15, v1

    iget-object v15, v15, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    const/16 v16, 0x0

    move-object/from16 v17, v7

    const/16 v18, 0x0

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    move/from16 v19, v0

    invoke-static/range {v15 .. v19}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    move-object v15, v1

    move-object/from16 v16, v7

    move-object/from16 v0, v16

    iput-object v0, v15, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    .line 109
    .end local v7    # "tmp":[I
    :cond_0
    move-object v15, v2

    iget-object v15, v15, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    array-length v15, v15

    move v7, v15

    .line 110
    .local v7, "rawStackCount":I
    move v15, v7

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_1

    .line 112
    move v15, v7

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int v15, v15, v16

    new-array v15, v15, [I

    move-object v8, v15

    .line 113
    .local v8, "tmp":[I
    move-object v15, v1

    iget-object v15, v15, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    const/16 v16, 0x0

    move-object/from16 v17, v8

    const/16 v18, 0x0

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->countStack:I

    move/from16 v19, v0

    invoke-static/range {v15 .. v19}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    move-object v15, v1

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iput-object v0, v15, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    .line 116
    .end local v8    # "tmp":[I
    :cond_1
    const/4 v15, 0x0

    move v8, v15

    .line 117
    .local v8, "unchangedLocals":I
    const/4 v15, 0x0

    move v9, v15

    .line 118
    .local v9, "curLocalsCount":I
    const/4 v15, 0x0

    move v10, v15

    .local v10, "i":I
    :goto_0
    move v15, v10

    move/from16 v16, v6

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    .line 120
    move-object v15, v1

    iget-object v15, v15, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move/from16 v16, v9

    aget v15, v15, v16

    move v11, v15

    .line 121
    .local v11, "prevType":I
    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    move-object/from16 v16, v0

    move/from16 v17, v10

    aget-object v16, v16, v17

    move-object/from16 v17, v3

    invoke-virtual/range {v15 .. v17}, Lgnu/bytecode/StackMapTableAttr;->encodeVerificationType(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)I

    move-result v15

    move v12, v15

    .line 123
    .local v12, "nextType":I
    move v15, v11

    move/from16 v16, v12

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    move v15, v8

    move/from16 v16, v9

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 124
    move v15, v9

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    move v8, v15

    .line 125
    :cond_2
    move-object v15, v1

    iget-object v15, v15, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move/from16 v16, v9

    add-int/lit8 v9, v9, 0x1

    move/from16 v17, v12

    aput v17, v15, v16

    .line 126
    move v15, v12

    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    move v15, v12

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 127
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 118
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 129
    .end local v11    # "prevType":I
    .end local v12    # "nextType":I
    :cond_5
    :goto_1
    move v15, v9

    if-lez v15, :cond_6

    move-object v15, v1

    iget-object v15, v15, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move/from16 v16, v9

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    aget v15, v15, v16

    if-nez v15, :cond_6

    .line 130
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 131
    :cond_6
    const/4 v15, 0x0

    move v10, v15

    .line 132
    .local v10, "curStackCount":I
    const/4 v15, 0x0

    move v11, v15

    .local v11, "i":I
    :goto_2
    move v15, v11

    move/from16 v16, v7

    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    .line 134
    move-object v15, v1

    iget-object v15, v15, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    move/from16 v16, v10

    aget v15, v15, v16

    move v12, v15

    .line 135
    .local v12, "prevType":I
    move-object v15, v2

    iget-object v15, v15, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    move/from16 v16, v11

    aget-object v15, v15, v16

    move-object v13, v15

    .line 136
    .local v13, "t":Lgnu/bytecode/Type;
    move-object v15, v13

    sget-object v16, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 137
    move-object v15, v2

    iget-object v15, v15, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v11

    aget-object v15, v15, v16

    move-object v13, v15

    .line 138
    :cond_7
    move-object v15, v1

    move-object/from16 v16, v13

    move-object/from16 v17, v3

    invoke-virtual/range {v15 .. v17}, Lgnu/bytecode/StackMapTableAttr;->encodeVerificationType(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)I

    move-result v15

    move v14, v15

    .line 139
    .local v14, "nextType":I
    move-object v15, v1

    iget-object v15, v15, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    move/from16 v16, v10

    add-int/lit8 v10, v10, 0x1

    move/from16 v17, v14

    aput v17, v15, v16

    .line 132
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 141
    .end local v12    # "prevType":I
    .end local v13    # "t":Lgnu/bytecode/Type;
    .end local v14    # "nextType":I
    :cond_8
    move v15, v9

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move v11, v15

    .line 142
    .local v11, "localsDelta":I
    sget-boolean v15, Lgnu/bytecode/StackMapTableAttr;->compressStackMapTable:Z

    if-eqz v15, :cond_d

    move v15, v11

    if-nez v15, :cond_d

    move v15, v9

    move/from16 v16, v8

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    move v15, v10

    const/16 v16, 0x1

    move/from16 v0, v16

    if-gt v15, v0, :cond_d

    .line 145
    move v15, v10

    if-nez v15, :cond_b

    .line 147
    move v15, v4

    const/16 v16, 0x3f

    move/from16 v0, v16

    if-gt v15, v0, :cond_a

    .line 148
    move-object v15, v1

    move/from16 v16, v4

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 195
    :cond_9
    :goto_3
    move-object v15, v1

    move/from16 v16, v9

    move/from16 v0, v16

    iput v0, v15, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    .line 196
    move-object v15, v1

    move/from16 v16, v10

    move/from16 v0, v16

    iput v0, v15, Lgnu/bytecode/StackMapTableAttr;->countStack:I

    .line 197
    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Lgnu/bytecode/StackMapTableAttr;->prevPosition:I

    .line 198
    move-object v15, v1

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    move-object/from16 v0, v16

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    move/from16 v16, v0

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v15, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    .line 199
    return-void

    .line 151
    :cond_a
    move-object v15, v1

    const/16 v16, 0xfb

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 152
    move-object v15, v1

    move/from16 v16, v4

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    goto :goto_3

    .line 157
    :cond_b
    move v15, v4

    const/16 v16, 0x3f

    move/from16 v0, v16

    if-gt v15, v0, :cond_c

    .line 158
    move-object v15, v1

    const/16 v16, 0x40

    move/from16 v17, v4

    add-int v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 164
    :goto_4
    move-object v15, v1

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/StackMapTableAttr;->emitVerificationType(I)V

    goto :goto_3

    .line 161
    :cond_c
    move-object v15, v1

    const/16 v16, 0xf7

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 162
    move-object v15, v1

    move/from16 v16, v4

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    goto :goto_4

    .line 167
    :cond_d
    sget-boolean v15, Lgnu/bytecode/StackMapTableAttr;->compressStackMapTable:Z

    if-eqz v15, :cond_e

    move v15, v10

    if-nez v15, :cond_e

    move v15, v9

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_e

    move v15, v8

    move/from16 v16, v9

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    move v15, v11

    const/16 v16, -0x3

    move/from16 v0, v16

    if-lt v15, v0, :cond_e

    .line 172
    move-object v15, v1

    const/16 v16, 0xfb

    move/from16 v17, v11

    add-int v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 173
    move-object v15, v1

    move/from16 v16, v4

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    goto/16 :goto_3

    .line 175
    :cond_e
    sget-boolean v15, Lgnu/bytecode/StackMapTableAttr;->compressStackMapTable:Z

    if-eqz v15, :cond_10

    move v15, v10

    if-nez v15, :cond_10

    move-object v15, v1

    iget v15, v15, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    move/from16 v16, v8

    move/from16 v0, v16

    if-ne v15, v0, :cond_10

    move v15, v11

    const/16 v16, 0x3

    move/from16 v0, v16

    if-gt v15, v0, :cond_10

    .line 179
    move-object v15, v1

    const/16 v16, 0xfb

    move/from16 v17, v11

    add-int v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 180
    move-object v15, v1

    move/from16 v16, v4

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 181
    const/4 v15, 0x0

    move v12, v15

    .local v12, "i":I
    :goto_5
    move v15, v12

    move/from16 v16, v11

    move/from16 v0, v16

    if-ge v15, v0, :cond_f

    .line 182
    move-object v15, v1

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move-object/from16 v16, v0

    move/from16 v17, v8

    move/from16 v18, v12

    add-int v17, v17, v18

    aget v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/StackMapTableAttr;->emitVerificationType(I)V

    .line 181
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_f
    goto/16 :goto_3

    .line 186
    .end local v12    # "i":I
    :cond_10
    move-object v15, v1

    const/16 v16, 0xff

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 187
    move-object v15, v1

    move/from16 v16, v4

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 188
    move-object v15, v1

    move/from16 v16, v9

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 189
    const/4 v15, 0x0

    move v12, v15

    .restart local v12    # "i":I
    :goto_6
    move v15, v12

    move/from16 v16, v9

    move/from16 v0, v16

    if-ge v15, v0, :cond_11

    .line 190
    move-object v15, v1

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move-object/from16 v16, v0

    move/from16 v17, v12

    aget v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/StackMapTableAttr;->emitVerificationType(I)V

    .line 189
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 191
    :cond_11
    move-object v15, v1

    move/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 192
    const/4 v15, 0x0

    move v12, v15

    :goto_7
    move v15, v12

    move/from16 v16, v10

    move/from16 v0, v16

    if-ge v15, v0, :cond_9

    .line 193
    move-object v15, v1

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    move-object/from16 v16, v0

    move/from16 v17, v12

    aget v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/StackMapTableAttr;->emitVerificationType(I)V

    .line 192
    add-int/lit8 v12, v12, 0x1

    goto :goto_7
.end method

.method emitVerificationType(I)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/StackMapTableAttr;
    move v1, p1

    .local v1, "encoding":I
    move v3, v1

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    move v2, v3

    .line 49
    .local v2, "tag":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 50
    move v3, v2

    const/4 v4, 0x7

    if-lt v3, v4, :cond_0

    .line 51
    move-object v3, v0

    move v4, v1

    const/16 v5, 0x8

    shr-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 52
    :cond_0
    return-void
.end method

.method encodeVerificationType(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)I
    .locals 7

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/StackMapTableAttr;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move-object v2, p2

    .local v2, "code":Lgnu/bytecode/CodeAttr;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 58
    const/4 v5, 0x0

    move v0, v5

    .line 90
    .end local v0    # "this":Lgnu/bytecode/StackMapTableAttr;
    :goto_0
    return v0

    .line 59
    .restart local v0    # "this":Lgnu/bytecode/StackMapTableAttr;
    :cond_0
    move-object v5, v1

    instance-of v5, v5, Lgnu/bytecode/UninitializedType;

    if-eqz v5, :cond_2

    .line 61
    move-object v5, v1

    check-cast v5, Lgnu/bytecode/UninitializedType;

    move-object v3, v5

    .line 62
    .local v3, "utype":Lgnu/bytecode/UninitializedType;
    move-object v5, v3

    iget-object v5, v5, Lgnu/bytecode/UninitializedType;->label:Lgnu/bytecode/Label;

    move-object v4, v5

    .line 63
    .local v4, "label":Lgnu/bytecode/Label;
    move-object v5, v4

    if-nez v5, :cond_1

    .line 64
    const/4 v5, 0x6

    move v0, v5

    goto :goto_0

    .line 66
    :cond_1
    move-object v5, v4

    iget v5, v5, Lgnu/bytecode/Label;->position:I

    const/16 v6, 0x8

    shl-int/lit8 v5, v5, 0x8

    const/16 v6, 0x8

    or-int/lit8 v5, v5, 0x8

    move v0, v5

    goto :goto_0

    .line 70
    .end local v3    # "utype":Lgnu/bytecode/UninitializedType;
    .end local v4    # "label":Lgnu/bytecode/Label;
    :cond_2
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v5

    move-object v1, v5

    .line 71
    move-object v5, v1

    instance-of v5, v5, Lgnu/bytecode/PrimType;

    if-eqz v5, :cond_3

    .line 73
    move-object v5, v1

    iget-object v5, v5, Lgnu/bytecode/Type;->signature:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 84
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 76
    :sswitch_0
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 78
    :sswitch_1
    const/4 v5, 0x4

    move v0, v5

    goto :goto_0

    .line 80
    :sswitch_2
    const/4 v5, 0x2

    move v0, v5

    goto :goto_0

    .line 82
    :sswitch_3
    const/4 v5, 0x3

    move v0, v5

    goto :goto_0

    .line 87
    :cond_3
    move-object v5, v1

    sget-object v6, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    if-ne v5, v6, :cond_4

    .line 88
    const/4 v5, 0x5

    move v0, v5

    goto :goto_0

    .line 90
    :cond_4
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v5

    move-object v6, v1

    check-cast v6, Lgnu/bytecode/ObjectType;

    invoke-virtual {v5, v6}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v5

    iget v5, v5, Lgnu/bytecode/CpoolClass;->index:I

    const/16 v6, 0x8

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x7

    or-int/lit8 v5, v5, 0x7

    move v0, v5

    goto :goto_0

    .line 73
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x44 -> :sswitch_3
        0x46 -> :sswitch_2
        0x49 -> :sswitch_0
        0x4a -> :sswitch_1
        0x53 -> :sswitch_0
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method extractVerificationType(II)I
    .locals 7

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/StackMapTableAttr;
    move v1, p1

    .local v1, "startOffset":I
    move v2, p2

    .local v2, "tag":I
    move v4, v2

    const/4 v5, 0x7

    if-eq v4, v5, :cond_0

    move v4, v2

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 250
    :cond_0
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/bytecode/StackMapTableAttr;->u2(I)I

    move-result v4

    move v3, v4

    .line 251
    .local v3, "value":I
    move v4, v2

    move v5, v3

    const/16 v6, 0x8

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    move v2, v4

    .line 253
    .end local v3    # "value":I
    :cond_1
    move v4, v2

    move v0, v4

    .end local v0    # "this":Lgnu/bytecode/StackMapTableAttr;
    return v0
.end method

.method extractVerificationTypes(III[I)I
    .locals 11

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/StackMapTableAttr;
    move v1, p1

    .local v1, "startOffset":I
    move v2, p2

    .local v2, "count":I
    move v3, p3

    .local v3, "startIndex":I
    move-object v4, p4

    .local v4, "buffer":[I
    move v8, v1

    move v5, v8

    .line 273
    .local v5, "offset":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    move v8, v2

    if-ltz v8, :cond_3

    .line 276
    move v8, v5

    move-object v9, v0

    iget v9, v9, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    if-lt v8, v9, :cond_0

    .line 277
    const/4 v8, -0x1

    move v6, v8

    .line 284
    .local v6, "encoding":I
    :goto_1
    move-object v8, v4

    move v9, v3

    add-int/lit8 v3, v3, 0x1

    move v10, v6

    aput v10, v8, v9

    .line 285
    goto :goto_0

    .line 280
    .end local v6    # "encoding":I
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lgnu/bytecode/StackMapTableAttr;->data:[B

    move v9, v5

    aget-byte v8, v8, v9

    move v7, v8

    .line 281
    .local v7, "tag":I
    move-object v8, v0

    move v9, v5

    move v10, v7

    invoke-virtual {v8, v9, v10}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationType(II)I

    move-result v8

    move v6, v8

    .line 282
    .restart local v6    # "encoding":I
    move v8, v5

    move v9, v7

    const/4 v10, 0x7

    if-eq v9, v10, :cond_1

    move v9, v7

    const/16 v10, 0x8

    if-ne v9, v10, :cond_2

    :cond_1
    const/4 v9, 0x3

    :goto_2
    add-int/2addr v8, v9

    move v5, v8

    goto :goto_1

    :cond_2
    const/4 v9, 0x1

    goto :goto_2

    .line 286
    .end local v6    # "encoding":I
    .end local v7    # "tag":I
    :cond_3
    move v8, v5

    move v0, v8

    .end local v0    # "this":Lgnu/bytecode/StackMapTableAttr;
    return v0
.end method

.method public getMethod()Lgnu/bytecode/Method;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/StackMapTableAttr;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/StackMapTableAttr;->container:Lgnu/bytecode/AttrContainer;

    check-cast v1, Lgnu/bytecode/CodeAttr;

    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/StackMapTableAttr;
    return-object v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 21

    .prologue
    .line 325
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/bytecode/StackMapTableAttr;
    move-object/from16 v3, p1

    .local v3, "dst":Lgnu/bytecode/ClassTypeWriter;
    move-object/from16 v16, v3

    const-string/jumbo v17, "Attribute \""

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 326
    move-object/from16 v16, v3

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lgnu/bytecode/StackMapTableAttr;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 327
    move-object/from16 v16, v3

    const-string/jumbo v17, "\", length:"

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 328
    move-object/from16 v16, v3

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lgnu/bytecode/StackMapTableAttr;->getLength()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 329
    move-object/from16 v16, v3

    const-string/jumbo v17, ", number of entries: "

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 330
    move-object/from16 v16, v3

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 331
    const/16 v16, 0x2

    move/from16 v4, v16

    .line 332
    .local v4, "ipos":I
    const/16 v16, -0x1

    move/from16 v5, v16

    .line 333
    .local v5, "pc_offset":I
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Lgnu/bytecode/StackMapTableAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v16

    move-object/from16 v6, v16

    .line 334
    .local v6, "method":Lgnu/bytecode/Method;
    const/16 v16, 0x0

    move-object/from16 v7, v16

    .line 335
    .local v7, "encodedTypes":[I
    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v16, 0x0

    :goto_0
    move-object/from16 v17, v6

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v8, v16

    .line 336
    .local v8, "curLocals":I
    const/16 v16, 0x0

    move/from16 v9, v16

    .line 337
    .local v9, "curStack":I
    const/16 v16, 0x0

    move/from16 v10, v16

    .local v10, "i":I
    :goto_1
    move/from16 v16, v10

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 339
    move/from16 v16, v4

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_2

    .line 341
    const/16 v16, -0x1

    move/from16 v10, v16

    .line 448
    :cond_0
    :goto_2
    return-void

    .line 335
    .end local v8    # "curLocals":I
    .end local v9    # "curStack":I
    .end local v10    # "i":I
    :cond_1
    const/16 v16, 0x1

    goto :goto_0

    .line 344
    .restart local v8    # "curLocals":I
    .restart local v9    # "curStack":I
    .restart local v10    # "i":I
    :cond_2
    move-object/from16 v16, v2

    move/from16 v17, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/StackMapTableAttr;->u1(I)I

    move-result v16

    move/from16 v11, v16

    .line 345
    .local v11, "tag":I
    add-int/lit8 v5, v5, 0x1

    .line 346
    const/16 v16, -0x1

    move/from16 v12, v16

    .line 347
    .local v12, "delta":I
    move/from16 v16, v11

    const/16 v17, 0x7f

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_3

    .line 348
    move/from16 v16, v5

    move/from16 v17, v11

    const/16 v18, 0x3f

    and-int/lit8 v17, v17, 0x3f

    add-int v16, v16, v17

    move/from16 v5, v16

    .line 360
    :goto_3
    move-object/from16 v16, v3

    const-string/jumbo v17, "  offset: "

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 361
    move-object/from16 v16, v3

    move/from16 v17, v5

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 362
    move/from16 v16, v11

    const/16 v17, 0x3f

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_5

    .line 364
    move-object/from16 v16, v3

    const-string/jumbo v17, " - same_frame"

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 365
    const/16 v16, 0x0

    move/from16 v9, v16

    .line 442
    :goto_4
    move/from16 v16, v4

    if-gez v16, :cond_10

    .line 444
    move-object/from16 v16, v3

    const-string/jumbo v17, "<ERROR - missing data>"

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 445
    goto :goto_2

    .line 349
    :cond_3
    move/from16 v16, v4

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    .line 351
    const/16 v16, -0x1

    move/from16 v4, v16

    .line 352
    goto :goto_2

    .line 356
    :cond_4
    move-object/from16 v16, v2

    move/from16 v17, v4

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/StackMapTableAttr;->u2(I)I

    move-result v16

    move/from16 v12, v16

    .line 357
    move/from16 v16, v5

    move/from16 v17, v12

    add-int v16, v16, v17

    move/from16 v5, v16

    .line 358
    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 367
    :cond_5
    move/from16 v16, v11

    const/16 v17, 0x7f

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    move/from16 v16, v11

    const/16 v17, 0xf7

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 369
    :cond_6
    move-object/from16 v16, v3

    move/from16 v17, v11

    const/16 v18, 0x7f

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_7

    const-string/jumbo v17, " - same_locals_1_stack_item_frame"

    :goto_5
    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 371
    move-object/from16 v16, v7

    const/16 v17, 0x1

    invoke-static/range {v16 .. v17}, Lgnu/bytecode/StackMapTableAttr;->reallocBuffer([II)[I

    move-result-object v16

    move-object/from16 v7, v16

    .line 372
    move-object/from16 v16, v2

    move/from16 v17, v4

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v20, v7

    invoke-virtual/range {v16 .. v20}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationTypes(III[I)I

    move-result v16

    move/from16 v4, v16

    .line 373
    move-object/from16 v16, v2

    move-object/from16 v17, v7

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v20, v3

    invoke-virtual/range {v16 .. v20}, Lgnu/bytecode/StackMapTableAttr;->printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V

    .line 374
    const/16 v16, 0x1

    move/from16 v9, v16

    goto/16 :goto_4

    .line 369
    :cond_7
    const-string/jumbo v17, " - same_locals_1_stack_item_frame_extended"

    goto :goto_5

    .line 376
    :cond_8
    move/from16 v16, v11

    const/16 v17, 0xf6

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_9

    .line 378
    move-object/from16 v16, v3

    const-string/jumbo v17, " - tag reserved for future use - "

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 379
    move-object/from16 v16, v3

    move/from16 v17, v11

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 380
    goto/16 :goto_2

    .line 382
    :cond_9
    move/from16 v16, v11

    const/16 v17, 0xfa

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_a

    .line 384
    const/16 v16, 0xfb

    move/from16 v17, v11

    move/from16 v0, v17

    rsub-int v0, v0, 0xfb

    move/from16 v16, v0

    move/from16 v13, v16

    .line 385
    .local v13, "count":I
    move-object/from16 v16, v3

    const-string/jumbo v17, " - chop_frame - undefine "

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 386
    move-object/from16 v16, v3

    move/from16 v17, v13

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 387
    move-object/from16 v16, v3

    const-string/jumbo v17, " locals"

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 388
    move/from16 v16, v8

    move/from16 v17, v13

    sub-int v16, v16, v17

    move/from16 v8, v16

    .line 389
    const/16 v16, 0x0

    move/from16 v9, v16

    .line 390
    goto/16 :goto_4

    .line 391
    .end local v13    # "count":I
    :cond_a
    move/from16 v16, v11

    const/16 v17, 0xfb

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 393
    move-object/from16 v16, v3

    const-string/jumbo v17, " - same_frame_extended"

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 394
    const/16 v16, 0x0

    move/from16 v9, v16

    goto/16 :goto_4

    .line 396
    :cond_b
    move/from16 v16, v11

    const/16 v17, 0xfe

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_c

    .line 398
    move/from16 v16, v11

    const/16 v17, 0xfb

    move/from16 v0, v16

    add-int/lit16 v0, v0, -0xfb

    move/from16 v16, v0

    move/from16 v13, v16

    .line 399
    .restart local v13    # "count":I
    move-object/from16 v16, v3

    const-string/jumbo v17, " - append_frame - define "

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 400
    move-object/from16 v16, v3

    move/from16 v17, v13

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 401
    move-object/from16 v16, v3

    const-string/jumbo v17, " more locals"

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 402
    move-object/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v13

    add-int v17, v17, v18

    invoke-static/range {v16 .. v17}, Lgnu/bytecode/StackMapTableAttr;->reallocBuffer([II)[I

    move-result-object v16

    move-object/from16 v7, v16

    .line 403
    move-object/from16 v16, v2

    move/from16 v17, v4

    move/from16 v18, v13

    move/from16 v19, v8

    move-object/from16 v20, v7

    invoke-virtual/range {v16 .. v20}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationTypes(III[I)I

    move-result v16

    move/from16 v4, v16

    .line 404
    move-object/from16 v16, v2

    move-object/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v13

    move-object/from16 v20, v3

    invoke-virtual/range {v16 .. v20}, Lgnu/bytecode/StackMapTableAttr;->printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V

    .line 405
    move/from16 v16, v8

    move/from16 v17, v13

    add-int v16, v16, v17

    move/from16 v8, v16

    .line 406
    const/16 v16, 0x0

    move/from16 v9, v16

    .line 407
    goto/16 :goto_4

    .line 410
    .end local v13    # "count":I
    :cond_c
    move/from16 v16, v4

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_d

    .line 412
    const/16 v16, -0x1

    move/from16 v4, v16

    .line 413
    goto/16 :goto_2

    .line 415
    :cond_d
    move-object/from16 v16, v2

    move/from16 v17, v4

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/StackMapTableAttr;->u2(I)I

    move-result v16

    move/from16 v13, v16

    .line 416
    .local v13, "num_locals":I
    add-int/lit8 v4, v4, 0x2

    .line 417
    move-object/from16 v16, v3

    const-string/jumbo v17, " - full_frame.  Locals count: "

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 418
    move-object/from16 v16, v3

    move/from16 v17, v13

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 419
    move-object/from16 v16, v7

    move/from16 v17, v13

    invoke-static/range {v16 .. v17}, Lgnu/bytecode/StackMapTableAttr;->reallocBuffer([II)[I

    move-result-object v16

    move-object/from16 v7, v16

    .line 420
    move-object/from16 v16, v2

    move/from16 v17, v4

    move/from16 v18, v13

    const/16 v19, 0x0

    move-object/from16 v20, v7

    invoke-virtual/range {v16 .. v20}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationTypes(III[I)I

    move-result v16

    move/from16 v4, v16

    .line 421
    move-object/from16 v16, v2

    move-object/from16 v17, v7

    const/16 v18, 0x0

    move/from16 v19, v13

    move-object/from16 v20, v3

    invoke-virtual/range {v16 .. v20}, Lgnu/bytecode/StackMapTableAttr;->printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V

    .line 422
    move/from16 v16, v13

    move/from16 v8, v16

    .line 423
    move/from16 v16, v4

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_e

    .line 425
    const/16 v16, -0x1

    move/from16 v4, v16

    .line 426
    goto/16 :goto_2

    .line 428
    :cond_e
    move-object/from16 v16, v2

    move/from16 v17, v4

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/StackMapTableAttr;->u2(I)I

    move-result v16

    move/from16 v14, v16

    .line 429
    .local v14, "num_stack":I
    add-int/lit8 v4, v4, 0x2

    .line 430
    move-object/from16 v16, v3

    const-string/jumbo v17, "    (end of locals)"

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 432
    move/from16 v16, v5

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v15, v16

    .line 433
    .local v15, "nspaces":I
    :goto_6
    add-int/lit8 v15, v15, -0x1

    move/from16 v16, v15

    if-ltz v16, :cond_f

    .line 434
    move-object/from16 v16, v3

    const/16 v17, 0x20

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_6

    .line 435
    :cond_f
    move-object/from16 v16, v3

    const-string/jumbo v17, "       Stack count: "

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 436
    move-object/from16 v16, v3

    move/from16 v17, v14

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 437
    move-object/from16 v16, v7

    move/from16 v17, v14

    invoke-static/range {v16 .. v17}, Lgnu/bytecode/StackMapTableAttr;->reallocBuffer([II)[I

    move-result-object v16

    move-object/from16 v7, v16

    .line 438
    move-object/from16 v16, v2

    move/from16 v17, v4

    move/from16 v18, v14

    const/16 v19, 0x0

    move-object/from16 v20, v7

    invoke-virtual/range {v16 .. v20}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationTypes(III[I)I

    move-result v16

    move/from16 v4, v16

    .line 439
    move-object/from16 v16, v2

    move-object/from16 v17, v7

    const/16 v18, 0x0

    move/from16 v19, v14

    move-object/from16 v20, v3

    invoke-virtual/range {v16 .. v20}, Lgnu/bytecode/StackMapTableAttr;->printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V

    .line 440
    move/from16 v16, v14

    move/from16 v9, v16

    goto/16 :goto_4

    .line 337
    .end local v13    # "num_locals":I
    .end local v14    # "num_stack":I
    .end local v15    # "nspaces":I
    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1
.end method

.method printVerificationType(ILgnu/bytecode/ClassTypeWriter;)V
    .locals 10

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/StackMapTableAttr;
    move v1, p1

    .local v1, "encoding":I
    move-object v2, p2

    .local v2, "dst":Lgnu/bytecode/ClassTypeWriter;
    move v6, v1

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    move v3, v6

    .line 204
    .local v3, "tag":I
    move v6, v3

    packed-switch v6, :pswitch_data_0

    .line 238
    move-object v6, v2

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "<bad verification type tag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3e

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 240
    :goto_0
    return-void

    .line 207
    :pswitch_0
    move-object v6, v2

    const-string/jumbo v7, "top/unavailable"

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 208
    goto :goto_0

    .line 210
    :pswitch_1
    move-object v6, v2

    const-string/jumbo v7, "integer"

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 211
    goto :goto_0

    .line 213
    :pswitch_2
    move-object v6, v2

    const-string/jumbo v7, "float"

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 214
    goto :goto_0

    .line 216
    :pswitch_3
    move-object v6, v2

    const-string/jumbo v7, "double"

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 217
    goto :goto_0

    .line 219
    :pswitch_4
    move-object v6, v2

    const-string/jumbo v7, "long"

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 220
    goto :goto_0

    .line 222
    :pswitch_5
    move-object v6, v2

    const-string/jumbo v7, "null"

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 223
    goto :goto_0

    .line 225
    :pswitch_6
    move-object v6, v2

    const-string/jumbo v7, "uninitialized this"

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 226
    goto :goto_0

    .line 228
    :pswitch_7
    move v6, v1

    const/16 v7, 0x8

    shr-int/lit8 v6, v6, 0x8

    move v4, v6

    .line 229
    .local v4, "index":I
    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 230
    move-object v6, v2

    move v7, v4

    const/4 v8, 0x7

    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    .line 231
    goto :goto_0

    .line 233
    .end local v4    # "index":I
    :pswitch_8
    move v6, v1

    const/16 v7, 0x8

    shr-int/lit8 v6, v6, 0x8

    move v5, v6

    .line 234
    .local v5, "offset":I
    move-object v6, v2

    const-string/jumbo v7, "uninitialized object created at "

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 235
    move-object v6, v2

    move v7, v5

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 236
    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V
    .locals 12

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/StackMapTableAttr;
    move-object v1, p1

    .local v1, "encodings":[I
    move v2, p2

    .local v2, "startIndex":I
    move v3, p3

    .local v3, "count":I
    move-object/from16 v4, p4

    .local v4, "dst":Lgnu/bytecode/ClassTypeWriter;
    const/4 v9, 0x0

    move v5, v9

    .line 297
    .local v5, "regno":I
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_0
    move v9, v6

    move v10, v2

    move v11, v3

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_5

    .line 299
    move-object v9, v1

    move v10, v6

    aget v9, v9, v10

    move v7, v9

    .line 300
    .local v7, "encoding":I
    move v9, v7

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    move v8, v9

    .line 301
    .local v8, "tag":I
    move v9, v6

    move v10, v2

    if-lt v9, v10, :cond_0

    .line 303
    move-object v9, v4

    const-string/jumbo v10, "  "

    invoke-virtual {v9, v10}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 304
    move v9, v5

    const/16 v10, 0x64

    if-lt v9, v10, :cond_3

    .line 305
    .line 312
    :goto_1
    move-object v9, v4

    move v10, v5

    invoke-virtual {v9, v10}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 313
    move-object v9, v4

    const-string/jumbo v10, ": "

    invoke-virtual {v9, v10}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 314
    move-object v9, v0

    move v10, v7

    move-object v11, v4

    invoke-virtual {v9, v10, v11}, Lgnu/bytecode/StackMapTableAttr;->printVerificationType(ILgnu/bytecode/ClassTypeWriter;)V

    .line 315
    move-object v9, v4

    invoke-virtual {v9}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 317
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 318
    move v9, v8

    const/4 v10, 0x3

    if-eq v9, v10, :cond_1

    move v9, v8

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    .line 319
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 297
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 308
    :cond_3
    move v9, v5

    const/16 v10, 0xa

    if-ge v9, v10, :cond_4

    .line 309
    move-object v9, v4

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 310
    :cond_4
    move-object v9, v4

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_1

    .line 321
    .end local v7    # "encoding":I
    .end local v8    # "tag":I
    :cond_5
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/StackMapTableAttr;
    move-object v1, p1

    .local v1, "dstr":Ljava/io/DataOutputStream;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/StackMapTableAttr;->put2(II)V

    .line 43
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/bytecode/MiscAttr;->write(Ljava/io/DataOutputStream;)V

    .line 44
    return-void
.end method
