.class public Lgnu/bytecode/ClassFileInput;
.super Ljava/io/DataInputStream;
.source "ClassFileInput.java"


# instance fields
.field ctype:Lgnu/bytecode/ClassType;

.field str:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/io/InputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassFileInput;
    move-object v1, p1

    .local v1, "ctype":Lgnu/bytecode/ClassType;
    move-object v2, p2

    .local v2, "str":Ljava/io/InputStream;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 28
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    .line 29
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/ClassFileInput;->readHeader()Z

    move-result v3

    if-nez v3, :cond_0

    .line 30
    new-instance v3, Ljava/lang/ClassFormatError;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "invalid magic number"

    invoke-direct {v4, v5}, Ljava/lang/ClassFormatError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 31
    :cond_0
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/ClassFileInput;->readConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v4

    iput-object v4, v3, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 32
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/ClassFileInput;->readClassInfo()V

    .line 33
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/ClassFileInput;->readFields()V

    .line 34
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/ClassFileInput;->readMethods()V

    .line 35
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassFileInput;->readAttributes(Lgnu/bytecode/AttrContainer;)I

    move-result v3

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassFileInput;
    move-object v1, p1

    .local v1, "str":Ljava/io/InputStream;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 22
    return-void
.end method

.method public static readClassType(Ljava/io/InputStream;)Lgnu/bytecode/ClassType;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "str":Ljava/io/InputStream;
    new-instance v2, Lgnu/bytecode/ClassType;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lgnu/bytecode/ClassType;-><init>()V

    move-object v1, v2

    .line 45
    .local v1, "ctype":Lgnu/bytecode/ClassType;
    new-instance v2, Lgnu/bytecode/ClassFileInput;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    invoke-direct {v3, v4, v5}, Lgnu/bytecode/ClassFileInput;-><init>(Lgnu/bytecode/ClassType;Ljava/io/InputStream;)V

    .line 46
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "str":Ljava/io/InputStream;
    return-object v0
.end method


# virtual methods
.method getClassConstant(I)Lgnu/bytecode/CpoolClass;
    .locals 5

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassFileInput;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget-object v2, v2, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    move v3, v1

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/CpoolClass;

    move-object v0, v2

    .end local v0    # "this":Lgnu/bytecode/ClassFileInput;
    return-object v0
.end method

.method public readAttribute(Ljava/lang/String;ILgnu/bytecode/AttrContainer;)Lgnu/bytecode/Attribute;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/bytecode/ClassFileInput;
    move-object/from16 v3, p1

    .local v3, "name":Ljava/lang/String;
    move/from16 v4, p2

    .local v4, "length":I
    move-object/from16 v5, p3

    .local v5, "container":Lgnu/bytecode/AttrContainer;
    move-object/from16 v19, v3

    const-string/jumbo v20, "SourceFile"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 176
    new-instance v19, Lgnu/bytecode/SourceFileAttr;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v21

    move-object/from16 v22, v5

    check-cast v22, Lgnu/bytecode/ClassType;

    invoke-direct/range {v20 .. v22}, Lgnu/bytecode/SourceFileAttr;-><init>(ILgnu/bytecode/ClassType;)V

    move-object/from16 v2, v19

    .line 313
    .end local v2    # "this":Lgnu/bytecode/ClassFileInput;
    :goto_0
    return-object v2

    .line 178
    .restart local v2    # "this":Lgnu/bytecode/ClassFileInput;
    :cond_0
    move-object/from16 v19, v3

    const-string/jumbo v20, "Code"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_2

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/Method;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 180
    new-instance v19, Lgnu/bytecode/CodeAttr;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v5

    check-cast v21, Lgnu/bytecode/Method;

    invoke-direct/range {v20 .. v21}, Lgnu/bytecode/CodeAttr;-><init>(Lgnu/bytecode/Method;)V

    move-object/from16 v6, v19

    .line 181
    .local v6, "code":Lgnu/bytecode/CodeAttr;
    move-object/from16 v19, v6

    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lgnu/bytecode/CodeAttr;->fixup_count:I

    .line 182
    move-object/from16 v19, v6

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/CodeAttr;->setMaxStack(I)V

    .line 183
    move-object/from16 v19, v6

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/CodeAttr;->setMaxLocals(I)V

    .line 184
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/ClassFileInput;->readInt()I

    move-result v19

    move/from16 v7, v19

    .line 185
    .local v7, "code_len":I
    move/from16 v19, v7

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    move-object/from16 v8, v19

    .line 186
    .local v8, "insns":[B
    move-object/from16 v19, v2

    move-object/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/ClassFileInput;->readFully([B)V

    .line 187
    move-object/from16 v19, v6

    move-object/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/CodeAttr;->setCode([B)V

    .line 188
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v19

    move/from16 v9, v19

    .line 189
    .local v9, "exception_table_length":I
    const/16 v19, 0x0

    move/from16 v10, v19

    .local v10, "i":I
    :goto_1
    move/from16 v19, v10

    move/from16 v20, v9

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 191
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v19

    move/from16 v11, v19

    .line 192
    .local v11, "start_pc":I
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v19

    move/from16 v12, v19

    .line 193
    .local v12, "end_pc":I
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v19

    move/from16 v13, v19

    .line 194
    .local v13, "handler_pc":I
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v19

    move/from16 v14, v19

    .line 195
    .local v14, "catch_type":I
    move-object/from16 v19, v6

    move/from16 v20, v11

    move/from16 v21, v12

    move/from16 v22, v13

    move/from16 v23, v14

    invoke-virtual/range {v19 .. v23}, Lgnu/bytecode/CodeAttr;->addHandler(IIII)V

    .line 189
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 197
    .end local v11    # "start_pc":I
    .end local v12    # "end_pc":I
    .end local v13    # "handler_pc":I
    .end local v14    # "catch_type":I
    :cond_1
    move-object/from16 v19, v2

    move-object/from16 v20, v6

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/ClassFileInput;->readAttributes(Lgnu/bytecode/AttrContainer;)I

    move-result v19

    .line 198
    move-object/from16 v19, v6

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 200
    .end local v6    # "code":Lgnu/bytecode/CodeAttr;
    .end local v7    # "code_len":I
    .end local v8    # "insns":[B
    .end local v9    # "exception_table_length":I
    .end local v10    # "i":I
    :cond_2
    move-object/from16 v19, v3

    const-string/jumbo v20, "LineNumberTable"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_4

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/CodeAttr;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 202
    const/16 v19, 0x2

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v20

    mul-int v19, v19, v20

    move/from16 v6, v19

    .line 203
    .local v6, "count":I
    move/from16 v19, v6

    move/from16 v0, v19

    new-array v0, v0, [S

    move-object/from16 v19, v0

    move-object/from16 v7, v19

    .line 204
    .local v7, "numbers":[S
    const/16 v19, 0x0

    move/from16 v8, v19

    .local v8, "i":I
    :goto_2
    move/from16 v19, v8

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 206
    move-object/from16 v19, v7

    move/from16 v20, v8

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/ClassFileInput;->readShort()S

    move-result v21

    aput-short v21, v19, v20

    .line 204
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 208
    :cond_3
    new-instance v19, Lgnu/bytecode/LineNumbersAttr;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v7

    move-object/from16 v22, v5

    check-cast v22, Lgnu/bytecode/CodeAttr;

    invoke-direct/range {v20 .. v22}, Lgnu/bytecode/LineNumbersAttr;-><init>([SLgnu/bytecode/CodeAttr;)V

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 210
    .end local v6    # "count":I
    .end local v7    # "numbers":[S
    .end local v8    # "i":I
    :cond_4
    move-object/from16 v19, v3

    const-string/jumbo v20, "LocalVariableTable"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_c

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/CodeAttr;

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 212
    move-object/from16 v19, v5

    check-cast v19, Lgnu/bytecode/CodeAttr;

    move-object/from16 v6, v19

    .line 213
    .local v6, "code":Lgnu/bytecode/CodeAttr;
    new-instance v19, Lgnu/bytecode/LocalVarsAttr;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v6

    invoke-direct/range {v20 .. v21}, Lgnu/bytecode/LocalVarsAttr;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object/from16 v7, v19

    .line 214
    .local v7, "attr":Lgnu/bytecode/LocalVarsAttr;
    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/LocalVarsAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v19

    move-object/from16 v8, v19

    .line 215
    .local v8, "method":Lgnu/bytecode/Method;
    move-object/from16 v19, v7

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/bytecode/LocalVarsAttr;->parameter_scope:Lgnu/bytecode/Scope;

    move-object/from16 v19, v0

    if-nez v19, :cond_5

    .line 216
    move-object/from16 v19, v7

    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/Method;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/bytecode/LocalVarsAttr;->parameter_scope:Lgnu/bytecode/Scope;

    .line 217
    :cond_5
    move-object/from16 v19, v7

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/bytecode/LocalVarsAttr;->parameter_scope:Lgnu/bytecode/Scope;

    move-object/from16 v19, v0

    move-object/from16 v9, v19

    .line 218
    .local v9, "scope":Lgnu/bytecode/Scope;
    move-object/from16 v19, v9

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    move-object/from16 v19, v0

    if-nez v19, :cond_6

    .line 219
    move-object/from16 v19, v9

    new-instance v20, Lgnu/bytecode/Label;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move-object/from16 v22, v6

    move-object/from16 v0, v22

    iget v0, v0, Lgnu/bytecode/CodeAttr;->PC:I

    move/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lgnu/bytecode/Label;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    .line 220
    :cond_6
    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/Method;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v19

    move-object/from16 v10, v19

    .line 221
    .local v10, "constants":Lgnu/bytecode/ConstantPool;
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v19

    move/from16 v11, v19

    .line 222
    .local v11, "count":I
    move-object/from16 v19, v9

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v19, v0

    move/from16 v12, v19

    .line 223
    .local v12, "prev_start":I
    move-object/from16 v19, v9

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v19, v0

    move/from16 v13, v19

    .line 224
    .local v13, "prev_end":I
    const/16 v19, 0x0

    move/from16 v14, v19

    .local v14, "i":I
    :goto_3
    move/from16 v19, v14

    move/from16 v20, v11

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    .line 226
    new-instance v19, Lgnu/bytecode/Variable;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    invoke-direct/range {v20 .. v20}, Lgnu/bytecode/Variable;-><init>()V

    move-object/from16 v15, v19

    .line 227
    .local v15, "var":Lgnu/bytecode/Variable;
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v19

    move/from16 v16, v19

    .line 228
    .local v16, "start_pc":I
    move/from16 v19, v16

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v17, v19

    .line 230
    .local v17, "end_pc":I
    move/from16 v19, v16

    move/from16 v20, v12

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    move/from16 v19, v17

    move/from16 v20, v13

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    .line 233
    :cond_7
    :goto_4
    move-object/from16 v19, v9

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/bytecode/Scope;->parent:Lgnu/bytecode/Scope;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    move/from16 v19, v16

    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_8

    move/from16 v19, v17

    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_9

    .line 235
    :cond_8
    move-object/from16 v19, v9

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/bytecode/Scope;->parent:Lgnu/bytecode/Scope;

    move-object/from16 v19, v0

    move-object/from16 v9, v19

    goto :goto_4

    .line 236
    :cond_9
    move-object/from16 v19, v9

    move-object/from16 v18, v19

    .line 237
    .local v18, "parent":Lgnu/bytecode/Scope;
    new-instance v19, Lgnu/bytecode/Scope;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    new-instance v21, Lgnu/bytecode/Label;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    move/from16 v23, v16

    invoke-direct/range {v22 .. v23}, Lgnu/bytecode/Label;-><init>(I)V

    new-instance v22, Lgnu/bytecode/Label;

    move-object/from16 v25, v22

    move-object/from16 v22, v25

    move-object/from16 v23, v25

    move/from16 v24, v17

    invoke-direct/range {v23 .. v24}, Lgnu/bytecode/Label;-><init>(I)V

    invoke-direct/range {v20 .. v22}, Lgnu/bytecode/Scope;-><init>(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    move-object/from16 v9, v19

    .line 238
    move-object/from16 v19, v9

    move-object/from16 v20, v18

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/Scope;->linkChild(Lgnu/bytecode/Scope;)V

    .line 239
    move/from16 v19, v16

    move/from16 v12, v19

    .line 240
    move/from16 v19, v17

    move/from16 v13, v19

    .line 242
    .end local v18    # "parent":Lgnu/bytecode/Scope;
    :cond_a
    move-object/from16 v19, v9

    move-object/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/Variable;)V

    .line 243
    move-object/from16 v19, v15

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v20

    move-object/from16 v21, v10

    invoke-virtual/range {v19 .. v21}, Lgnu/bytecode/Variable;->setName(ILgnu/bytecode/ConstantPool;)V

    .line 244
    move-object/from16 v19, v15

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v20

    move-object/from16 v21, v10

    invoke-virtual/range {v19 .. v21}, Lgnu/bytecode/Variable;->setSignature(ILgnu/bytecode/ConstantPool;)V

    .line 245
    move-object/from16 v19, v15

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lgnu/bytecode/Variable;->offset:I

    .line 224
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 247
    .end local v15    # "var":Lgnu/bytecode/Variable;
    .end local v16    # "start_pc":I
    .end local v17    # "end_pc":I
    :cond_b
    move-object/from16 v19, v7

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 249
    .end local v6    # "code":Lgnu/bytecode/CodeAttr;
    .end local v7    # "attr":Lgnu/bytecode/LocalVarsAttr;
    .end local v8    # "method":Lgnu/bytecode/Method;
    .end local v9    # "scope":Lgnu/bytecode/Scope;
    .end local v10    # "constants":Lgnu/bytecode/ConstantPool;
    .end local v11    # "count":I
    .end local v12    # "prev_start":I
    .end local v13    # "prev_end":I
    .end local v14    # "i":I
    :cond_c
    move-object/from16 v19, v3

    const-string/jumbo v20, "Signature"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_d

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/Member;

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 251
    new-instance v19, Lgnu/bytecode/SignatureAttr;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v21

    move-object/from16 v22, v5

    check-cast v22, Lgnu/bytecode/Member;

    invoke-direct/range {v20 .. v22}, Lgnu/bytecode/SignatureAttr;-><init>(ILgnu/bytecode/Member;)V

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 253
    :cond_d
    move-object/from16 v19, v3

    const-string/jumbo v20, "StackMapTable"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_e

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/CodeAttr;

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 255
    move/from16 v19, v4

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    move-object/from16 v6, v19

    .line 256
    .local v6, "data":[B
    move-object/from16 v19, v2

    move-object/from16 v20, v6

    const/16 v21, 0x0

    move/from16 v22, v4

    invoke-virtual/range {v19 .. v22}, Lgnu/bytecode/ClassFileInput;->readFully([BII)V

    .line 257
    new-instance v19, Lgnu/bytecode/StackMapTableAttr;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v6

    move-object/from16 v22, v5

    check-cast v22, Lgnu/bytecode/CodeAttr;

    invoke-direct/range {v20 .. v22}, Lgnu/bytecode/StackMapTableAttr;-><init>([BLgnu/bytecode/CodeAttr;)V

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 259
    .end local v6    # "data":[B
    :cond_e
    move-object/from16 v19, v3

    const-string/jumbo v20, "RuntimeVisibleAnnotations"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_f

    move-object/from16 v19, v3

    const-string/jumbo v20, "RuntimeInvisibleAnnotations"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_11

    :cond_f
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/Field;

    move/from16 v19, v0

    if-nez v19, :cond_10

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/Method;

    move/from16 v19, v0

    if-nez v19, :cond_10

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v19, v0

    if-eqz v19, :cond_11

    .line 265
    :cond_10
    move/from16 v19, v4

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    move-object/from16 v6, v19

    .line 266
    .restart local v6    # "data":[B
    move-object/from16 v19, v2

    move-object/from16 v20, v6

    const/16 v21, 0x0

    move/from16 v22, v4

    invoke-virtual/range {v19 .. v22}, Lgnu/bytecode/ClassFileInput;->readFully([BII)V

    .line 267
    new-instance v19, Lgnu/bytecode/RuntimeAnnotationsAttr;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v3

    move-object/from16 v22, v6

    move-object/from16 v23, v5

    invoke-direct/range {v20 .. v23}, Lgnu/bytecode/RuntimeAnnotationsAttr;-><init>(Ljava/lang/String;[BLgnu/bytecode/AttrContainer;)V

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 269
    .end local v6    # "data":[B
    :cond_11
    move-object/from16 v19, v3

    const-string/jumbo v20, "ConstantValue"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_12

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/Field;

    move/from16 v19, v0

    if-eqz v19, :cond_12

    .line 271
    new-instance v19, Lgnu/bytecode/ConstantValueAttr;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v21

    invoke-direct/range {v20 .. v21}, Lgnu/bytecode/ConstantValueAttr;-><init>(I)V

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 273
    :cond_12
    move-object/from16 v19, v3

    const-string/jumbo v20, "InnerClasses"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_14

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v19, v0

    if-eqz v19, :cond_14

    .line 275
    const/16 v19, 0x4

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v20

    mul-int v19, v19, v20

    move/from16 v6, v19

    .line 276
    .local v6, "count":I
    move/from16 v19, v6

    move/from16 v0, v19

    new-array v0, v0, [S

    move-object/from16 v19, v0

    move-object/from16 v7, v19

    .line 277
    .local v7, "data":[S
    const/16 v19, 0x0

    move/from16 v8, v19

    .local v8, "i":I
    :goto_5
    move/from16 v19, v8

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_13

    .line 279
    move-object/from16 v19, v7

    move/from16 v20, v8

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/ClassFileInput;->readShort()S

    move-result v21

    aput-short v21, v19, v20

    .line 277
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 281
    :cond_13
    new-instance v19, Lgnu/bytecode/InnerClassesAttr;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v7

    move-object/from16 v22, v5

    check-cast v22, Lgnu/bytecode/ClassType;

    invoke-direct/range {v20 .. v22}, Lgnu/bytecode/InnerClassesAttr;-><init>([SLgnu/bytecode/ClassType;)V

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 283
    .end local v6    # "count":I
    .end local v7    # "data":[S
    .end local v8    # "i":I
    :cond_14
    move-object/from16 v19, v3

    const-string/jumbo v20, "EnclosingMethod"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_15

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v19, v0

    if-eqz v19, :cond_15

    .line 285
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v19

    move/from16 v6, v19

    .line 286
    .local v6, "class_index":I
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v19

    move/from16 v7, v19

    .line 287
    .local v7, "method_index":I
    new-instance v19, Lgnu/bytecode/EnclosingMethodAttr;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move/from16 v21, v6

    move/from16 v22, v7

    move-object/from16 v23, v5

    check-cast v23, Lgnu/bytecode/ClassType;

    invoke-direct/range {v20 .. v23}, Lgnu/bytecode/EnclosingMethodAttr;-><init>(IILgnu/bytecode/ClassType;)V

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 289
    .end local v6    # "class_index":I
    .end local v7    # "method_index":I
    :cond_15
    move-object/from16 v19, v3

    const-string/jumbo v20, "Exceptions"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_17

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/Method;

    move/from16 v19, v0

    if-eqz v19, :cond_17

    .line 291
    move-object/from16 v19, v5

    check-cast v19, Lgnu/bytecode/Method;

    move-object/from16 v6, v19

    .line 292
    .local v6, "meth":Lgnu/bytecode/Method;
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v19

    move/from16 v7, v19

    .line 293
    .local v7, "count":I
    move/from16 v19, v7

    move/from16 v0, v19

    new-array v0, v0, [S

    move-object/from16 v19, v0

    move-object/from16 v8, v19

    .line 294
    .local v8, "exn_indices":[S
    const/16 v19, 0x0

    move/from16 v9, v19

    .local v9, "i":I
    :goto_6
    move/from16 v19, v9

    move/from16 v20, v7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_16

    .line 295
    move-object/from16 v19, v8

    move/from16 v20, v9

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/ClassFileInput;->readShort()S

    move-result v21

    aput-short v21, v19, v20

    .line 294
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 296
    :cond_16
    move-object/from16 v19, v6

    move-object/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/Method;->setExceptions([S)V

    .line 297
    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/Method;->getExceptionAttr()Lgnu/bytecode/ExceptionsAttr;

    move-result-object v19

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 299
    .end local v6    # "meth":Lgnu/bytecode/Method;
    .end local v7    # "count":I
    .end local v8    # "exn_indices":[S
    .end local v9    # "i":I
    :cond_17
    move-object/from16 v19, v3

    const-string/jumbo v20, "SourceDebugExtension"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_18

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v19, v0

    if-eqz v19, :cond_18

    .line 301
    new-instance v19, Lgnu/bytecode/SourceDebugExtAttr;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v5

    check-cast v21, Lgnu/bytecode/ClassType;

    invoke-direct/range {v20 .. v21}, Lgnu/bytecode/SourceDebugExtAttr;-><init>(Lgnu/bytecode/ClassType;)V

    move-object/from16 v6, v19

    .line 303
    .local v6, "attr":Lgnu/bytecode/SourceDebugExtAttr;
    move/from16 v19, v4

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    move-object/from16 v7, v19

    .line 304
    .local v7, "data":[B
    move-object/from16 v19, v2

    move-object/from16 v20, v7

    const/16 v21, 0x0

    move/from16 v22, v4

    invoke-virtual/range {v19 .. v22}, Lgnu/bytecode/ClassFileInput;->readFully([BII)V

    .line 305
    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/bytecode/SourceDebugExtAttr;->data:[B

    .line 306
    move-object/from16 v19, v6

    move/from16 v20, v4

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    .line 307
    move-object/from16 v19, v6

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 311
    .end local v6    # "attr":Lgnu/bytecode/SourceDebugExtAttr;
    .end local v7    # "data":[B
    :cond_18
    move/from16 v19, v4

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    move-object/from16 v6, v19

    .line 312
    .local v6, "data":[B
    move-object/from16 v19, v2

    move-object/from16 v20, v6

    const/16 v21, 0x0

    move/from16 v22, v4

    invoke-virtual/range {v19 .. v22}, Lgnu/bytecode/ClassFileInput;->readFully([BII)V

    .line 313
    new-instance v19, Lgnu/bytecode/MiscAttr;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v3

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lgnu/bytecode/MiscAttr;-><init>(Ljava/lang/String;[B)V

    move-object/from16 v2, v19

    goto/16 :goto_0
.end method

.method public readAttributes(Lgnu/bytecode/AttrContainer;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassFileInput;
    move-object v1, p1

    .local v1, "container":Lgnu/bytecode/AttrContainer;
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v9

    move v2, v9

    .line 112
    .local v2, "count":I
    move-object v9, v1

    invoke-interface {v9}, Lgnu/bytecode/AttrContainer;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v9

    move-object v3, v9

    .line 113
    .local v3, "last":Lgnu/bytecode/Attribute;
    const/4 v9, 0x0

    move v4, v9

    .local v4, "i":I
    :goto_0
    move v9, v4

    move v10, v2

    if-ge v9, v10, :cond_6

    .line 115
    move-object v9, v3

    if-eqz v9, :cond_0

    .line 119
    :goto_1
    move-object v9, v3

    invoke-virtual {v9}, Lgnu/bytecode/Attribute;->getNext()Lgnu/bytecode/Attribute;

    move-result-object v9

    move-object v5, v9

    .line 120
    .local v5, "next":Lgnu/bytecode/Attribute;
    move-object v9, v5

    if-nez v9, :cond_3

    .line 121
    .line 126
    .end local v5    # "next":Lgnu/bytecode/Attribute;
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v9

    move v5, v9

    .line 127
    .local v5, "index":I
    move-object v9, v0

    iget-object v9, v9, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget-object v9, v9, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    move v10, v5

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v9

    check-cast v9, Lgnu/bytecode/CpoolUtf8;

    move-object v6, v9

    .line 129
    .local v6, "nameConstant":Lgnu/bytecode/CpoolUtf8;
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/bytecode/ClassFileInput;->readInt()I

    move-result v9

    move v7, v9

    .line 130
    .local v7, "length":I
    move-object v9, v6

    invoke-virtual {v9}, Lgnu/bytecode/CpoolUtf8;->intern()V

    .line 131
    move-object v9, v0

    move-object v10, v6

    iget-object v10, v10, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    move v11, v7

    move-object v12, v1

    invoke-virtual {v9, v10, v11, v12}, Lgnu/bytecode/ClassFileInput;->readAttribute(Ljava/lang/String;ILgnu/bytecode/AttrContainer;)Lgnu/bytecode/Attribute;

    move-result-object v9

    move-object v8, v9

    .line 132
    .local v8, "attr":Lgnu/bytecode/Attribute;
    move-object v9, v8

    if-eqz v9, :cond_2

    .line 134
    move-object v9, v8

    invoke-virtual {v9}, Lgnu/bytecode/Attribute;->getNameIndex()I

    move-result v9

    if-nez v9, :cond_1

    .line 135
    move-object v9, v8

    move v10, v5

    invoke-virtual {v9, v10}, Lgnu/bytecode/Attribute;->setNameIndex(I)V

    .line 136
    :cond_1
    move-object v9, v3

    if-nez v9, :cond_4

    .line 137
    move-object v9, v1

    move-object v10, v8

    invoke-interface {v9, v10}, Lgnu/bytecode/AttrContainer;->setAttributes(Lgnu/bytecode/Attribute;)V

    .line 147
    :goto_2
    move-object v9, v8

    move-object v3, v9

    .line 113
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 122
    .end local v6    # "nameConstant":Lgnu/bytecode/CpoolUtf8;
    .end local v7    # "length":I
    .end local v8    # "attr":Lgnu/bytecode/Attribute;
    .local v5, "next":Lgnu/bytecode/Attribute;
    :cond_3
    move-object v9, v5

    move-object v3, v9

    .line 123
    goto :goto_1

    .line 140
    .local v5, "index":I
    .restart local v6    # "nameConstant":Lgnu/bytecode/CpoolUtf8;
    .restart local v7    # "length":I
    .restart local v8    # "attr":Lgnu/bytecode/Attribute;
    :cond_4
    move-object v9, v1

    invoke-interface {v9}, Lgnu/bytecode/AttrContainer;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v9

    move-object v10, v8

    if-ne v9, v10, :cond_5

    .line 142
    move-object v9, v1

    move-object v10, v8

    invoke-virtual {v10}, Lgnu/bytecode/Attribute;->getNext()Lgnu/bytecode/Attribute;

    move-result-object v10

    invoke-interface {v9, v10}, Lgnu/bytecode/AttrContainer;->setAttributes(Lgnu/bytecode/Attribute;)V

    .line 143
    move-object v9, v8

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lgnu/bytecode/Attribute;->setNext(Lgnu/bytecode/Attribute;)V

    .line 145
    :cond_5
    move-object v9, v3

    move-object v10, v8

    invoke-virtual {v9, v10}, Lgnu/bytecode/Attribute;->setNext(Lgnu/bytecode/Attribute;)V

    goto :goto_2

    .line 150
    .end local v5    # "index":I
    .end local v6    # "nameConstant":Lgnu/bytecode/CpoolUtf8;
    .end local v7    # "length":I
    .end local v8    # "attr":Lgnu/bytecode/Attribute;
    :cond_6
    move v9, v2

    move v0, v9

    .end local v0    # "this":Lgnu/bytecode/ClassFileInput;
    return v0
.end method

.method public readClassInfo()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassFileInput;
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v7

    iput v7, v6, Lgnu/bytecode/ClassType;->access_flags:I

    .line 76
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v7

    iput v7, v6, Lgnu/bytecode/ClassType;->thisClassIndex:I

    .line 77
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget v7, v7, Lgnu/bytecode/ClassType;->thisClassIndex:I

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassFileInput;->getClassConstant(I)Lgnu/bytecode/CpoolClass;

    move-result-object v6

    move-object v1, v6

    .line 78
    .local v1, "clas":Lgnu/bytecode/CpoolClass;
    move-object v6, v1

    iget-object v6, v6, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v6, v6, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    move-object v2, v6

    .line 79
    .local v2, "name":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    move-object v7, v2

    const/16 v8, 0x2f

    const/16 v9, 0x2e

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lgnu/bytecode/ClassType;->this_name:Ljava/lang/String;

    .line 80
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "L"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassType;->setSignature(Ljava/lang/String;)V

    .line 82
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v7

    iput v7, v6, Lgnu/bytecode/ClassType;->superClassIndex:I

    .line 83
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget v6, v6, Lgnu/bytecode/ClassType;->superClassIndex:I

    if-nez v6, :cond_0

    .line 84
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    const/4 v7, 0x0

    check-cast v7, Lgnu/bytecode/ClassType;

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 92
    :goto_0
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v6

    move v3, v6

    .line 93
    .local v3, "nInterfaces":I
    move v6, v3

    if-lez v6, :cond_1

    .line 95
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    move v7, v3

    new-array v7, v7, [Lgnu/bytecode/ClassType;

    iput-object v7, v6, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    .line 96
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    move v7, v3

    new-array v7, v7, [I

    iput-object v7, v6, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    .line 97
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 99
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v6

    move v5, v6

    .line 100
    .local v5, "index":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget-object v6, v6, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    move v7, v4

    move v8, v5

    aput v8, v6, v7

    .line 101
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget-object v6, v6, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    move v7, v5

    const/4 v8, 0x7

    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v6

    check-cast v6, Lgnu/bytecode/CpoolClass;

    move-object v1, v6

    .line 103
    move-object v6, v1

    iget-object v6, v6, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v6, v6, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    const/16 v7, 0x2f

    const/16 v8, 0x2e

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 104
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget-object v6, v6, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    move v7, v4

    move-object v8, v2

    invoke-static {v8}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v8

    aput-object v8, v6, v7

    .line 97
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 87
    .end local v3    # "nInterfaces":I
    .end local v4    # "i":I
    .end local v5    # "index":I
    :cond_0
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget v7, v7, Lgnu/bytecode/ClassType;->superClassIndex:I

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassFileInput;->getClassConstant(I)Lgnu/bytecode/CpoolClass;

    move-result-object v6

    move-object v1, v6

    .line 88
    move-object v6, v1

    iget-object v6, v6, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v6, v6, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    move-object v2, v6

    .line 89
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    move-object v7, v2

    const/16 v8, 0x2f

    const/16 v9, 0x2e

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassType;->setSuper(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    .restart local v3    # "nInterfaces":I
    :cond_1
    return-void
.end method

.method public readConstants()Lgnu/bytecode/ConstantPool;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassFileInput;
    new-instance v1, Lgnu/bytecode/ConstantPool;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/bytecode/ConstantPool;-><init>(Ljava/io/DataInputStream;)V

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/ClassFileInput;
    return-object v0
.end method

.method public readFields()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassFileInput;
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v8

    move v1, v8

    .line 320
    .local v1, "nFields":I
    move-object v8, v0

    iget-object v8, v8, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget-object v8, v8, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    move-object v2, v8

    .line 321
    .local v2, "constants":Lgnu/bytecode/ConstantPool;
    const/4 v8, 0x0

    move v3, v8

    .local v3, "i":I
    :goto_0
    move v8, v3

    move v9, v1

    if-ge v8, v9, :cond_0

    .line 323
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v8

    move v4, v8

    .line 324
    .local v4, "flags":I
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v8

    move v5, v8

    .line 325
    .local v5, "nameIndex":I
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v8

    move v6, v8

    .line 326
    .local v6, "descriptorIndex":I
    move-object v8, v0

    iget-object v8, v8, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->addField()Lgnu/bytecode/Field;

    move-result-object v8

    move-object v7, v8

    .line 327
    .local v7, "fld":Lgnu/bytecode/Field;
    move-object v8, v7

    move v9, v5

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lgnu/bytecode/Field;->setName(ILgnu/bytecode/ConstantPool;)V

    .line 328
    move-object v8, v7

    move v9, v6

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lgnu/bytecode/Field;->setSignature(ILgnu/bytecode/ConstantPool;)V

    .line 329
    move-object v8, v7

    move v9, v4

    iput v9, v8, Lgnu/bytecode/Field;->flags:I

    .line 330
    move-object v8, v0

    move-object v9, v7

    invoke-virtual {v8, v9}, Lgnu/bytecode/ClassFileInput;->readAttributes(Lgnu/bytecode/AttrContainer;)I

    move-result v8

    .line 321
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 332
    .end local v4    # "flags":I
    .end local v5    # "nameIndex":I
    .end local v6    # "descriptorIndex":I
    .end local v7    # "fld":Lgnu/bytecode/Field;
    :cond_0
    return-void
.end method

.method public readFormatVersion()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassFileInput;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v3

    move v1, v3

    .line 61
    .local v1, "minor":I
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v3

    move v2, v3

    .line 62
    .local v2, "major":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    move v4, v2

    const/high16 v5, 0x10000

    mul-int/2addr v4, v5

    move v5, v1

    add-int/2addr v4, v5

    iput v4, v3, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    .line 63
    return-void
.end method

.method public readHeader()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassFileInput;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/ClassFileInput;->readInt()I

    move-result v2

    move v1, v2

    .line 52
    .local v1, "magic":I
    move v2, v1

    const v3, -0x35014542    # -8346975.0f

    if-eq v2, v3, :cond_0

    .line 53
    const/4 v2, 0x0

    move v0, v2

    .line 55
    .end local v0    # "this":Lgnu/bytecode/ClassFileInput;
    :goto_0
    return v0

    .line 54
    .restart local v0    # "this":Lgnu/bytecode/ClassFileInput;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/ClassFileInput;->readFormatVersion()V

    .line 55
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public readMethods()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassFileInput;
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v7

    move v1, v7

    .line 337
    .local v1, "nMethods":I
    const/4 v7, 0x0

    move v2, v7

    .local v2, "i":I
    :goto_0
    move v7, v2

    move v8, v1

    if-ge v7, v8, :cond_0

    .line 339
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v7

    move v3, v7

    .line 340
    .local v3, "flags":I
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v7

    move v4, v7

    .line 341
    .local v4, "nameIndex":I
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v7

    move v5, v7

    .line 342
    .local v5, "descriptorIndex":I
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    const/4 v8, 0x0

    move v9, v3

    invoke-virtual {v7, v8, v9}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v7

    move-object v6, v7

    .line 343
    .local v6, "meth":Lgnu/bytecode/Method;
    move-object v7, v6

    move v8, v4

    invoke-virtual {v7, v8}, Lgnu/bytecode/Method;->setName(I)V

    .line 344
    move-object v7, v6

    move v8, v5

    invoke-virtual {v7, v8}, Lgnu/bytecode/Method;->setSignature(I)V

    .line 345
    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassFileInput;->readAttributes(Lgnu/bytecode/AttrContainer;)I

    move-result v7

    .line 337
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 347
    .end local v3    # "flags":I
    .end local v4    # "nameIndex":I
    .end local v5    # "descriptorIndex":I
    .end local v6    # "meth":Lgnu/bytecode/Method;
    :cond_0
    return-void
.end method

.method public final skipAttribute(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassFileInput;
    move v1, p1

    .local v1, "length":I
    const/4 v4, 0x0

    move v2, v4

    .line 157
    .local v2, "read":I
    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_2

    .line 159
    move-object v4, v0

    move v5, v1

    move v6, v2

    sub-int/2addr v5, v6

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/ClassFileInput;->skip(J)J

    move-result-wide v4

    long-to-int v4, v4

    move v3, v4

    .line 160
    .local v3, "skipped":I
    move v4, v3

    if-nez v4, :cond_1

    .line 162
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/ClassFileInput;->read()I

    move-result v4

    if-gez v4, :cond_0

    .line 163
    new-instance v4, Ljava/io/EOFException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "EOF while reading class files attributes"

    invoke-direct {v5, v6}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 165
    :cond_0
    const/4 v4, 0x1

    move v3, v4

    .line 167
    :cond_1
    move v4, v2

    move v5, v3

    add-int/2addr v4, v5

    move v2, v4

    .line 168
    goto :goto_0

    .line 169
    .end local v3    # "skipped":I
    :cond_2
    return-void
.end method
