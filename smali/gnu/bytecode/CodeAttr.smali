.class public Lgnu/bytecode/CodeAttr;
.super Lgnu/bytecode/Attribute;
.source "CodeAttr.java"

# interfaces
.implements Lgnu/bytecode/AttrContainer;


# static fields
.field public static final DONT_USE_JSR:I = 0x2

.field static final FIXUP_CASE:I = 0x3

.field static final FIXUP_DEFINE:I = 0x1

.field static final FIXUP_DELETE3:I = 0x8

.field static final FIXUP_GOTO:I = 0x4

.field static final FIXUP_JSR:I = 0x5

.field static final FIXUP_LINE_NUMBER:I = 0xf

.field static final FIXUP_LINE_PC:I = 0xe

.field static final FIXUP_MOVE:I = 0x9

.field static final FIXUP_MOVE_TO_END:I = 0xa

.field static final FIXUP_NONE:I = 0x0

.field static final FIXUP_SWITCH:I = 0x2

.field static final FIXUP_TRANSFER:I = 0x6

.field static final FIXUP_TRANSFER2:I = 0x7

.field static final FIXUP_TRY:I = 0xb

.field static final FIXUP_TRY_END:I = 0xc

.field static final FIXUP_TRY_HANDLER:I = 0xd

.field public static final GENERATE_STACK_MAP_TABLE:I = 0x1

.field public static instructionLineMode:Z


# instance fields
.field PC:I

.field SP:I

.field attributes:Lgnu/bytecode/Attribute;

.field code:[B

.field currentExitableBlock:Lgnu/bytecode/ExitableBlock;

.field exception_table:[S

.field exception_table_length:I

.field exitableBlockLevel:I

.field fixup_count:I

.field fixup_labels:[Lgnu/bytecode/Label;

.field fixup_offsets:[I

.field flags:I

.field if_stack:Lgnu/bytecode/IfState;

.field lines:Lgnu/bytecode/LineNumbersAttr;

.field local_types:[Lgnu/bytecode/Type;

.field public locals:Lgnu/bytecode/LocalVarsAttr;

.field private max_locals:I

.field private max_stack:I

.field previousLabel:Lgnu/bytecode/Label;

.field sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

.field public stackMap:Lgnu/bytecode/StackMapTableAttr;

.field public stack_types:[Lgnu/bytecode/Type;

.field try_stack:Lgnu/bytecode/TryState;

.field private unreachable_here:Z

.field varsSetInCurrentBlock:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    sput-boolean v0, Lgnu/bytecode/CodeAttr;->instructionLineMode:Z

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Method;)V
    .locals 6

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "meth":Lgnu/bytecode/Method;
    move-object v2, v0

    const-string/jumbo v3, "Code"

    invoke-direct {v2, v3}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 236
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 237
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    .line 238
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getClassfileMajorVersion()S

    move-result v2

    const/16 v3, 0x32

    if-lt v2, v3, :cond_0

    .line 239
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/bytecode/CodeAttr;->flags:I

    const/4 v4, 0x3

    or-int/lit8 v3, v3, 0x3

    iput v3, v2, Lgnu/bytecode/CodeAttr;->flags:I

    .line 240
    :cond_0
    return-void
.end method

.method private adjustTypedOp(C)I
    .locals 3

    .prologue
    .line 1084
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "sig":C
    move v2, v1

    sparse-switch v2, :sswitch_data_0

    .line 1090
    const/4 v2, 0x4

    move v0, v2

    .line 1094
    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    :goto_0
    return v0

    .line 1086
    .restart local v0    # "this":Lgnu/bytecode/CodeAttr;
    :sswitch_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 1087
    :sswitch_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 1088
    :sswitch_2
    const/4 v2, 0x2

    move v0, v2

    goto :goto_0

    .line 1089
    :sswitch_3
    const/4 v2, 0x3

    move v0, v2

    goto :goto_0

    .line 1092
    :sswitch_4
    const/4 v2, 0x5

    move v0, v2

    goto :goto_0

    .line 1093
    :sswitch_5
    const/4 v2, 0x6

    move v0, v2

    goto :goto_0

    .line 1094
    :sswitch_6
    const/4 v2, 0x7

    move v0, v2

    goto :goto_0

    .line 1084
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_4
        0x43 -> :sswitch_5
        0x44 -> :sswitch_3
        0x46 -> :sswitch_2
        0x49 -> :sswitch_0
        0x4a -> :sswitch_1
        0x53 -> :sswitch_6
        0x5a -> :sswitch_4
    .end sparse-switch
.end method

.method private adjustTypedOp(Lgnu/bytecode/Type;)I
    .locals 5

    .prologue
    .line 1100
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {v2, v3}, Lgnu/bytecode/CodeAttr;->adjustTypedOp(C)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return v0
.end method

.method public static final calculateSplit(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    .line 862
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v1, v8

    .line 863
    .local v1, "strLength":I
    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const/16 v10, 0x14

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v2, v8

    .line 865
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    move v3, v8

    .line 866
    .local v3, "segmentStart":I
    const/4 v8, 0x0

    move v4, v8

    .line 867
    .local v4, "byteLength":I
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    :goto_0
    move v8, v5

    move v9, v1

    if-ge v8, v9, :cond_4

    .line 869
    move-object v8, v0

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v6, v8

    .line 870
    .local v6, "ch":C
    move v8, v6

    const/16 v9, 0x800

    if-lt v8, v9, :cond_1

    const/4 v8, 0x3

    :goto_1
    move v7, v8

    .line 871
    .local v7, "bytes":I
    move v8, v4

    move v9, v7

    add-int/2addr v8, v9

    const v9, 0xffff

    if-le v8, v9, :cond_0

    .line 873
    move-object v8, v2

    move v9, v5

    move v10, v3

    sub-int/2addr v9, v10

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 874
    move v8, v5

    move v3, v8

    .line 875
    const/4 v8, 0x0

    move v4, v8

    .line 877
    :cond_0
    move v8, v4

    move v9, v7

    add-int/2addr v8, v9

    move v4, v8

    .line 867
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 870
    .end local v7    # "bytes":I
    :cond_1
    move v8, v6

    const/16 v9, 0x80

    if-ge v8, v9, :cond_2

    move v8, v6

    if-nez v8, :cond_3

    :cond_2
    const/4 v8, 0x2

    goto :goto_1

    :cond_3
    const/4 v8, 0x1

    goto :goto_1

    .line 879
    .end local v6    # "ch":C
    :cond_4
    move-object v8, v2

    move v9, v1

    move v10, v3

    sub-int/2addr v9, v10

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 880
    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "str":Ljava/lang/String;
    return-object v0
.end method

.method public static castNeeded(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Z
    .locals 4

    .prologue
    .line 2004
    move-object v0, p0

    .local v0, "top":Lgnu/bytecode/Type;
    move-object v1, p1

    .local v1, "required":Lgnu/bytecode/Type;
    move-object v2, v0

    instance-of v2, v2, Lgnu/bytecode/UninitializedType;

    if-eqz v2, :cond_0

    .line 2005
    move-object v2, v0

    check-cast v2, Lgnu/bytecode/UninitializedType;

    invoke-virtual {v2}, Lgnu/bytecode/UninitializedType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v2

    move-object v0, v2

    .line 2008
    :cond_0
    :goto_0
    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_1

    .line 2009
    const/4 v2, 0x0

    move v0, v2

    .line 2021
    .end local v0    # "top":Lgnu/bytecode/Type;
    :goto_1
    return v0

    .line 2010
    .restart local v0    # "top":Lgnu/bytecode/Type;
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Lgnu/bytecode/ClassType;

    if-eqz v2, :cond_2

    move-object v2, v0

    instance-of v2, v2, Lgnu/bytecode/ClassType;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lgnu/bytecode/ClassType;

    move-object v3, v1

    check-cast v3, Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2013
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1

    .line 2014
    :cond_2
    move-object v2, v1

    instance-of v2, v2, Lgnu/bytecode/ArrayType;

    if-eqz v2, :cond_3

    move-object v2, v0

    instance-of v2, v2, Lgnu/bytecode/ArrayType;

    if-eqz v2, :cond_3

    .line 2017
    move-object v2, v1

    check-cast v2, Lgnu/bytecode/ArrayType;

    invoke-virtual {v2}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v2

    move-object v1, v2

    .line 2018
    move-object v2, v0

    check-cast v2, Lgnu/bytecode/ArrayType;

    invoke-virtual {v2}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v2

    move-object v0, v2

    .line 2019
    goto :goto_0

    .line 2021
    :cond_3
    const/4 v2, 0x1

    move v0, v2

    goto :goto_1
.end method

.method private emitBinop(I)V
    .locals 9

    .prologue
    .line 1241
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "base_code":I
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v5

    move-object v2, v5

    .line 1242
    .local v2, "type2":Lgnu/bytecode/Type;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v5

    move-object v3, v5

    .line 1243
    .local v3, "type1_raw":Lgnu/bytecode/Type;
    move-object v5, v3

    invoke-virtual {v5}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v5

    move-object v4, v5

    .line 1244
    .local v4, "type1":Lgnu/bytecode/Type;
    move-object v5, v4

    move-object v6, v2

    if-ne v5, v6, :cond_0

    move-object v5, v4

    instance-of v5, v5, Lgnu/bytecode/PrimType;

    if-nez v5, :cond_1

    .line 1245
    :cond_0
    new-instance v5, Ljava/lang/Error;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "non-matching or bad types in binary operation"

    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1246
    :cond_1
    move-object v5, v0

    move v6, v1

    move-object v7, v4

    invoke-direct {v5, v6, v7}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    .line 1247
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1248
    return-void
.end method

.method private emitBinop(IC)V
    .locals 6

    .prologue
    .line 1252
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "base_code":I
    move v2, p2

    .local v2, "sig":C
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v3

    .line 1253
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v3

    .line 1254
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lgnu/bytecode/CodeAttr;->emitTypedOp(IC)V

    .line 1255
    move-object v3, v0

    move v4, v2

    invoke-static {v4}, Lgnu/bytecode/Type;->signatureToPrimitive(C)Lgnu/bytecode/PrimType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1256
    return-void
.end method

.method private emitCheckcast(Lgnu/bytecode/Type;I)V
    .locals 8

    .prologue
    .line 1990
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move v2, p2

    .local v2, "opcode":I
    move-object v3, v0

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1991
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v3

    .line 1992
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1993
    move-object v3, v1

    instance-of v3, v3, Lgnu/bytecode/ObjectType;

    if-eqz v3, :cond_0

    .line 1995
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lgnu/bytecode/ObjectType;

    invoke-virtual {v4, v5}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->putIndex2(Lgnu/bytecode/CpoolEntry;)V

    .line 2000
    return-void

    .line 1998
    :cond_0
    new-instance v3, Ljava/lang/Error;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unimplemented type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " in emitCheckcast/emitInstanceof"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private final emitFieldop(Lgnu/bytecode/Field;I)V
    .locals 6

    .prologue
    .line 1413
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "field":Lgnu/bytecode/Field;
    move v2, p2

    .local v2, "opcode":I
    move-object v3, v0

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1414
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1415
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/bytecode/ConstantPool;->addFieldRef(Lgnu/bytecode/Field;)Lgnu/bytecode/CpoolRef;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->putIndex2(Lgnu/bytecode/CpoolEntry;)V

    .line 1416
    return-void
.end method

.method private emitShift(I)V
    .locals 9

    .prologue
    .line 1294
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "base_code":I
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v5

    move-object v2, v5

    .line 1295
    .local v2, "type2":Lgnu/bytecode/Type;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v5

    move-object v3, v5

    .line 1296
    .local v3, "type1_raw":Lgnu/bytecode/Type;
    move-object v5, v3

    invoke-virtual {v5}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v5

    move-object v4, v5

    .line 1298
    .local v4, "type1":Lgnu/bytecode/Type;
    move-object v5, v4

    sget-object v6, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-eq v5, v6, :cond_0

    move-object v5, v4

    sget-object v6, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    if-eq v5, v6, :cond_0

    .line 1299
    new-instance v5, Ljava/lang/Error;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "the value shifted must be an int or a long"

    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1301
    :cond_0
    move-object v5, v2

    sget-object v6, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-eq v5, v6, :cond_1

    .line 1302
    new-instance v5, Ljava/lang/Error;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "the amount of shift must be an int"

    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1304
    :cond_1
    move-object v5, v0

    move v6, v1

    move-object v7, v4

    invoke-direct {v5, v6, v7}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    .line 1305
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1306
    return-void
.end method

.method private emitTryEnd(Z)V
    .locals 5

    .prologue
    .line 2246
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "fromFinally":Z
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-boolean v2, v2, Lgnu/bytecode/TryState;->tryClauseDone:Z

    if-eqz v2, :cond_0

    .line 2247
    .line 2253
    :goto_0
    return-void

    .line 2248
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lgnu/bytecode/TryState;->tryClauseDone:Z

    .line 2249
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v2, v2, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    if-eqz v2, :cond_1

    .line 2250
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    move-object v3, v0

    sget-object v4, Lgnu/bytecode/Type;->javalangThrowableType:Lgnu/bytecode/ClassType;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v3

    iput-object v3, v2, Lgnu/bytecode/TryState;->exception:Lgnu/bytecode/Variable;

    .line 2251
    :cond_1
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lgnu/bytecode/CodeAttr;->gotoFinallyOrEnd(Z)V

    .line 2252
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->getLabel()Lgnu/bytecode/Label;

    move-result-object v3

    iput-object v3, v2, Lgnu/bytecode/TryState;->end_try:Lgnu/bytecode/Label;

    .line 2253
    goto :goto_0
.end method

.method private emitTypedOp(IC)V
    .locals 7

    .prologue
    .line 1111
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "op":I
    move v2, p2

    .local v2, "sig":C
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1112
    move-object v3, v0

    move v4, v1

    move-object v5, v0

    move v6, v2

    invoke-direct {v5, v6}, Lgnu/bytecode/CodeAttr;->adjustTypedOp(C)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1113
    return-void
.end method

.method private emitTypedOp(ILgnu/bytecode/Type;)V
    .locals 7

    .prologue
    .line 1105
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "op":I
    move-object v2, p2

    .local v2, "type":Lgnu/bytecode/Type;
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1106
    move-object v3, v0

    move v4, v1

    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lgnu/bytecode/CodeAttr;->adjustTypedOp(Lgnu/bytecode/Type;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1107
    return-void
.end method

.method private final fixupKind(I)I
    .locals 4

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    move v3, v1

    aget v2, v2, v3

    const/16 v3, 0xf

    and-int/lit8 v2, v2, 0xf

    move v0, v2

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return v0
.end method

.method private final fixupOffset(I)I
    .locals 4

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    move v3, v1

    aget v2, v2, v3

    const/4 v3, 0x4

    shr-int/lit8 v2, v2, 0x4

    move v0, v2

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return v0
.end method

.method private gotoFinallyOrEnd(Z)V
    .locals 6

    .prologue
    .line 2276
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "fromFinally":Z
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2278
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v2, v2, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    if-eqz v2, :cond_0

    .line 2279
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2280
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v2, v2, Lgnu/bytecode/TryState;->end_label:Lgnu/bytecode/Label;

    if-nez v2, :cond_1

    .line 2281
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    new-instance v3, Lgnu/bytecode/Label;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lgnu/bytecode/Label;-><init>()V

    iput-object v3, v2, Lgnu/bytecode/TryState;->end_label:Lgnu/bytecode/Label;

    .line 2282
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v2, v2, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    if-eqz v2, :cond_2

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->useJsr()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2284
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v2, v2, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    if-eqz v2, :cond_3

    .line 2285
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitJsr(Lgnu/bytecode/Label;)V

    .line 2286
    :cond_3
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 2297
    :cond_4
    :goto_0
    return-void

    .line 2290
    :cond_5
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v2, v2, Lgnu/bytecode/TryState;->exitCases:Lgnu/bytecode/ExitableBlock;

    if-eqz v2, :cond_6

    .line 2291
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 2292
    :cond_6
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    .line 2293
    move v2, v1

    if-nez v2, :cond_4

    .line 2294
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    goto :goto_0
.end method

.method private mergeLabels(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)Lgnu/bytecode/Label;
    .locals 5

    .prologue
    .line 2780
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "oldLabel":Lgnu/bytecode/Label;
    move-object v2, p2

    .local v2, "newLabel":Lgnu/bytecode/Label;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 2781
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/Label;)V

    .line 2782
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return-object v0
.end method

.method private print(Ljava/lang/String;ILjava/io/PrintWriter;)V
    .locals 11

    .prologue
    .line 3257
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move v2, p2

    .local v2, "i":I
    move-object v3, p3

    .local v3, "dst":Ljava/io/PrintWriter;
    const/4 v6, 0x0

    move v4, v6

    .line 3258
    .local v4, "last":I
    const/4 v6, -0x1

    move v5, v6

    .line 3259
    .local v5, "pos":I
    :goto_0
    move v6, v2

    if-ltz v6, :cond_0

    .line 3261
    add-int/lit8 v5, v5, 0x1

    move v6, v5

    move v4, v6

    .line 3262
    move-object v6, v1

    const/16 v7, 0x3b

    move v8, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    move v5, v6

    .line 3259
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3264
    :cond_0
    move-object v6, v3

    move-object v7, v1

    move v8, v4

    move v9, v5

    move v10, v4

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 3265
    return-void
.end method

.method private readInt(I)I
    .locals 6

    .prologue
    .line 3238
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "offset":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v2

    const/16 v3, 0x10

    shl-int/lit8 v2, v2, 0x10

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v3

    or-int/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return v0
.end method

.method private readUnsignedShort(I)I
    .locals 7

    .prologue
    .line 3233
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "offset":I
    const/16 v2, 0xff

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->code:[B

    move v4, v1

    aget-byte v3, v3, v4

    and-int/2addr v2, v3

    const/16 v3, 0x8

    shl-int/lit8 v2, v2, 0x8

    const/16 v3, 0xff

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->code:[B

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return v0
.end method

.method private words([Lgnu/bytecode/Type;)I
    .locals 6

    .prologue
    .line 1459
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "types":[Lgnu/bytecode/Type;
    const/4 v4, 0x0

    move v2, v4

    .line 1460
    .local v2, "res":I
    move-object v4, v1

    array-length v4, v4

    move v3, v4

    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    move v4, v3

    if-ltz v4, :cond_1

    .line 1461
    move-object v4, v1

    move v5, v3

    aget-object v4, v4, v5

    iget v4, v4, Lgnu/bytecode/Type;->size:I

    const/4 v5, 0x4

    if-le v4, v5, :cond_0

    .line 1462
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 1464
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1465
    :cond_1
    move v4, v2

    move v0, v4

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return v0
.end method


# virtual methods
.method public addHandler(IIII)V
    .locals 13

    .prologue
    .line 2093
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "start_pc":I
    move v2, p2

    .local v2, "end_pc":I
    move/from16 v3, p3

    .local v3, "handler_pc":I
    move/from16 v4, p4

    .local v4, "catch_type":I
    const/4 v7, 0x4

    move-object v8, v0

    iget v8, v8, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    mul-int/2addr v7, v8

    move v5, v7

    .line 2094
    .local v5, "index":I
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/CodeAttr;->exception_table:[S

    if-nez v7, :cond_1

    .line 2096
    move-object v7, v0

    const/16 v8, 0x14

    new-array v8, v8, [S

    iput-object v8, v7, Lgnu/bytecode/CodeAttr;->exception_table:[S

    .line 2104
    :cond_0
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/CodeAttr;->exception_table:[S

    move v8, v5

    add-int/lit8 v5, v5, 0x1

    move v9, v1

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 2105
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/CodeAttr;->exception_table:[S

    move v8, v5

    add-int/lit8 v5, v5, 0x1

    move v9, v2

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 2106
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/CodeAttr;->exception_table:[S

    move v8, v5

    add-int/lit8 v5, v5, 0x1

    move v9, v3

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 2107
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/CodeAttr;->exception_table:[S

    move v8, v5

    add-int/lit8 v5, v5, 0x1

    move v9, v4

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 2108
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    .line 2109
    return-void

    .line 2098
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/CodeAttr;->exception_table:[S

    array-length v7, v7

    move v8, v5

    if-gt v7, v8, :cond_0

    .line 2100
    const/4 v7, 0x2

    move-object v8, v0

    iget-object v8, v8, Lgnu/bytecode/CodeAttr;->exception_table:[S

    array-length v8, v8

    mul-int/2addr v7, v8

    new-array v7, v7, [S

    move-object v6, v7

    .line 2101
    .local v6, "new_table":[S
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/CodeAttr;->exception_table:[S

    const/4 v8, 0x0

    move-object v9, v6

    const/4 v10, 0x0

    move v11, v5

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2102
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lgnu/bytecode/CodeAttr;->exception_table:[S

    goto :goto_0
.end method

.method public addHandler(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/bytecode/ClassType;)V
    .locals 13

    .prologue
    .line 2116
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "start_try":Lgnu/bytecode/Label;
    move-object v2, p2

    .local v2, "end_try":Lgnu/bytecode/Label;
    move-object/from16 v3, p3

    .local v3, "catch_type":Lgnu/bytecode/ClassType;
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v8

    move-object v4, v8

    .line 2118
    .local v4, "constants":Lgnu/bytecode/ConstantPool;
    move-object v8, v3

    if-nez v8, :cond_0

    .line 2119
    const/4 v8, 0x0

    move v5, v8

    .line 2122
    .local v5, "catch_type_index":I
    :goto_0
    move-object v8, v0

    const/16 v9, 0xb

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 2123
    move-object v8, v0

    const/16 v9, 0xc

    move v10, v5

    move-object v11, v2

    invoke-virtual {v8, v9, v10, v11}, Lgnu/bytecode/CodeAttr;->fixupAdd(IILgnu/bytecode/Label;)V

    .line 2124
    new-instance v8, Lgnu/bytecode/Label;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Lgnu/bytecode/Label;-><init>()V

    move-object v6, v8

    .line 2125
    .local v6, "handler":Lgnu/bytecode/Label;
    move-object v8, v6

    move-object v9, v1

    iget-object v9, v9, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    iput-object v9, v8, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    .line 2126
    move-object v8, v6

    const/4 v9, 0x1

    new-array v9, v9, [Lgnu/bytecode/Type;

    iput-object v9, v8, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    .line 2127
    move-object v8, v3

    if-nez v8, :cond_1

    sget-object v8, Lgnu/bytecode/Type;->javalangThrowableType:Lgnu/bytecode/ClassType;

    :goto_1
    move-object v7, v8

    .line 2128
    .local v7, "handler_class":Lgnu/bytecode/Type;
    move-object v8, v6

    iget-object v8, v8, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    const/4 v9, 0x0

    move-object v10, v7

    aput-object v10, v8, v9

    .line 2129
    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Lgnu/bytecode/CodeAttr;->setTypes(Lgnu/bytecode/Label;)V

    .line 2130
    move-object v8, v0

    const/16 v9, 0xd

    const/4 v10, 0x0

    move-object v11, v6

    invoke-virtual {v8, v9, v10, v11}, Lgnu/bytecode/CodeAttr;->fixupAdd(IILgnu/bytecode/Label;)V

    .line 2131
    return-void

    .line 2121
    .end local v5    # "catch_type_index":I
    .end local v6    # "handler":Lgnu/bytecode/Label;
    .end local v7    # "handler_class":Lgnu/bytecode/Type;
    :cond_0
    move-object v8, v4

    move-object v9, v3

    invoke-virtual {v8, v9}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v8

    iget v8, v8, Lgnu/bytecode/CpoolClass;->index:I

    move v5, v8

    .restart local v5    # "catch_type_index":I
    goto :goto_0

    .line 2127
    .restart local v6    # "handler":Lgnu/bytecode/Label;
    :cond_1
    move-object v8, v3

    goto :goto_1
.end method

.method public addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;
    .locals 6

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v2, v2, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return-object v0
.end method

.method public addLocal(Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;
    .locals 7

    .prologue
    .line 694
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v3, v3, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return-object v0
.end method

.method public addParamLocals()V
    .locals 7

    .prologue
    .line 700
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v4

    move-object v1, v4

    .line 701
    .local v1, "method":Lgnu/bytecode/Method;
    move-object v4, v1

    iget v4, v4, Lgnu/bytecode/Method;->access_flags:I

    const/16 v5, 0x8

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_0

    .line 702
    move-object v4, v0

    move-object v5, v1

    iget-object v5, v5, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/bytecode/Variable;->setParameter(Z)V

    .line 703
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    array-length v4, v4

    move v2, v4

    .line 704
    .local v2, "arg_count":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 705
    move-object v4, v0

    move-object v5, v1

    iget-object v5, v5, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    move v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/bytecode/Variable;->setParameter(Z)V

    .line 704
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 706
    :cond_1
    return-void
.end method

.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .locals 9

    .prologue
    .line 2787
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "cl":Lgnu/bytecode/ClassType;
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v4, v4, Lgnu/bytecode/LocalVarsAttr;->container:Lgnu/bytecode/AttrContainer;

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    invoke-virtual {v4}, Lgnu/bytecode/LocalVarsAttr;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2788
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lgnu/bytecode/LocalVarsAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 2789
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->processFixups()V

    .line 2790
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    iget v4, v4, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    if-lez v4, :cond_1

    .line 2791
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lgnu/bytecode/StackMapTableAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 2792
    :cond_1
    sget-boolean v4, Lgnu/bytecode/CodeAttr;->instructionLineMode:Z

    if-eqz v4, :cond_3

    .line 2796
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    if-nez v4, :cond_2

    .line 2797
    move-object v4, v0

    new-instance v5, Lgnu/bytecode/LineNumbersAttr;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lgnu/bytecode/LineNumbersAttr;-><init>(Lgnu/bytecode/CodeAttr;)V

    iput-object v5, v4, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    .line 2798
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    const/4 v5, 0x0

    iput v5, v4, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    .line 2799
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->getCodeLength()I

    move-result v4

    move v2, v4

    .line 2800
    .local v2, "codeLen":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_3

    .line 2801
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    move v5, v3

    move v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/LineNumbersAttr;->put(II)V

    .line 2800
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2803
    .end local v2    # "codeLen":I
    .end local v3    # "i":I
    :cond_3
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 2804
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/AttrContainer;Lgnu/bytecode/ClassType;)V

    .line 2805
    return-void
.end method

.method public beginFragment(Lgnu/bytecode/Label;)I
    .locals 6

    .prologue
    .line 3269
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "after":Lgnu/bytecode/Label;
    move-object v2, v0

    new-instance v3, Lgnu/bytecode/Label;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lgnu/bytecode/Label;-><init>()V

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->beginFragment(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return v0
.end method

.method public beginFragment(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)I
    .locals 7

    .prologue
    .line 3274
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "start":Lgnu/bytecode/Label;
    move-object v2, p2

    .local v2, "after":Lgnu/bytecode/Label;
    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/CodeAttr;->fixup_count:I

    move v3, v4

    .line 3275
    .local v3, "i":I
    move-object v4, v0

    const/16 v5, 0xa

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 3276
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v4, v5}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 3277
    move v4, v3

    move v0, v4

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return v0
.end method

.method public disAssemble(Lgnu/bytecode/ClassTypeWriter;II)V
    .locals 20

    .prologue
    .line 2961
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/bytecode/CodeAttr;
    move-object/from16 v2, p1

    .local v2, "dst":Lgnu/bytecode/ClassTypeWriter;
    move/from16 v3, p2

    .local v3, "start":I
    move/from16 v4, p3

    .local v4, "limit":I
    const/4 v15, 0x0

    move v5, v15

    .line 2962
    .local v5, "wide":Z
    move v15, v3

    move v6, v15

    .local v6, "i":I
    :goto_0
    move v15, v6

    move/from16 v16, v4

    move/from16 v0, v16

    if-ge v15, v0, :cond_34

    .line 2964
    move v15, v6

    add-int/lit8 v6, v6, 0x1

    move v7, v15

    .line 2965
    .local v7, "oldpc":I
    move-object v15, v1

    iget-object v15, v15, Lgnu/bytecode/CodeAttr;->code:[B

    move/from16 v16, v7

    aget-byte v15, v15, v16

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    move v8, v15

    .line 2966
    .local v8, "op":I
    move v15, v7

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    move-object v9, v15

    .line 2967
    .local v9, "str":Ljava/lang/String;
    const/4 v15, 0x0

    move v10, v15

    .line 2968
    .local v10, "printConstant":I
    move-object v15, v9

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    move v11, v15

    .line 2969
    .local v11, "j":I
    :goto_1
    add-int/lit8 v11, v11, 0x1

    move v15, v11

    const/16 v16, 0x3

    move/from16 v0, v16

    if-gt v15, v0, :cond_0

    move-object v15, v2

    const/16 v16, 0x20

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_1

    .line 2970
    :cond_0
    move-object v15, v2

    move-object/from16 v16, v9

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2971
    move-object v15, v2

    const-string/jumbo v16, ": "

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2973
    move v15, v8

    const/16 v16, 0x78

    move/from16 v0, v16

    if-ge v15, v0, :cond_15

    .line 2975
    move v15, v8

    const/16 v16, 0x57

    move/from16 v0, v16

    if-ge v15, v0, :cond_13

    .line 2977
    move v15, v8

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    move-object v15, v1

    const-string/jumbo v16, "nop;aconst_null;iconst_m1;"

    move/from16 v17, v8

    move-object/from16 v18, v2

    invoke-direct/range {v15 .. v18}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 3220
    :cond_1
    :goto_2
    move v15, v10

    if-lez v15, :cond_2

    .line 3223
    move v15, v10

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_33

    const/16 v15, 0xff

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->code:[B

    move-object/from16 v16, v0

    move/from16 v17, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v16, v16, v17

    and-int v15, v15, v16

    move v12, v15

    .line 3225
    .local v12, "index":I
    :goto_3
    move-object v15, v2

    move/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->printConstantOperand(I)V

    .line 3227
    .end local v12    # "index":I
    :cond_2
    move-object v15, v2

    invoke-virtual {v15}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 3228
    goto/16 :goto_0

    .line 2978
    :cond_3
    move v15, v8

    const/16 v16, 0x9

    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    move-object v15, v2

    const-string/jumbo v16, "iconst_"

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    move-object v15, v2

    move/from16 v16, v8

    const/16 v17, 0x3

    add-int/lit8 v16, v16, -0x3

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    goto :goto_2

    .line 2979
    :cond_4
    move v15, v8

    const/16 v16, 0x10

    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    .line 2982
    move v15, v8

    const/16 v16, 0xb

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    const/16 v15, 0x6c

    move v12, v15

    .local v12, "typ":C
    add-int/lit8 v8, v8, -0x9

    .line 2985
    :goto_4
    move-object v15, v2

    move/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    move-object v15, v2

    const-string/jumbo v16, "const_"

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    move-object v15, v2

    move/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 2986
    goto :goto_2

    .line 2983
    .end local v12    # "typ":C
    :cond_5
    move v15, v8

    const/16 v16, 0xe

    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    const/16 v15, 0x66

    move v12, v15

    .restart local v12    # "typ":C
    add-int/lit8 v8, v8, -0xb

    goto :goto_4

    .line 2984
    .end local v12    # "typ":C
    :cond_6
    const/16 v15, 0x64

    move v12, v15

    .restart local v12    # "typ":C
    add-int/lit8 v8, v8, -0xe

    goto :goto_4

    .line 2987
    .end local v12    # "typ":C
    :cond_7
    move v15, v8

    const/16 v16, 0x15

    move/from16 v0, v16

    if-ge v15, v0, :cond_b

    .line 2989
    move v15, v8

    const/16 v16, 0x12

    move/from16 v0, v16

    if-ge v15, v0, :cond_9

    .line 2991
    move-object v15, v1

    const-string/jumbo v16, "bipush ;sipush ;"

    move/from16 v17, v8

    const/16 v18, 0x10

    add-int/lit8 v17, v17, -0x10

    move-object/from16 v18, v2

    invoke-direct/range {v15 .. v18}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 2993
    move v15, v8

    const/16 v16, 0x10

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    move-object v15, v1

    iget-object v15, v15, Lgnu/bytecode/CodeAttr;->code:[B

    move/from16 v16, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v15, v15, v16

    move v12, v15

    .line 2995
    .local v12, "constant":I
    :goto_5
    move-object v15, v2

    move/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 2996
    goto/16 :goto_2

    .line 2994
    .end local v12    # "constant":I
    :cond_8
    move-object v15, v1

    move/from16 v16, v6

    invoke-direct/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v15

    int-to-short v15, v15

    move v12, v15

    .restart local v12    # "constant":I
    add-int/lit8 v6, v6, 0x2

    goto :goto_5

    .line 2999
    .end local v12    # "constant":I
    :cond_9
    move v15, v8

    const/16 v16, 0x12

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    const/4 v15, 0x1

    :goto_6
    move v10, v15

    .line 3000
    move-object v15, v1

    const-string/jumbo v16, "ldc;ldc_w;ldc2_w;"

    move/from16 v17, v8

    const/16 v18, 0x12

    add-int/lit8 v17, v17, -0x12

    move-object/from16 v18, v2

    invoke-direct/range {v15 .. v18}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    goto/16 :goto_2

    .line 2999
    :cond_a
    const/4 v15, 0x2

    goto :goto_6

    .line 3006
    :cond_b
    move v15, v8

    const/16 v16, 0x36

    move/from16 v0, v16

    if-ge v15, v0, :cond_e

    const-string/jumbo v15, "load"

    move-object v12, v15

    .line 3009
    .local v12, "load_or_store":Ljava/lang/String;
    :goto_7
    move v15, v8

    const/16 v16, 0x1a

    move/from16 v0, v16

    if-ge v15, v0, :cond_f

    const/4 v15, -0x1

    move v13, v15

    .local v13, "index":I
    add-int/lit8 v8, v8, -0x15

    .line 3012
    :goto_8
    move-object v15, v2

    const-string/jumbo v16, "ilfdabcs"

    move/from16 v17, v8

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 3013
    move v15, v13

    const/16 v16, -0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    move-object v15, v2

    const/16 v16, 0x61

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->write(I)V

    .line 3014
    :cond_c
    move-object v15, v2

    move-object/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3015
    move v15, v13

    if-ltz v15, :cond_11

    move-object v15, v2

    const/16 v16, 0x5f

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->write(I)V

    move-object v15, v2

    move/from16 v16, v13

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3024
    :cond_d
    :goto_9
    goto/16 :goto_2

    .line 3007
    .end local v12    # "load_or_store":Ljava/lang/String;
    .end local v13    # "index":I
    :cond_e
    const-string/jumbo v15, "store"

    move-object v12, v15

    .restart local v12    # "load_or_store":Ljava/lang/String;
    add-int/lit8 v8, v8, -0x21

    goto :goto_7

    .line 3010
    :cond_f
    move v15, v8

    const/16 v16, 0x2e

    move/from16 v0, v16

    if-ge v15, v0, :cond_10

    add-int/lit8 v8, v8, -0x1a

    move v15, v8

    const/16 v16, 0x4

    rem-int/lit8 v15, v15, 0x4

    move v13, v15

    .restart local v13    # "index":I
    move v15, v8

    const/16 v16, 0x2

    shr-int/lit8 v15, v15, 0x2

    move v8, v15

    goto :goto_8

    .line 3011
    .end local v13    # "index":I
    :cond_10
    const/4 v15, -0x2

    move v13, v15

    .restart local v13    # "index":I
    add-int/lit8 v8, v8, -0x2e

    goto :goto_8

    .line 3016
    :cond_11
    move v15, v13

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    .line 3018
    move v15, v5

    if-eqz v15, :cond_12

    move-object v15, v1

    move/from16 v16, v6

    invoke-direct/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v15

    move v13, v15

    add-int/lit8 v6, v6, 0x2

    .line 3020
    :goto_a
    const/4 v15, 0x0

    move v5, v15

    .line 3021
    move-object v15, v2

    const/16 v16, 0x20

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 3022
    move-object v15, v2

    move/from16 v16, v13

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    goto :goto_9

    .line 3019
    :cond_12
    move-object v15, v1

    iget-object v15, v15, Lgnu/bytecode/CodeAttr;->code:[B

    move/from16 v16, v6

    aget-byte v15, v15, v16

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    move v13, v15

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 3028
    .end local v12    # "load_or_store":Ljava/lang/String;
    .end local v13    # "index":I
    :cond_13
    move v15, v8

    const/16 v16, 0x60

    move/from16 v0, v16

    if-ge v15, v0, :cond_14

    .line 3029
    move-object v15, v1

    const-string/jumbo v16, "pop;pop2;dup;dup_x1;dup_x2;dup2;dup2_x1;dup2_x2;swap;"

    move/from16 v17, v8

    const/16 v18, 0x57

    add-int/lit8 v17, v17, -0x57

    move-object/from16 v18, v2

    invoke-direct/range {v15 .. v18}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    goto/16 :goto_2

    .line 3033
    :cond_14
    move-object v15, v2

    const-string/jumbo v16, "ilfda"

    move/from16 v17, v8

    const/16 v18, 0x60

    add-int/lit8 v17, v17, -0x60

    const/16 v18, 0x4

    rem-int/lit8 v17, v17, 0x4

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 3034
    move-object v15, v1

    const-string/jumbo v16, "add;sub;mul;div;rem;neg;"

    move/from16 v17, v8

    const/16 v18, 0x60

    add-int/lit8 v17, v17, -0x60

    const/16 v18, 0x2

    shr-int/lit8 v17, v17, 0x2

    move-object/from16 v18, v2

    invoke-direct/range {v15 .. v18}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    goto/16 :goto_2

    .line 3040
    :cond_15
    move v15, v8

    const/16 v16, 0xaa

    move/from16 v0, v16

    if-ge v15, v0, :cond_21

    .line 3042
    move v15, v8

    const/16 v16, 0x84

    move/from16 v0, v16

    if-ge v15, v0, :cond_17

    .line 3044
    move-object v15, v2

    move/from16 v16, v8

    const/16 v17, 0x1

    and-int/lit8 v16, v16, 0x1

    if-nez v16, :cond_16

    const/16 v16, 0x69

    :goto_b
    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 3045
    move-object v15, v1

    const-string/jumbo v16, "shl;shr;ushr;and;or;xor;"

    move/from16 v17, v8

    const/16 v18, 0x78

    add-int/lit8 v17, v17, -0x78

    const/16 v18, 0x1

    shr-int/lit8 v17, v17, 0x1

    move-object/from16 v18, v2

    invoke-direct/range {v15 .. v18}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    goto/16 :goto_2

    .line 3044
    :cond_16
    const/16 v16, 0x6c

    goto :goto_b

    .line 3047
    :cond_17
    move v15, v8

    const/16 v16, 0x84

    move/from16 v0, v16

    if-ne v15, v0, :cond_19

    .line 3051
    move-object v15, v2

    const-string/jumbo v16, "iinc"

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3052
    move v15, v5

    if-nez v15, :cond_18

    .line 3054
    const/16 v15, 0xff

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->code:[B

    move-object/from16 v16, v0

    move/from16 v17, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v16, v16, v17

    and-int v15, v15, v16

    move v12, v15

    .line 3055
    .local v12, "var_index":I
    move-object v15, v1

    iget-object v15, v15, Lgnu/bytecode/CodeAttr;->code:[B

    move/from16 v16, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v15, v15, v16

    move v13, v15

    .line 3065
    .local v13, "constant":I
    :goto_c
    move-object v15, v2

    const/16 v16, 0x20

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    move-object v15, v2

    move/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3066
    move-object v15, v2

    const/16 v16, 0x20

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    move-object v15, v2

    move/from16 v16, v13

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3067
    goto/16 :goto_2

    .line 3059
    .end local v12    # "var_index":I
    .end local v13    # "constant":I
    :cond_18
    move-object v15, v1

    move/from16 v16, v6

    invoke-direct/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v15

    move v12, v15

    .line 3060
    .restart local v12    # "var_index":I
    add-int/lit8 v6, v6, 0x2

    .line 3061
    move-object v15, v1

    move/from16 v16, v6

    invoke-direct/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v15

    int-to-short v15, v15

    move v13, v15

    .line 3062
    .restart local v13    # "constant":I
    add-int/lit8 v6, v6, 0x2

    .line 3063
    const/4 v15, 0x0

    move v5, v15

    goto :goto_c

    .line 3068
    .end local v12    # "var_index":I
    .end local v13    # "constant":I
    :cond_19
    move v15, v8

    const/16 v16, 0x94

    move/from16 v0, v16

    if-ge v15, v0, :cond_1a

    .line 3070
    move-object v15, v2

    const-string/jumbo v16, "ilfdi"

    move/from16 v17, v8

    const/16 v18, 0x85

    move/from16 v0, v17

    add-int/lit16 v0, v0, -0x85

    move/from16 v17, v0

    const/16 v18, 0x3

    div-int/lit8 v17, v17, 0x3

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 3071
    move-object v15, v2

    const/16 v16, 0x32

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 3072
    move-object v15, v2

    const-string/jumbo v16, "lfdifdildilfbcs"

    move/from16 v17, v8

    const/16 v18, 0x85

    move/from16 v0, v17

    add-int/lit16 v0, v0, -0x85

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto/16 :goto_2

    .line 3074
    :cond_1a
    move v15, v8

    const/16 v16, 0x99

    move/from16 v0, v16

    if-ge v15, v0, :cond_1b

    .line 3075
    move-object v15, v1

    const-string/jumbo v16, "lcmp;fcmpl;fcmpg;dcmpl;dcmpg;"

    move/from16 v17, v8

    const/16 v18, 0x94

    move/from16 v0, v17

    add-int/lit16 v0, v0, -0x94

    move/from16 v17, v0

    move-object/from16 v18, v2

    invoke-direct/range {v15 .. v18}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    goto/16 :goto_2

    .line 3076
    :cond_1b
    move v15, v8

    const/16 v16, 0xa9

    move/from16 v0, v16

    if-ge v15, v0, :cond_1f

    .line 3078
    move v15, v8

    const/16 v16, 0x9f

    move/from16 v0, v16

    if-ge v15, v0, :cond_1c

    .line 3080
    move-object v15, v2

    const-string/jumbo v16, "if"

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3081
    move-object v15, v1

    const-string/jumbo v16, "eq;ne;lt;ge;gt;le;"

    move/from16 v17, v8

    const/16 v18, 0x99

    move/from16 v0, v17

    add-int/lit16 v0, v0, -0x99

    move/from16 v17, v0

    move-object/from16 v18, v2

    invoke-direct/range {v15 .. v18}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 3091
    :goto_d
    move-object v15, v1

    move/from16 v16, v6

    invoke-direct/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v15

    int-to-short v15, v15

    move v12, v15

    .line 3092
    .local v12, "delta":I
    add-int/lit8 v6, v6, 0x2

    .line 3093
    move-object v15, v2

    const/16 v16, 0x20

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    move-object v15, v2

    move/from16 v16, v7

    move/from16 v17, v12

    add-int v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3094
    goto/16 :goto_2

    .line 3083
    .end local v12    # "delta":I
    :cond_1c
    move v15, v8

    const/16 v16, 0xa7

    move/from16 v0, v16

    if-ge v15, v0, :cond_1e

    .line 3085
    move v15, v8

    const/16 v16, 0xa5

    move/from16 v0, v16

    if-ge v15, v0, :cond_1d

    move-object v15, v2

    const-string/jumbo v16, "if_icmp"

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3087
    :goto_e
    move-object v15, v1

    const-string/jumbo v16, "eq;ne;lt;ge;gt;le;"

    move/from16 v17, v8

    const/16 v18, 0x9f

    move/from16 v0, v17

    add-int/lit16 v0, v0, -0x9f

    move/from16 v17, v0

    move-object/from16 v18, v2

    invoke-direct/range {v15 .. v18}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    goto :goto_d

    .line 3086
    :cond_1d
    move-object v15, v2

    const-string/jumbo v16, "if_acmp"

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v8, v8, -0x6

    goto :goto_e

    .line 3090
    :cond_1e
    move-object v15, v1

    const-string/jumbo v16, "goto;jsr;"

    move/from16 v17, v8

    const/16 v18, 0xa7

    move/from16 v0, v17

    add-int/lit16 v0, v0, -0xa7

    move/from16 v17, v0

    move-object/from16 v18, v2

    invoke-direct/range {v15 .. v18}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    goto :goto_d

    .line 3098
    :cond_1f
    move-object v15, v2

    const-string/jumbo v16, "ret "

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3099
    move v15, v5

    if-eqz v15, :cond_20

    move-object v15, v1

    move/from16 v16, v6

    invoke-direct/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v15

    move v12, v15

    .local v12, "index":I
    add-int/lit8 v12, v12, 0x2

    .line 3101
    :goto_f
    const/4 v15, 0x0

    move v5, v15

    .line 3102
    move-object v15, v2

    move/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3103
    goto/16 :goto_2

    .line 3100
    .end local v12    # "index":I
    :cond_20
    move-object v15, v1

    iget-object v15, v15, Lgnu/bytecode/CodeAttr;->code:[B

    move/from16 v16, v6

    aget-byte v15, v15, v16

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    move v12, v15

    .restart local v12    # "index":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 3107
    .end local v12    # "index":I
    :cond_21
    move v15, v8

    const/16 v16, 0xac

    move/from16 v0, v16

    if-ge v15, v0, :cond_25

    .line 3109
    move-object v15, v1

    iget v15, v15, Lgnu/bytecode/CodeAttr;->fixup_count:I

    if-gtz v15, :cond_22

    .line 3110
    move v15, v6

    const/16 v16, 0x3

    add-int/lit8 v15, v15, 0x3

    const/16 v16, -0x4

    and-int/lit8 v15, v15, -0x4

    move v6, v15

    .line 3111
    :cond_22
    move-object v15, v1

    move/from16 v16, v6

    invoke-direct/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v15

    move v12, v15

    .local v12, "code_offset":I
    add-int/lit8 v6, v6, 0x4

    .line 3112
    move v15, v8

    const/16 v16, 0xaa

    move/from16 v0, v16

    if-ne v15, v0, :cond_24

    .line 3114
    move-object v15, v2

    const-string/jumbo v16, "tableswitch"

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3115
    move-object v15, v1

    move/from16 v16, v6

    invoke-direct/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v15

    move v13, v15

    .local v13, "low":I
    add-int/lit8 v6, v6, 0x4

    .line 3116
    move-object v15, v1

    move/from16 v16, v6

    invoke-direct/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v15

    move v14, v15

    .local v14, "high":I
    add-int/lit8 v6, v6, 0x4

    .line 3117
    move-object v15, v2

    const-string/jumbo v16, " low: "

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    move-object v15, v2

    move/from16 v16, v13

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3118
    move-object v15, v2

    const-string/jumbo v16, " high: "

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    move-object v15, v2

    move/from16 v16, v14

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3119
    move-object v15, v2

    const-string/jumbo v16, " default: "

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    move-object v15, v2

    move/from16 v16, v7

    move/from16 v17, v12

    add-int v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3120
    :goto_10
    move v15, v13

    move/from16 v16, v14

    move/from16 v0, v16

    if-gt v15, v0, :cond_23

    .line 3122
    move-object v15, v1

    move/from16 v16, v6

    invoke-direct/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v15

    move v12, v15

    add-int/lit8 v6, v6, 0x4

    .line 3123
    move-object v15, v2

    invoke-virtual {v15}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 3124
    move-object v15, v2

    const-string/jumbo v16, "  "

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    move-object v15, v2

    move/from16 v16, v13

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3125
    move-object v15, v2

    const-string/jumbo v16, ": "

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    move-object v15, v2

    move/from16 v16, v7

    move/from16 v17, v12

    add-int v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3120
    add-int/lit8 v13, v13, 0x1

    goto :goto_10

    .line 3127
    .line 3143
    .end local v13    # "low":I
    .end local v14    # "high":I
    :cond_23
    goto/16 :goto_2

    .line 3130
    :cond_24
    move-object v15, v2

    const-string/jumbo v16, "lookupswitch"

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3131
    move-object v15, v1

    move/from16 v16, v6

    invoke-direct/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v15

    move v13, v15

    .local v13, "npairs":I
    add-int/lit8 v6, v6, 0x4

    .line 3132
    move-object v15, v2

    const-string/jumbo v16, " npairs: "

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    move-object v15, v2

    move/from16 v16, v13

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3133
    move-object v15, v2

    const-string/jumbo v16, " default: "

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    move-object v15, v2

    move/from16 v16, v7

    move/from16 v17, v12

    add-int v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3134
    :goto_11
    add-int/lit8 v13, v13, -0x1

    move v15, v13

    if-ltz v15, :cond_23

    .line 3136
    move-object v15, v1

    move/from16 v16, v6

    invoke-direct/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v15

    move v14, v15

    .local v14, "match":I
    add-int/lit8 v6, v6, 0x4

    .line 3137
    move-object v15, v1

    move/from16 v16, v6

    invoke-direct/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v15

    move v12, v15

    add-int/lit8 v6, v6, 0x4

    .line 3138
    move-object v15, v2

    invoke-virtual {v15}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 3139
    move-object v15, v2

    const-string/jumbo v16, "  "

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    move-object v15, v2

    move/from16 v16, v14

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3140
    move-object v15, v2

    const-string/jumbo v16, ": "

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    move-object v15, v2

    move/from16 v16, v7

    move/from16 v17, v12

    add-int v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3141
    goto :goto_11

    .line 3144
    .end local v12    # "code_offset":I
    .end local v13    # "npairs":I
    .end local v14    # "match":I
    :cond_25
    move v15, v8

    const/16 v16, 0xb2

    move/from16 v0, v16

    if-ge v15, v0, :cond_27

    .line 3146
    move v15, v8

    const/16 v16, 0xb1

    move/from16 v0, v16

    if-ge v15, v0, :cond_26

    move-object v15, v2

    const-string/jumbo v16, "ilfda"

    move/from16 v17, v8

    const/16 v18, 0xac

    move/from16 v0, v17

    add-int/lit16 v0, v0, -0xac

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 3147
    :cond_26
    move-object v15, v2

    const-string/jumbo v16, "return"

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3149
    :cond_27
    move v15, v8

    const/16 v16, 0xb6

    move/from16 v0, v16

    if-ge v15, v0, :cond_28

    .line 3151
    move-object v15, v1

    const-string/jumbo v16, "getstatic;putstatic;getfield;putfield;"

    move/from16 v17, v8

    const/16 v18, 0xb2

    move/from16 v0, v17

    add-int/lit16 v0, v0, -0xb2

    move/from16 v17, v0

    move-object/from16 v18, v2

    invoke-direct/range {v15 .. v18}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 3152
    const/4 v15, 0x2

    move v10, v15

    goto/16 :goto_2

    .line 3154
    :cond_28
    move v15, v8

    const/16 v16, 0xb9

    move/from16 v0, v16

    if-ge v15, v0, :cond_29

    .line 3156
    move-object v15, v2

    const-string/jumbo v16, "invoke"

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3157
    move-object v15, v1

    const-string/jumbo v16, "virtual;special;static;"

    move/from16 v17, v8

    const/16 v18, 0xb6

    move/from16 v0, v17

    add-int/lit16 v0, v0, -0xb6

    move/from16 v17, v0

    move-object/from16 v18, v2

    invoke-direct/range {v15 .. v18}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 3158
    const/4 v15, 0x2

    move v10, v15

    goto/16 :goto_2

    .line 3160
    :cond_29
    move v15, v8

    const/16 v16, 0xb9

    move/from16 v0, v16

    if-ne v15, v0, :cond_2a

    .line 3162
    move-object v15, v2

    const-string/jumbo v16, "invokeinterface ("

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3163
    move-object v15, v1

    move/from16 v16, v6

    invoke-direct/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v15

    move v12, v15

    .line 3164
    .local v12, "index":I
    add-int/lit8 v6, v6, 0x2

    .line 3165
    const/16 v15, 0xff

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->code:[B

    move-object/from16 v16, v0

    move/from16 v17, v6

    aget-byte v16, v16, v17

    and-int v15, v15, v16

    move v13, v15

    .line 3166
    .local v13, "args":I
    add-int/lit8 v6, v6, 0x2

    .line 3167
    move-object v15, v2

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v13

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " args)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3168
    move-object v15, v2

    move/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->printConstantOperand(I)V

    .line 3169
    goto/16 :goto_2

    .line 3170
    .end local v12    # "index":I
    .end local v13    # "args":I
    :cond_2a
    move v15, v8

    const/16 v16, 0xc4

    move/from16 v0, v16

    if-ge v15, v0, :cond_2e

    .line 3172
    move-object v15, v1

    const-string/jumbo v16, "186;new;newarray;anewarray;arraylength;athrow;checkcast;instanceof;monitorenter;monitorexit;"

    move/from16 v17, v8

    const/16 v18, 0xba

    move/from16 v0, v17

    add-int/lit16 v0, v0, -0xba

    move/from16 v17, v0

    move-object/from16 v18, v2

    invoke-direct/range {v15 .. v18}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 3173
    move v15, v8

    const/16 v16, 0xbb

    move/from16 v0, v16

    if-eq v15, v0, :cond_2b

    move v15, v8

    const/16 v16, 0xbd

    move/from16 v0, v16

    if-eq v15, v0, :cond_2b

    move v15, v8

    const/16 v16, 0xc0

    move/from16 v0, v16

    if-eq v15, v0, :cond_2b

    move v15, v8

    const/16 v16, 0xc1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2c

    .line 3174
    :cond_2b
    const/4 v15, 0x2

    move v10, v15

    goto/16 :goto_2

    .line 3175
    :cond_2c
    move v15, v8

    const/16 v16, 0xbc

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 3177
    move-object v15, v1

    iget-object v15, v15, Lgnu/bytecode/CodeAttr;->code:[B

    move/from16 v16, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v15, v15, v16

    move v12, v15

    .line 3178
    .local v12, "type":I
    move-object v15, v2

    const/16 v16, 0x20

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 3179
    move v15, v12

    const/16 v16, 0x4

    move/from16 v0, v16

    if-lt v15, v0, :cond_2d

    move v15, v12

    const/16 v16, 0xb

    move/from16 v0, v16

    if-gt v15, v0, :cond_2d

    .line 3180
    move-object v15, v1

    const-string/jumbo v16, "boolean;char;float;double;byte;short;int;long;"

    move/from16 v17, v12

    const/16 v18, 0x4

    add-int/lit8 v17, v17, -0x4

    move-object/from16 v18, v2

    invoke-direct/range {v15 .. v18}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 3184
    :goto_12
    goto/16 :goto_2

    .line 3183
    :cond_2d
    move-object v15, v2

    move/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    goto :goto_12

    .line 3187
    .end local v12    # "type":I
    :cond_2e
    move v15, v8

    const/16 v16, 0xc4

    move/from16 v0, v16

    if-ne v15, v0, :cond_2f

    .line 3189
    move-object v15, v2

    const-string/jumbo v16, "wide"

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3190
    const/4 v15, 0x1

    move v5, v15

    goto/16 :goto_2

    .line 3192
    :cond_2f
    move v15, v8

    const/16 v16, 0xc5

    move/from16 v0, v16

    if-ne v15, v0, :cond_30

    .line 3194
    move-object v15, v2

    const-string/jumbo v16, "multianewarray"

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3195
    move-object v15, v1

    move/from16 v16, v6

    invoke-direct/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v15

    move v12, v15

    .line 3196
    .local v12, "index":I
    add-int/lit8 v6, v6, 0x2

    .line 3197
    move-object v15, v2

    move/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->printConstantOperand(I)V

    .line 3198
    const/16 v15, 0xff

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->code:[B

    move-object/from16 v16, v0

    move/from16 v17, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v16, v16, v17

    and-int v15, v15, v16

    move v13, v15

    .line 3199
    .local v13, "dims":I
    move-object v15, v2

    const/16 v16, 0x20

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 3200
    move-object v15, v2

    move/from16 v16, v13

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3201
    goto/16 :goto_2

    .line 3202
    .end local v12    # "index":I
    .end local v13    # "dims":I
    :cond_30
    move v15, v8

    const/16 v16, 0xc8

    move/from16 v0, v16

    if-ge v15, v0, :cond_31

    .line 3204
    move-object v15, v1

    const-string/jumbo v16, "ifnull;ifnonnull;"

    move/from16 v17, v8

    const/16 v18, 0xc6

    move/from16 v0, v17

    add-int/lit16 v0, v0, -0xc6

    move/from16 v17, v0

    move-object/from16 v18, v2

    invoke-direct/range {v15 .. v18}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 3205
    move-object v15, v1

    move/from16 v16, v6

    invoke-direct/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v15

    int-to-short v15, v15

    move v12, v15

    .line 3206
    .local v12, "delta":I
    add-int/lit8 v6, v6, 0x2

    .line 3207
    move-object v15, v2

    const/16 v16, 0x20

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    move-object v15, v2

    move/from16 v16, v7

    move/from16 v17, v12

    add-int v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3208
    goto/16 :goto_2

    .line 3209
    .end local v12    # "delta":I
    :cond_31
    move v15, v8

    const/16 v16, 0xca

    move/from16 v0, v16

    if-ge v15, v0, :cond_32

    .line 3211
    move-object v15, v1

    const-string/jumbo v16, "goto_w;jsr_w;"

    move/from16 v17, v8

    const/16 v18, 0xc8

    move/from16 v0, v17

    add-int/lit16 v0, v0, -0xc8

    move/from16 v17, v0

    move-object/from16 v18, v2

    invoke-direct/range {v15 .. v18}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 3212
    move-object v15, v1

    move/from16 v16, v6

    invoke-direct/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v15

    move v12, v15

    .line 3213
    .restart local v12    # "delta":I
    add-int/lit8 v6, v6, 0x4

    .line 3214
    move-object v15, v2

    const/16 v16, 0x20

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    move-object v15, v2

    move/from16 v16, v7

    move/from16 v17, v12

    add-int v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3215
    goto/16 :goto_2

    .line 3217
    .end local v12    # "delta":I
    :cond_32
    move-object v15, v2

    move/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    goto/16 :goto_2

    .line 3224
    :cond_33
    move-object v15, v1

    move/from16 v16, v6

    invoke-direct/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v15

    move v12, v15

    .local v12, "index":I
    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_3

    .line 3229
    .end local v7    # "oldpc":I
    .end local v8    # "op":I
    .end local v9    # "str":Ljava/lang/String;
    .end local v10    # "printConstant":I
    .end local v11    # "j":I
    .end local v12    # "index":I
    :cond_34
    return-void
.end method

.method public final emitAdd()V
    .locals 3

    .prologue
    .line 1274
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    const/16 v2, 0x60

    invoke-direct {v1, v2}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public final emitAdd(C)V
    .locals 5

    .prologue
    .line 1271
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "sig":C
    move-object v2, v0

    const/16 v3, 0x60

    move v4, v1

    invoke-direct {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitBinop(IC)V

    return-void
.end method

.method public final emitAdd(Lgnu/bytecode/PrimType;)V
    .locals 5

    .prologue
    .line 1272
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/PrimType;
    move-object v2, v0

    const/16 v3, 0x60

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitBinop(ILgnu/bytecode/Type;)V

    return-void
.end method

.method public final emitAnd()V
    .locals 3

    .prologue
    .line 1284
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    const/16 v2, 0x7e

    invoke-direct {v1, v2}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public final emitArrayLength()V
    .locals 5

    .prologue
    .line 1070
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    instance-of v1, v1, Lgnu/bytecode/ArrayType;

    if-nez v1, :cond_0

    .line 1071
    new-instance v1, Ljava/lang/Error;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "non-array type in emitArrayLength"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1073
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1074
    move-object v1, v0

    const/16 v2, 0xbe

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1075
    move-object v1, v0

    sget-object v2, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1076
    return-void
.end method

.method public emitArrayLoad()V
    .locals 6

    .prologue
    .line 1161
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v3

    .line 1162
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v3

    move-object v1, v3

    .line 1163
    .local v1, "arrayType":Lgnu/bytecode/Type;
    move-object v3, v1

    check-cast v3, Lgnu/bytecode/ArrayType;

    invoke-virtual {v3}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v3

    move-object v2, v3

    .line 1164
    .local v2, "elementType":Lgnu/bytecode/Type;
    move-object v3, v0

    const/16 v4, 0x2e

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    .line 1165
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1166
    return-void
.end method

.method public emitArrayLoad(Lgnu/bytecode/Type;)V
    .locals 5

    .prologue
    .line 1148
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "element_type":Lgnu/bytecode/Type;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 1149
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 1150
    move-object v2, v0

    const/16 v3, 0x2e

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    .line 1151
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1152
    return-void
.end method

.method public emitArrayStore()V
    .locals 6

    .prologue
    .line 1135
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v3

    .line 1136
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v3

    .line 1137
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v3

    move-object v1, v3

    .line 1138
    .local v1, "arrayType":Lgnu/bytecode/Type;
    move-object v3, v1

    check-cast v3, Lgnu/bytecode/ArrayType;

    invoke-virtual {v3}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v3

    move-object v2, v3

    .line 1139
    .local v2, "elementType":Lgnu/bytecode/Type;
    move-object v3, v0

    const/16 v4, 0x4f

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    .line 1140
    return-void
.end method

.method public emitArrayStore(Lgnu/bytecode/Type;)V
    .locals 5

    .prologue
    .line 1122
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "element_type":Lgnu/bytecode/Type;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 1123
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 1124
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 1125
    move-object v2, v0

    const/16 v3, 0x4f

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    .line 1126
    return-void
.end method

.method public emitBinop(ILgnu/bytecode/Type;)V
    .locals 6

    .prologue
    .line 1260
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "base_code":I
    move-object v2, p2

    .local v2, "type":Lgnu/bytecode/Type;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v3

    .line 1261
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v3

    .line 1262
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    .line 1263
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1264
    return-void
.end method

.method public emitCatchEnd()V
    .locals 3

    .prologue
    .line 2270
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lgnu/bytecode/CodeAttr;->gotoFinallyOrEnd(Z)V

    .line 2271
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/bytecode/TryState;->try_type:Lgnu/bytecode/ClassType;

    .line 2272
    return-void
.end method

.method public emitCatchStart(Lgnu/bytecode/Variable;)V
    .locals 7

    .prologue
    .line 2257
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "var":Lgnu/bytecode/Variable;
    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lgnu/bytecode/CodeAttr;->emitTryEnd(Z)V

    .line 2258
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v4, v4, Lgnu/bytecode/TryState;->start_try:Lgnu/bytecode/Label;

    iget-object v4, v4, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    sget-object v5, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/CodeAttr;->setTypes([Lgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    .line 2259
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->try_type:Lgnu/bytecode/ClassType;

    if-eqz v3, :cond_0

    .line 2260
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->emitCatchEnd()V

    .line 2261
    :cond_0
    move-object v3, v1

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    move-object v2, v3

    .line 2262
    .local v2, "type":Lgnu/bytecode/ClassType;
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    move-object v4, v2

    iput-object v4, v3, Lgnu/bytecode/TryState;->try_type:Lgnu/bytecode/ClassType;

    .line 2263
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v4, v4, Lgnu/bytecode/TryState;->start_try:Lgnu/bytecode/Label;

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v5, v5, Lgnu/bytecode/TryState;->end_try:Lgnu/bytecode/Label;

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/bytecode/CodeAttr;->addHandler(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/bytecode/ClassType;)V

    .line 2264
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 2265
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2266
    :cond_1
    return-void

    .line 2261
    .end local v2    # "type":Lgnu/bytecode/ClassType;
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/ClassType;

    goto :goto_0
.end method

.method public emitCheckcast(Lgnu/bytecode/Type;)V
    .locals 5

    .prologue
    .line 2027
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->topType()Lgnu/bytecode/Type;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lgnu/bytecode/CodeAttr;->castNeeded(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2029
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0xc0

    invoke-direct {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;I)V

    .line 2030
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 2032
    :cond_0
    return-void
.end method

.method public final emitConvert(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)V
    .locals 12

    .prologue
    .line 1923
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "from":Lgnu/bytecode/Type;
    move-object v2, p2

    .local v2, "to":Lgnu/bytecode/Type;
    move-object v8, v2

    invoke-virtual {v8}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 1924
    .local v3, "to_sig":Ljava/lang/String;
    move-object v8, v1

    invoke-virtual {v8}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 1925
    .local v4, "from_sig":Ljava/lang/String;
    const/4 v8, -0x1

    move v5, v8

    .line 1926
    .local v5, "op":I
    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 1928
    :cond_0
    move-object v8, v3

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v6, v8

    .line 1929
    .local v6, "to_sig0":C
    move-object v8, v4

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v7, v8

    .line 1930
    .local v7, "from_sig0":C
    move v8, v7

    move v9, v6

    if-ne v8, v9, :cond_1

    .line 1931
    .line 1986
    .end local v6    # "to_sig0":C
    .end local v7    # "from_sig0":C
    :goto_0
    return-void

    .line 1932
    .restart local v6    # "to_sig0":C
    .restart local v7    # "from_sig0":C
    :cond_1
    move-object v8, v1

    iget v8, v8, Lgnu/bytecode/Type;->size:I

    const/4 v9, 0x4

    if-ge v8, v9, :cond_2

    .line 1933
    const/16 v8, 0x49

    move v7, v8

    .line 1934
    :cond_2
    move-object v8, v2

    iget v8, v8, Lgnu/bytecode/Type;->size:I

    const/4 v9, 0x4

    if-ge v8, v9, :cond_3

    .line 1936
    move-object v8, v0

    move-object v9, v1

    sget-object v10, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v8, v9, v10}, Lgnu/bytecode/CodeAttr;->emitConvert(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)V

    .line 1937
    const/16 v8, 0x49

    move v7, v8

    .line 1939
    :cond_3
    move v8, v7

    move v9, v6

    if-ne v8, v9, :cond_4

    .line 1940
    goto :goto_0

    .line 1941
    :cond_4
    move v8, v7

    packed-switch v8, :pswitch_data_0

    .line 1980
    .end local v6    # "to_sig0":C
    .end local v7    # "from_sig0":C
    :cond_5
    :goto_1
    :pswitch_0
    move v8, v5

    if-gez v8, :cond_6

    .line 1981
    new-instance v8, Ljava/lang/Error;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "unsupported CodeAttr.emitConvert"

    invoke-direct {v9, v10}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1944
    .restart local v6    # "to_sig0":C
    .restart local v7    # "from_sig0":C
    :pswitch_1
    move v8, v6

    sparse-switch v8, :sswitch_data_0

    .line 1953
    :goto_2
    goto :goto_1

    .line 1946
    :sswitch_0
    const/16 v8, 0x91

    move v5, v8

    goto :goto_2

    .line 1947
    :sswitch_1
    const/16 v8, 0x92

    move v5, v8

    goto :goto_2

    .line 1948
    :sswitch_2
    const/16 v8, 0x93

    move v5, v8

    goto :goto_2

    .line 1949
    :sswitch_3
    const/16 v8, 0x85

    move v5, v8

    goto :goto_2

    .line 1950
    :sswitch_4
    const/16 v8, 0x86

    move v5, v8

    goto :goto_2

    .line 1951
    :sswitch_5
    const/16 v8, 0x87

    move v5, v8

    goto :goto_2

    .line 1955
    :pswitch_2
    move v8, v6

    packed-switch v8, :pswitch_data_1

    .line 1961
    :goto_3
    :pswitch_3
    goto :goto_1

    .line 1957
    :pswitch_4
    const/16 v8, 0x88

    move v5, v8

    goto :goto_3

    .line 1958
    :pswitch_5
    const/16 v8, 0x89

    move v5, v8

    goto :goto_3

    .line 1959
    :pswitch_6
    const/16 v8, 0x8a

    move v5, v8

    goto :goto_3

    .line 1963
    :pswitch_7
    move v8, v6

    sparse-switch v8, :sswitch_data_1

    .line 1969
    :goto_4
    goto :goto_1

    .line 1965
    :sswitch_6
    const/16 v8, 0x8b

    move v5, v8

    goto :goto_4

    .line 1966
    :sswitch_7
    const/16 v8, 0x8c

    move v5, v8

    goto :goto_4

    .line 1967
    :sswitch_8
    const/16 v8, 0x8d

    move v5, v8

    goto :goto_4

    .line 1971
    :pswitch_8
    move v8, v6

    packed-switch v8, :pswitch_data_2

    :pswitch_9
    goto :goto_1

    .line 1975
    :pswitch_a
    const/16 v8, 0x90

    move v5, v8

    goto :goto_1

    .line 1973
    :pswitch_b
    const/16 v8, 0x8e

    move v5, v8

    goto :goto_1

    .line 1974
    :pswitch_c
    const/16 v8, 0x8f

    move v5, v8

    goto :goto_1

    .line 1982
    .end local v6    # "to_sig0":C
    .end local v7    # "from_sig0":C
    :cond_6
    move-object v8, v0

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1983
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v8

    .line 1984
    move-object v8, v0

    move v9, v5

    invoke-virtual {v8, v9}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1985
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1986
    goto/16 :goto_0

    .line 1941
    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1944
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x43 -> :sswitch_1
        0x44 -> :sswitch_5
        0x46 -> :sswitch_4
        0x4a -> :sswitch_3
        0x53 -> :sswitch_2
    .end sparse-switch

    .line 1955
    :pswitch_data_1
    .packed-switch 0x44
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1963
    :sswitch_data_1
    .sparse-switch
        0x44 -> :sswitch_8
        0x49 -> :sswitch_6
        0x4a -> :sswitch_7
    .end sparse-switch

    .line 1971
    :pswitch_data_2
    .packed-switch 0x46
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public final emitDiv()V
    .locals 3

    .prologue
    .line 1282
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    const/16 v2, 0x6c

    invoke-direct {v1, v2}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public emitDup()V
    .locals 5

    .prologue
    .line 518
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 520
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->topType()Lgnu/bytecode/Type;

    move-result-object v2

    move-object v1, v2

    .line 521
    .local v1, "type":Lgnu/bytecode/Type;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lgnu/bytecode/Type;->size:I

    const/4 v4, 0x4

    if-gt v3, v4, :cond_0

    const/16 v3, 0x59

    :goto_0
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 522
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 523
    return-void

    .line 521
    :cond_0
    const/16 v3, 0x5c

    goto :goto_0
.end method

.method public emitDup(I)V
    .locals 5

    .prologue
    .line 619
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "size":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitDup(II)V

    .line 620
    return-void
.end method

.method public emitDup(II)V
    .locals 12

    .prologue
    .line 551
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "size":I
    move v2, p2

    .local v2, "offset":I
    move v8, v1

    if-nez v8, :cond_0

    .line 552
    .line 611
    :goto_0
    return-void

    .line 553
    :cond_0
    move-object v8, v0

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 555
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v8

    move-object v3, v8

    .line 556
    .local v3, "copied1":Lgnu/bytecode/Type;
    const/4 v8, 0x0

    move-object v4, v8

    .line 557
    .local v4, "copied2":Lgnu/bytecode/Type;
    move v8, v1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 559
    move-object v8, v3

    iget v8, v8, Lgnu/bytecode/Type;->size:I

    const/4 v9, 0x4

    if-le v8, v9, :cond_3

    .line 560
    new-instance v8, Ljava/lang/Error;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "using dup for 2-word type"

    invoke-direct {v9, v10}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8

    .line 562
    :cond_1
    move v8, v1

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    .line 563
    new-instance v8, Ljava/lang/Error;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "invalid size to emitDup"

    invoke-direct {v9, v10}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8

    .line 564
    :cond_2
    move-object v8, v3

    iget v8, v8, Lgnu/bytecode/Type;->size:I

    const/4 v9, 0x4

    if-gt v8, v9, :cond_3

    .line 566
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v8

    move-object v4, v8

    .line 567
    move-object v8, v4

    iget v8, v8, Lgnu/bytecode/Type;->size:I

    const/4 v9, 0x4

    if-le v8, v9, :cond_3

    .line 568
    new-instance v8, Ljava/lang/Error;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "dup will cause invalid types on stack"

    invoke-direct {v9, v10}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8

    .line 573
    :cond_3
    const/4 v8, 0x0

    move-object v6, v8

    .line 574
    .local v6, "skipped1":Lgnu/bytecode/Type;
    const/4 v8, 0x0

    move-object v7, v8

    .line 575
    .local v7, "skipped2":Lgnu/bytecode/Type;
    move v8, v2

    if-nez v8, :cond_a

    .line 577
    move v8, v1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    const/16 v8, 0x59

    :goto_1
    move v5, v8

    .line 600
    .local v5, "kind":I
    :cond_4
    move-object v8, v0

    move v9, v5

    invoke-virtual {v8, v9}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 601
    move-object v8, v4

    if-eqz v8, :cond_5

    .line 602
    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v8, v9}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 603
    :cond_5
    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v8, v9}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 604
    move-object v8, v7

    if-eqz v8, :cond_6

    .line 605
    move-object v8, v0

    move-object v9, v7

    invoke-virtual {v8, v9}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 606
    :cond_6
    move-object v8, v6

    if-eqz v8, :cond_7

    .line 607
    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 608
    :cond_7
    move-object v8, v4

    if-eqz v8, :cond_8

    .line 609
    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v8, v9}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 610
    :cond_8
    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v8, v9}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 611
    goto/16 :goto_0

    .line 577
    .end local v5    # "kind":I
    :cond_9
    const/16 v8, 0x5c

    goto :goto_1

    .line 579
    :cond_a
    move v8, v2

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    .line 581
    move v8, v1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    const/16 v8, 0x5a

    :goto_2
    move v5, v8

    .line 582
    .restart local v5    # "kind":I
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v8

    move-object v6, v8

    .line 583
    move-object v8, v6

    iget v8, v8, Lgnu/bytecode/Type;->size:I

    const/4 v9, 0x4

    if-le v8, v9, :cond_4

    .line 584
    new-instance v8, Ljava/lang/Error;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "dup will cause invalid types on stack"

    invoke-direct {v9, v10}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8

    .line 581
    .end local v5    # "kind":I
    :cond_b
    const/16 v8, 0x5d

    goto :goto_2

    .line 586
    :cond_c
    move v8, v2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_e

    .line 588
    move v8, v1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    const/16 v8, 0x5b

    :goto_3
    move v5, v8

    .line 589
    .restart local v5    # "kind":I
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v8

    move-object v6, v8

    .line 590
    move-object v8, v6

    iget v8, v8, Lgnu/bytecode/Type;->size:I

    const/4 v9, 0x4

    if-gt v8, v9, :cond_4

    .line 592
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v8

    move-object v7, v8

    .line 593
    move-object v8, v7

    iget v8, v8, Lgnu/bytecode/Type;->size:I

    const/4 v9, 0x4

    if-le v8, v9, :cond_4

    .line 594
    new-instance v8, Ljava/lang/Error;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "dup will cause invalid types on stack"

    invoke-direct {v9, v10}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8

    .line 588
    .end local v5    # "kind":I
    :cond_d
    const/16 v8, 0x5e

    goto :goto_3

    .line 598
    :cond_e
    new-instance v8, Ljava/lang/Error;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "emitDup:  invalid offset"

    invoke-direct {v9, v10}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public emitDup(Lgnu/bytecode/Type;)V
    .locals 5

    .prologue
    .line 624
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lgnu/bytecode/Type;->size:I

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    const/4 v3, 0x2

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitDup(II)V

    .line 625
    return-void

    .line 624
    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public emitDupX()V
    .locals 6

    .prologue
    .line 529
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 531
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v3

    move-object v1, v3

    .line 532
    .local v1, "type":Lgnu/bytecode/Type;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v3

    move-object v2, v3

    .line 534
    .local v2, "skipedType":Lgnu/bytecode/Type;
    move-object v3, v2

    iget v3, v3, Lgnu/bytecode/Type;->size:I

    const/4 v4, 0x4

    if-gt v3, v4, :cond_1

    .line 535
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lgnu/bytecode/Type;->size:I

    const/4 v5, 0x4

    if-gt v4, v5, :cond_0

    const/16 v4, 0x5a

    :goto_0
    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 539
    :goto_1
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 540
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 541
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 542
    return-void

    .line 535
    :cond_0
    const/16 v4, 0x5d

    goto :goto_0

    .line 537
    :cond_1
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lgnu/bytecode/Type;->size:I

    const/4 v5, 0x4

    if-gt v4, v5, :cond_2

    const/16 v4, 0x5b

    :goto_2
    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_1

    :cond_2
    const/16 v4, 0x5e

    goto :goto_2
.end method

.method public final emitElse()V
    .locals 10

    .prologue
    .line 1856
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-object v4, v4, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    move-object v1, v4

    .line 1857
    .local v1, "else_label":Lgnu/bytecode/Label;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1859
    new-instance v4, Lgnu/bytecode/Label;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-direct {v5, v6}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object v2, v4

    .line 1860
    .local v2, "end_label":Lgnu/bytecode/Label;
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    move-object v5, v2

    iput-object v5, v4, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    .line 1861
    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/CodeAttr;->SP:I

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v5, v5, Lgnu/bytecode/IfState;->start_stack_size:I

    sub-int/2addr v4, v5

    move v3, v4

    .line 1862
    .local v3, "growth":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    move v5, v3

    iput v5, v4, Lgnu/bytecode/IfState;->stack_growth:I

    .line 1863
    move v4, v3

    if-lez v4, :cond_0

    .line 1865
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    move v5, v3

    new-array v5, v5, [Lgnu/bytecode/Type;

    iput-object v5, v4, Lgnu/bytecode/IfState;->then_stacked_types:[Lgnu/bytecode/Type;

    .line 1866
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v5, v5, Lgnu/bytecode/IfState;->start_stack_size:I

    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-object v6, v6, Lgnu/bytecode/IfState;->then_stacked_types:[Lgnu/bytecode/Type;

    const/4 v7, 0x0

    move v8, v3

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1871
    :goto_0
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 1872
    .line 1875
    .end local v2    # "end_label":Lgnu/bytecode/Label;
    .end local v3    # "growth":I
    :goto_1
    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/CodeAttr;->SP:I

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v5, v5, Lgnu/bytecode/IfState;->start_stack_size:I

    if-le v4, v5, :cond_2

    .line 1876
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v4

    goto :goto_1

    .line 1870
    .restart local v2    # "end_label":Lgnu/bytecode/Label;
    .restart local v3    # "growth":I
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    const/4 v5, 0x0

    new-array v5, v5, [Lgnu/bytecode/Type;

    iput-object v5, v4, Lgnu/bytecode/IfState;->then_stacked_types:[Lgnu/bytecode/Type;

    goto :goto_0

    .line 1874
    .end local v2    # "end_label":Lgnu/bytecode/Label;
    .end local v3    # "growth":I
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    const/4 v5, 0x0

    iput-object v5, v4, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    goto :goto_1

    .line 1877
    :cond_2
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v5, v5, Lgnu/bytecode/IfState;->start_stack_size:I

    iput v5, v4, Lgnu/bytecode/CodeAttr;->SP:I

    .line 1878
    move-object v4, v1

    if-eqz v4, :cond_3

    .line 1879
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v4, v5}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 1880
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lgnu/bytecode/IfState;->doing_else:Z

    .line 1881
    return-void
.end method

.method public final emitFi()V
    .locals 9

    .prologue
    .line 1886
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    const/4 v3, 0x0

    move v1, v3

    .line 1887
    .local v1, "make_unreachable":Z
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-boolean v3, v3, Lgnu/bytecode/IfState;->doing_else:Z

    if-nez v3, :cond_0

    .line 1889
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/CodeAttr;->SP:I

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v4, v4, Lgnu/bytecode/IfState;->start_stack_size:I

    if-eq v3, v4, :cond_2

    .line 1891
    new-instance v3, Ljava/lang/Error;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "at PC "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lgnu/bytecode/CodeAttr;->PC:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " then clause grows stack with no else clause"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1893
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-object v3, v3, Lgnu/bytecode/IfState;->then_stacked_types:[Lgnu/bytecode/Type;

    if-eqz v3, :cond_6

    .line 1895
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v3, v3, Lgnu/bytecode/IfState;->start_stack_size:I

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v4, v4, Lgnu/bytecode/IfState;->stack_growth:I

    add-int/2addr v3, v4

    move v2, v3

    .line 1897
    .local v2, "then_clause_stack_size":I
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1899
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v3, v3, Lgnu/bytecode/IfState;->stack_growth:I

    if-lez v3, :cond_1

    .line 1900
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-object v3, v3, Lgnu/bytecode/IfState;->then_stacked_types:[Lgnu/bytecode/Type;

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v6, v6, Lgnu/bytecode/IfState;->start_stack_size:I

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v7, v7, Lgnu/bytecode/IfState;->stack_growth:I

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1903
    :cond_1
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lgnu/bytecode/CodeAttr;->SP:I

    .line 1909
    .line 1913
    .end local v2    # "then_clause_stack_size":I
    :cond_2
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-object v3, v3, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    if-eqz v3, :cond_3

    .line 1914
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-object v3, v3, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 1915
    :cond_3
    move v3, v1

    if-eqz v3, :cond_4

    .line 1916
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 1918
    :cond_4
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-object v4, v4, Lgnu/bytecode/IfState;->previous:Lgnu/bytecode/IfState;

    iput-object v4, v3, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    .line 1919
    return-void

    .line 1905
    .restart local v2    # "then_clause_stack_size":I
    :cond_5
    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/CodeAttr;->SP:I

    move v4, v2

    if-eq v3, v4, :cond_2

    .line 1906
    new-instance v3, Ljava/lang/Error;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "at PC "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lgnu/bytecode/CodeAttr;->PC:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": SP at end of \'then\' was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " while SP at end of \'else\' was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lgnu/bytecode/CodeAttr;->SP:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1910
    .end local v2    # "then_clause_stack_size":I
    :cond_6
    move-object v3, v0

    iget-boolean v3, v3, Lgnu/bytecode/CodeAttr;->unreachable_here:Z

    if-eqz v3, :cond_2

    .line 1911
    const/4 v3, 0x1

    move v1, v3

    goto :goto_0
.end method

.method public emitFinallyEnd()V
    .locals 9

    .prologue
    .line 2351
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->useJsr()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2352
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v6, v6, Lgnu/bytecode/TryState;->finally_ret_addr:Lgnu/bytecode/Variable;

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitRet(Lgnu/bytecode/Variable;)V

    .line 2399
    :goto_0
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    move-result-object v5

    .line 2400
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    const/4 v6, 0x0

    iput-object v6, v5, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    .line 2401
    return-void

    .line 2353
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v5, v5, Lgnu/bytecode/TryState;->end_label:Lgnu/bytecode/Label;

    if-nez v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v5, v5, Lgnu/bytecode/TryState;->exitCases:Lgnu/bytecode/ExitableBlock;

    if-nez v5, :cond_1

    .line 2355
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    goto :goto_0

    .line 2359
    :cond_1
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v6, v6, Lgnu/bytecode/TryState;->exception:Lgnu/bytecode/Variable;

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2360
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v6, v6, Lgnu/bytecode/TryState;->exception:Lgnu/bytecode/Variable;

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2361
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitIfNotNull()V

    .line 2362
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v6, v6, Lgnu/bytecode/TryState;->exception:Lgnu/bytecode/Variable;

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2363
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    .line 2364
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 2366
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v5, v5, Lgnu/bytecode/TryState;->exitCases:Lgnu/bytecode/ExitableBlock;

    move-object v1, v5

    .line 2368
    .local v1, "exit":Lgnu/bytecode/ExitableBlock;
    move-object v5, v1

    if-eqz v5, :cond_4

    .line 2370
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->startSwitch()Lgnu/bytecode/SwitchState;

    move-result-object v5

    move-object v2, v5

    .line 2372
    .local v2, "sw":Lgnu/bytecode/SwitchState;
    :goto_1
    move-object v5, v1

    if-eqz v5, :cond_3

    .line 2374
    move-object v5, v1

    iget-object v5, v5, Lgnu/bytecode/ExitableBlock;->nextCase:Lgnu/bytecode/ExitableBlock;

    move-object v3, v5

    .line 2375
    .local v3, "next":Lgnu/bytecode/ExitableBlock;
    move-object v5, v1

    const/4 v6, 0x0

    iput-object v6, v5, Lgnu/bytecode/ExitableBlock;->nextCase:Lgnu/bytecode/ExitableBlock;

    .line 2376
    move-object v5, v1

    const/4 v6, 0x0

    iput-object v6, v5, Lgnu/bytecode/ExitableBlock;->currentTryState:Lgnu/bytecode/TryState;

    .line 2377
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v5, v5, Lgnu/bytecode/TryState;->previous:Lgnu/bytecode/TryState;

    move-object v6, v1

    iget-object v6, v6, Lgnu/bytecode/ExitableBlock;->initialTryState:Lgnu/bytecode/TryState;

    invoke-static {v5, v6}, Lgnu/bytecode/TryState;->outerHandler(Lgnu/bytecode/TryState;Lgnu/bytecode/TryState;)Lgnu/bytecode/TryState;

    move-result-object v5

    move-object v4, v5

    .line 2379
    .local v4, "nextTry":Lgnu/bytecode/TryState;
    move-object v5, v4

    move-object v6, v1

    iget-object v6, v6, Lgnu/bytecode/ExitableBlock;->initialTryState:Lgnu/bytecode/TryState;

    if-ne v5, v6, :cond_2

    .line 2381
    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Lgnu/bytecode/ExitableBlock;->switchCase:I

    move-object v7, v0

    move-object v8, v1

    iget-object v8, v8, Lgnu/bytecode/ExitableBlock;->endLabel:Lgnu/bytecode/Label;

    invoke-virtual {v5, v6, v7, v8}, Lgnu/bytecode/SwitchState;->addCaseGoto(ILgnu/bytecode/CodeAttr;Lgnu/bytecode/Label;)Z

    move-result v5

    .line 2388
    :goto_2
    move-object v5, v3

    move-object v1, v5

    .line 2389
    goto :goto_1

    .line 2385
    :cond_2
    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Lgnu/bytecode/ExitableBlock;->switchCase:I

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/SwitchState;->addCase(ILgnu/bytecode/CodeAttr;)Z

    move-result v5

    .line 2386
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Lgnu/bytecode/ExitableBlock;->exit(Lgnu/bytecode/TryState;)V

    goto :goto_2

    .line 2390
    .end local v3    # "next":Lgnu/bytecode/ExitableBlock;
    .end local v4    # "nextTry":Lgnu/bytecode/TryState;
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    const/4 v6, 0x0

    iput-object v6, v5, Lgnu/bytecode/TryState;->exitCases:Lgnu/bytecode/ExitableBlock;

    .line 2392
    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v5, v6}, Lgnu/bytecode/SwitchState;->addDefault(Lgnu/bytecode/CodeAttr;)V

    .line 2393
    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v5, v6}, Lgnu/bytecode/SwitchState;->finish(Lgnu/bytecode/CodeAttr;)V

    .line 2395
    .end local v2    # "sw":Lgnu/bytecode/SwitchState;
    :cond_4
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 2397
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    goto/16 :goto_0
.end method

.method public emitFinallyStart()V
    .locals 8

    .prologue
    .line 2301
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v3, v0

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lgnu/bytecode/CodeAttr;->emitTryEnd(Z)V

    .line 2302
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->try_type:Lgnu/bytecode/ClassType;

    if-eqz v3, :cond_0

    .line 2303
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->emitCatchEnd()V

    .line 2304
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->getLabel()Lgnu/bytecode/Label;

    move-result-object v4

    iput-object v4, v3, Lgnu/bytecode/TryState;->end_try:Lgnu/bytecode/Label;

    .line 2306
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v3

    .line 2307
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->useJsr()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2309
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lgnu/bytecode/CodeAttr;->SP:I

    .line 2310
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitCatchStart(Lgnu/bytecode/Variable;)V

    .line 2311
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v4, v4, Lgnu/bytecode/TryState;->exception:Lgnu/bytecode/Variable;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2312
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v4, v4, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitJsr(Lgnu/bytecode/Label;)V

    .line 2313
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v4, v4, Lgnu/bytecode/TryState;->exception:Lgnu/bytecode/Variable;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2314
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    .line 2332
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 2334
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->useJsr()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2336
    sget-object v3, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object v1, v3

    .line 2337
    .local v1, "ret_addr_type":Lgnu/bytecode/Type;
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v4

    iput-object v4, v3, Lgnu/bytecode/TryState;->finally_ret_addr:Lgnu/bytecode/Variable;

    .line 2338
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 2339
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v4, v4, Lgnu/bytecode/TryState;->finally_ret_addr:Lgnu/bytecode/Variable;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2347
    .end local v1    # "ret_addr_type":Lgnu/bytecode/Type;
    :cond_1
    return-void

    .line 2318
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 2319
    new-instance v3, Lgnu/bytecode/Label;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object v1, v3

    .line 2320
    .local v1, "endLabel":Lgnu/bytecode/Label;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->beginFragment(Lgnu/bytecode/Label;)I

    move-result v3

    move v2, v3

    .line 2321
    .local v2, "fragment_cookie":I
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v4, v4, Lgnu/bytecode/TryState;->start_try:Lgnu/bytecode/Label;

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v5, v5, Lgnu/bytecode/TryState;->end_try:Lgnu/bytecode/Label;

    sget-object v6, Lgnu/bytecode/Type;->javalangThrowableType:Lgnu/bytecode/ClassType;

    invoke-virtual {v3, v4, v5, v6}, Lgnu/bytecode/CodeAttr;->addHandler(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/bytecode/ClassType;)V

    .line 2322
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    if-eqz v3, :cond_3

    .line 2323
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v4, v4, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitStoreDefaultValue(Lgnu/bytecode/Variable;)V

    .line 2324
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->exitCases:Lgnu/bytecode/ExitableBlock;

    if-eqz v3, :cond_4

    .line 2326
    move-object v3, v0

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 2327
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 2329
    :cond_4
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v4, v4, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 2330
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->endFragment(I)V

    goto :goto_0
.end method

.method public final emitGetField(Lgnu/bytecode/Field;)V
    .locals 5

    .prologue
    .line 1432
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "field":Lgnu/bytecode/Field;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 1433
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/Field;->type:Lgnu/bytecode/Type;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1434
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0xb4

    invoke-direct {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitFieldop(Lgnu/bytecode/Field;I)V

    .line 1435
    return-void
.end method

.method public final emitGetStatic(Lgnu/bytecode/Field;)V
    .locals 5

    .prologue
    .line 1423
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "field":Lgnu/bytecode/Field;
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/Field;->type:Lgnu/bytecode/Type;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1424
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0xb2

    invoke-direct {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitFieldop(Lgnu/bytecode/Field;I)V

    .line 1425
    return-void
.end method

.method public final emitGoto(Lgnu/bytecode/Label;)V
    .locals 6

    .prologue
    .line 1573
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "label":Lgnu/bytecode/Label;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    .line 1574
    move-object v2, v0

    const/4 v3, 0x4

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 1575
    move-object v2, v0

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1576
    move-object v2, v0

    const/16 v3, 0xa7

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1577
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/bytecode/CodeAttr;->PC:I

    const/4 v4, 0x2

    add-int/lit8 v3, v3, 0x2

    iput v3, v2, Lgnu/bytecode/CodeAttr;->PC:I

    .line 1578
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 1579
    return-void
.end method

.method public final emitGotoIfCompare1(Lgnu/bytecode/Label;I)V
    .locals 6

    .prologue
    .line 1615
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "label":Lgnu/bytecode/Label;
    move v2, p2

    .local v2, "opcode":I
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v3

    .line 1616
    move-object v3, v0

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1617
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/CodeAttr;->emitTransfer(Lgnu/bytecode/Label;I)V

    .line 1618
    return-void
.end method

.method public final emitGotoIfCompare2(Lgnu/bytecode/Label;I)V
    .locals 12

    .prologue
    .line 1635
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "label":Lgnu/bytecode/Label;
    move v2, p2

    .local v2, "logop":I
    move v8, v2

    const/16 v9, 0x99

    if-lt v8, v9, :cond_0

    move v8, v2

    const/16 v9, 0x9e

    if-le v8, v9, :cond_1

    .line 1636
    :cond_0
    new-instance v8, Ljava/lang/Error;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "emitGotoIfCompare2: logop must be one of ifeq...ifle"

    invoke-direct {v9, v10}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1638
    :cond_1
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v8

    invoke-virtual {v8}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v8

    move-object v3, v8

    .line 1639
    .local v3, "type2":Lgnu/bytecode/Type;
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v8

    invoke-virtual {v8}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v8

    move-object v4, v8

    .line 1640
    .local v4, "type1":Lgnu/bytecode/Type;
    move-object v8, v0

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1641
    move-object v8, v4

    invoke-virtual {v8}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v5, v8

    .line 1642
    .local v5, "sig1":C
    move-object v8, v3

    invoke-virtual {v8}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v6, v8

    .line 1644
    .local v6, "sig2":C
    move v8, v2

    const/16 v9, 0x9b

    if-eq v8, v9, :cond_2

    move v8, v2

    const/16 v9, 0x9e

    if-ne v8, v9, :cond_3

    :cond_2
    const/4 v8, 0x1

    :goto_0
    move v7, v8

    .line 1646
    .local v7, "cmpg":Z
    move v8, v5

    const/16 v9, 0x49

    if-ne v8, v9, :cond_4

    move v8, v6

    const/16 v9, 0x49

    if-ne v8, v9, :cond_4

    .line 1647
    add-int/lit8 v2, v2, 0x6

    .line 1661
    :goto_1
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    invoke-virtual {v8, v9, v10}, Lgnu/bytecode/CodeAttr;->emitTransfer(Lgnu/bytecode/Label;I)V

    .line 1662
    return-void

    .line 1644
    .end local v7    # "cmpg":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 1648
    .restart local v7    # "cmpg":Z
    :cond_4
    move v8, v5

    const/16 v9, 0x4a

    if-ne v8, v9, :cond_5

    move v8, v6

    const/16 v9, 0x4a

    if-ne v8, v9, :cond_5

    .line 1649
    move-object v8, v0

    const/16 v9, 0x94

    invoke-virtual {v8, v9}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_1

    .line 1650
    :cond_5
    move v8, v5

    const/16 v9, 0x46

    if-ne v8, v9, :cond_7

    move v8, v6

    const/16 v9, 0x46

    if-ne v8, v9, :cond_7

    .line 1651
    move-object v8, v0

    move v9, v7

    if-eqz v9, :cond_6

    const/16 v9, 0x95

    :goto_2
    invoke-virtual {v8, v9}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_1

    :cond_6
    const/16 v9, 0x96

    goto :goto_2

    .line 1652
    :cond_7
    move v8, v5

    const/16 v9, 0x44

    if-ne v8, v9, :cond_9

    move v8, v6

    const/16 v9, 0x44

    if-ne v8, v9, :cond_9

    .line 1653
    move-object v8, v0

    move v9, v7

    if-eqz v9, :cond_8

    const/16 v9, 0x97

    :goto_3
    invoke-virtual {v8, v9}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_1

    :cond_8
    const/16 v9, 0x98

    goto :goto_3

    .line 1654
    :cond_9
    move v8, v5

    const/16 v9, 0x4c

    if-eq v8, v9, :cond_a

    move v8, v5

    const/16 v9, 0x5b

    if-ne v8, v9, :cond_c

    :cond_a
    move v8, v6

    const/16 v9, 0x4c

    if-eq v8, v9, :cond_b

    move v8, v6

    const/16 v9, 0x5b

    if-ne v8, v9, :cond_c

    :cond_b
    move v8, v2

    const/16 v9, 0x9a

    if-gt v8, v9, :cond_c

    .line 1657
    add-int/lit8 v2, v2, 0xc

    goto :goto_1

    .line 1659
    :cond_c
    new-instance v8, Ljava/lang/Error;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "invalid types to emitGotoIfCompare2"

    invoke-direct {v9, v10}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public final emitGotoIfEq(Lgnu/bytecode/Label;)V
    .locals 5

    .prologue
    .line 1674
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "label":Lgnu/bytecode/Label;
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0x99

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    .line 1675
    return-void
.end method

.method public final emitGotoIfEq(Lgnu/bytecode/Label;Z)V
    .locals 6

    .prologue
    .line 1668
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "label":Lgnu/bytecode/Label;
    move v2, p2

    .local v2, "invert":Z
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    if-eqz v5, :cond_0

    const/16 v5, 0x9a

    :goto_0
    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    .line 1669
    return-void

    .line 1668
    :cond_0
    const/16 v5, 0x99

    goto :goto_0
.end method

.method public final emitGotoIfGe(Lgnu/bytecode/Label;)V
    .locals 5

    .prologue
    .line 1686
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "label":Lgnu/bytecode/Label;
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0x9c

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfGt(Lgnu/bytecode/Label;)V
    .locals 5

    .prologue
    .line 1688
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "label":Lgnu/bytecode/Label;
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0x9d

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfIntEqZero(Lgnu/bytecode/Label;)V
    .locals 5

    .prologue
    .line 1621
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "label":Lgnu/bytecode/Label;
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0x99

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfIntGeZero(Lgnu/bytecode/Label;)V
    .locals 5

    .prologue
    .line 1627
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "label":Lgnu/bytecode/Label;
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0x9c

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfIntGtZero(Lgnu/bytecode/Label;)V
    .locals 5

    .prologue
    .line 1629
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "label":Lgnu/bytecode/Label;
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0x9d

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfIntLeZero(Lgnu/bytecode/Label;)V
    .locals 5

    .prologue
    .line 1631
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "label":Lgnu/bytecode/Label;
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0x9e

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfIntLtZero(Lgnu/bytecode/Label;)V
    .locals 5

    .prologue
    .line 1625
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "label":Lgnu/bytecode/Label;
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0x9b

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfIntNeZero(Lgnu/bytecode/Label;)V
    .locals 5

    .prologue
    .line 1623
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "label":Lgnu/bytecode/Label;
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0x9a

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfLe(Lgnu/bytecode/Label;)V
    .locals 5

    .prologue
    .line 1690
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "label":Lgnu/bytecode/Label;
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0x9e

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfLt(Lgnu/bytecode/Label;)V
    .locals 5

    .prologue
    .line 1684
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "label":Lgnu/bytecode/Label;
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0x9b

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfNE(Lgnu/bytecode/Label;)V
    .locals 5

    .prologue
    .line 1680
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "label":Lgnu/bytecode/Label;
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0x9a

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    .line 1681
    return-void
.end method

.method public final emitIOr()V
    .locals 3

    .prologue
    .line 1285
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public final emitIfCompare1(I)V
    .locals 7

    .prologue
    .line 1698
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "opcode":I
    new-instance v3, Lgnu/bytecode/IfState;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object v2, v3

    .line 1699
    .local v2, "new_if":Lgnu/bytecode/IfState;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v3

    sget-object v4, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-eq v3, v4, :cond_0

    .line 1700
    new-instance v3, Ljava/lang/Error;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "non-int type to emitIfCompare1"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1701
    :cond_0
    move-object v3, v0

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1702
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    move v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/CodeAttr;->emitTransfer(Lgnu/bytecode/Label;I)V

    .line 1703
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/CodeAttr;->SP:I

    iput v4, v3, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1704
    return-void
.end method

.method public final emitIfEq()V
    .locals 6

    .prologue
    .line 1782
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    new-instance v2, Lgnu/bytecode/IfState;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object v1, v2

    .line 1783
    .local v1, "new_if":Lgnu/bytecode/IfState;
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitGotoIfNE(Lgnu/bytecode/Label;)V

    .line 1784
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/CodeAttr;->SP:I

    iput v3, v2, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1785
    return-void
.end method

.method public final emitIfGe()V
    .locals 6

    .prologue
    .line 1800
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    new-instance v2, Lgnu/bytecode/IfState;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object v1, v2

    .line 1801
    .local v1, "new_if":Lgnu/bytecode/IfState;
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitGotoIfLt(Lgnu/bytecode/Label;)V

    .line 1802
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/CodeAttr;->SP:I

    iput v3, v2, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1803
    return-void
.end method

.method public final emitIfGt()V
    .locals 6

    .prologue
    .line 1809
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    new-instance v2, Lgnu/bytecode/IfState;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object v1, v2

    .line 1810
    .local v1, "new_if":Lgnu/bytecode/IfState;
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitGotoIfLe(Lgnu/bytecode/Label;)V

    .line 1811
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/CodeAttr;->SP:I

    iput v3, v2, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1812
    return-void
.end method

.method public final emitIfIntCompare(I)V
    .locals 7

    .prologue
    .line 1755
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "opcode":I
    new-instance v3, Lgnu/bytecode/IfState;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object v2, v3

    .line 1756
    .local v2, "new_if":Lgnu/bytecode/IfState;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v3

    .line 1757
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v3

    .line 1758
    move-object v3, v0

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1759
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    move v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/CodeAttr;->emitTransfer(Lgnu/bytecode/Label;I)V

    .line 1760
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/CodeAttr;->SP:I

    iput v4, v3, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1761
    return-void
.end method

.method public final emitIfIntEqZero()V
    .locals 3

    .prologue
    .line 1717
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    const/16 v2, 0x9a

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitIfCompare1(I)V

    .line 1718
    return-void
.end method

.method public final emitIfIntLEqZero()V
    .locals 3

    .prologue
    .line 1723
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    const/16 v2, 0x9d

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitIfCompare1(I)V

    .line 1724
    return-void
.end method

.method public final emitIfIntLt()V
    .locals 3

    .prologue
    .line 1766
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    const/16 v2, 0xa2

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitIfIntCompare(I)V

    .line 1767
    return-void
.end method

.method public final emitIfIntNotZero()V
    .locals 3

    .prologue
    .line 1710
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    const/16 v2, 0x99

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitIfCompare1(I)V

    .line 1711
    return-void
.end method

.method public final emitIfLe()V
    .locals 6

    .prologue
    .line 1818
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    new-instance v2, Lgnu/bytecode/IfState;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object v1, v2

    .line 1819
    .local v1, "new_if":Lgnu/bytecode/IfState;
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitGotoIfGt(Lgnu/bytecode/Label;)V

    .line 1820
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/CodeAttr;->SP:I

    iput v3, v2, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1821
    return-void
.end method

.method public final emitIfLt()V
    .locals 6

    .prologue
    .line 1791
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    new-instance v2, Lgnu/bytecode/IfState;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object v1, v2

    .line 1792
    .local v1, "new_if":Lgnu/bytecode/IfState;
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitGotoIfGe(Lgnu/bytecode/Label;)V

    .line 1793
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/CodeAttr;->SP:I

    iput v3, v2, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1794
    return-void
.end method

.method public final emitIfNEq()V
    .locals 6

    .prologue
    .line 1773
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    new-instance v2, Lgnu/bytecode/IfState;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object v1, v2

    .line 1774
    .local v1, "new_if":Lgnu/bytecode/IfState;
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitGotoIfEq(Lgnu/bytecode/Label;)V

    .line 1775
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/CodeAttr;->SP:I

    iput v3, v2, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1776
    return-void
.end method

.method public final emitIfNotNull()V
    .locals 3

    .prologue
    .line 1742
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    const/16 v2, 0xc6

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitIfRefCompare1(I)V

    .line 1743
    return-void
.end method

.method public final emitIfNull()V
    .locals 3

    .prologue
    .line 1748
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    const/16 v2, 0xc7

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitIfRefCompare1(I)V

    .line 1749
    return-void
.end method

.method public final emitIfRefCompare1(I)V
    .locals 7

    .prologue
    .line 1731
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "opcode":I
    new-instance v3, Lgnu/bytecode/IfState;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object v2, v3

    .line 1732
    .local v2, "new_if":Lgnu/bytecode/IfState;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v3

    instance-of v3, v3, Lgnu/bytecode/ObjectType;

    if-nez v3, :cond_0

    .line 1733
    new-instance v3, Ljava/lang/Error;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "non-ref type to emitIfRefCompare1"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1734
    :cond_0
    move-object v3, v0

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1735
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    move v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/CodeAttr;->emitTransfer(Lgnu/bytecode/Label;I)V

    .line 1736
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/CodeAttr;->SP:I

    iput v4, v3, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1737
    return-void
.end method

.method public final emitIfThen()V
    .locals 6

    .prologue
    .line 1850
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    new-instance v1, Lgnu/bytecode/IfState;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Label;)V

    .line 1851
    return-void
.end method

.method public emitInc(Lgnu/bytecode/Variable;S)V
    .locals 10

    .prologue
    .line 1383
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "var":Lgnu/bytecode/Variable;
    move v2, p2

    .local v2, "inc":S
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/Variable;->dead()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1384
    new-instance v5, Ljava/lang/Error;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "attempting to increment dead variable"

    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1385
    :cond_0
    move-object v5, v1

    iget v5, v5, Lgnu/bytecode/Variable;->offset:I

    move v3, v5

    .line 1386
    .local v3, "offset":I
    move v5, v3

    if-ltz v5, :cond_1

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1387
    :cond_1
    new-instance v5, Ljava/lang/Error;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "attempting to increment unassigned variable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " simple:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", offset: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1389
    :cond_2
    move-object v5, v0

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1390
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v5

    sget-object v6, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-eq v5, v6, :cond_3

    .line 1391
    new-instance v5, Ljava/lang/Error;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "attempting to increment non-int variable"

    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1393
    :cond_3
    move v5, v3

    const/16 v6, 0xff

    if-gt v5, v6, :cond_4

    move v5, v2

    const/16 v6, 0xff

    if-gt v5, v6, :cond_4

    move v5, v2

    const/16 v6, -0x100

    if-ge v5, v6, :cond_5

    :cond_4
    const/4 v5, 0x1

    :goto_0
    move v4, v5

    .line 1395
    .local v4, "wide":Z
    move v5, v4

    if-eqz v5, :cond_6

    .line 1397
    move-object v5, v0

    const/16 v6, 0xc4

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1398
    move-object v5, v0

    const/16 v6, 0x84

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1399
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->put2(I)V

    .line 1400
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->put2(I)V

    .line 1408
    :goto_1
    return-void

    .line 1393
    .end local v4    # "wide":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 1404
    .restart local v4    # "wide":Z
    :cond_6
    move-object v5, v0

    const/16 v6, 0x84

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1405
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1406
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_1
.end method

.method public emitInstanceof(Lgnu/bytecode/Type;)V
    .locals 5

    .prologue
    .line 2036
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0xc1

    invoke-direct {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;I)V

    .line 2037
    move-object v2, v0

    sget-object v3, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 2038
    return-void
.end method

.method public emitInvoke(Lgnu/bytecode/Method;)V
    .locals 6

    .prologue
    .line 1521
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "method":Lgnu/bytecode/Method;
    move-object v3, v1

    iget v3, v3, Lgnu/bytecode/Method;->access_flags:I

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    .line 1522
    const/16 v3, 0xb8

    move v2, v3

    .line 1529
    .local v2, "opcode":I
    :goto_0
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    .line 1530
    return-void

    .line 1523
    .end local v2    # "opcode":I
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1524
    const/16 v3, 0xb9

    move v2, v3

    .restart local v2    # "opcode":I
    goto :goto_0

    .line 1525
    .end local v2    # "opcode":I
    :cond_1
    const-string/jumbo v3, "<init>"

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1526
    const/16 v3, 0xb7

    move v2, v3

    .restart local v2    # "opcode":I
    goto :goto_0

    .line 1528
    .end local v2    # "opcode":I
    :cond_2
    const/16 v3, 0xb6

    move v2, v3

    .restart local v2    # "opcode":I
    goto :goto_0
.end method

.method public emitInvokeInterface(Lgnu/bytecode/Method;)V
    .locals 5

    .prologue
    .line 1557
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "method":Lgnu/bytecode/Method;
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0xb9

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    .line 1558
    return-void
.end method

.method public emitInvokeMethod(Lgnu/bytecode/Method;I)V
    .locals 16

    .prologue
    .line 1470
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object/from16 v1, p1

    .local v1, "method":Lgnu/bytecode/Method;
    move/from16 v2, p2

    .local v2, "opcode":I
    move-object v11, v0

    move v12, v2

    const/16 v13, 0xb9

    if-ne v12, v13, :cond_0

    const/4 v12, 0x5

    :goto_0
    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1471
    move-object v11, v1

    iget-object v11, v11, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    array-length v11, v11

    move v3, v11

    .line 1472
    .local v3, "arg_count":I
    move v11, v2

    const/16 v12, 0xb8

    if-ne v11, v12, :cond_1

    const/4 v11, 0x1

    :goto_1
    move v4, v11

    .line 1473
    .local v4, "is_invokestatic":Z
    move v11, v2

    const/16 v12, 0xb7

    if-ne v11, v12, :cond_2

    const-string/jumbo v11, "<init>"

    move-object v12, v1

    invoke-virtual {v12}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    :goto_2
    move v5, v11

    .line 1475
    .local v5, "is_init":Z
    move v11, v4

    move-object v12, v1

    iget v12, v12, Lgnu/bytecode/Method;->access_flags:I

    const/16 v13, 0x8

    and-int/lit8 v12, v12, 0x8

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    :goto_3
    if-eq v11, v12, :cond_4

    .line 1476
    new-instance v11, Ljava/lang/Error;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "emitInvokeXxx static flag mis-match method.flags="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v1

    iget v14, v14, Lgnu/bytecode/Method;->access_flags:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1470
    .end local v3    # "arg_count":I
    .end local v4    # "is_invokestatic":Z
    .end local v5    # "is_init":Z
    :cond_0
    const/4 v12, 0x3

    goto :goto_0

    .line 1472
    .restart local v3    # "arg_count":I
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 1473
    .restart local v4    # "is_invokestatic":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .line 1475
    .restart local v5    # "is_init":Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_3

    .line 1478
    :cond_4
    move v11, v4

    if-nez v11, :cond_5

    move v11, v5

    if-nez v11, :cond_5

    .line 1479
    add-int/lit8 v3, v3, 0x1

    .line 1480
    :cond_5
    move-object v11, v0

    move v12, v2

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1481
    move-object v11, v0

    move-object v12, v0

    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v12

    move-object v13, v1

    invoke-virtual {v12, v13}, Lgnu/bytecode/ConstantPool;->addMethodRef(Lgnu/bytecode/Method;)Lgnu/bytecode/CpoolRef;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->putIndex2(Lgnu/bytecode/CpoolEntry;)V

    .line 1482
    move v11, v2

    const/16 v12, 0xb9

    if-ne v11, v12, :cond_6

    .line 1484
    move-object v11, v0

    move-object v12, v0

    move-object v13, v1

    iget-object v13, v13, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    invoke-direct {v12, v13}, Lgnu/bytecode/CodeAttr;->words([Lgnu/bytecode/Type;)I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1485
    move-object v11, v0

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1487
    :cond_6
    :goto_4
    add-int/lit8 v3, v3, -0x1

    move v11, v3

    if-ltz v11, :cond_8

    .line 1489
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v11

    move-object v6, v11

    .line 1490
    .local v6, "t":Lgnu/bytecode/Type;
    move-object v11, v6

    instance-of v11, v11, Lgnu/bytecode/UninitializedType;

    if-eqz v11, :cond_7

    .line 1491
    new-instance v11, Ljava/lang/Error;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "passing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v6

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " as parameter"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1492
    :cond_7
    goto :goto_4

    .line 1493
    .end local v6    # "t":Lgnu/bytecode/Type;
    :cond_8
    move v11, v5

    if-eqz v11, :cond_11

    .line 1495
    move-object v11, v0

    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v11

    move-object v6, v11

    .line 1497
    .restart local v6    # "t":Lgnu/bytecode/Type;
    move-object v11, v6

    instance-of v11, v11, Lgnu/bytecode/UninitializedType;

    if-nez v11, :cond_9

    .line 1498
    new-instance v11, Ljava/lang/Error;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const-string/jumbo v13, "calling <init> on already-initialized object"

    invoke-direct {v12, v13}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1499
    :cond_9
    move-object v11, v6

    check-cast v11, Lgnu/bytecode/UninitializedType;

    iget-object v11, v11, Lgnu/bytecode/UninitializedType;->ctype:Lgnu/bytecode/ClassType;

    move-object v7, v11

    .line 1500
    .local v7, "ctype":Lgnu/bytecode/ClassType;
    const/4 v11, 0x0

    move v8, v11

    .local v8, "i":I
    :goto_5
    move v11, v8

    move-object v12, v0

    iget v12, v12, Lgnu/bytecode/CodeAttr;->SP:I

    if-ge v11, v12, :cond_b

    .line 1501
    move-object v11, v0

    iget-object v11, v11, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    move v12, v8

    aget-object v11, v11, v12

    move-object v12, v6

    if-ne v11, v12, :cond_a

    .line 1502
    move-object v11, v0

    iget-object v11, v11, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    move v12, v8

    move-object v13, v7

    aput-object v13, v11, v12

    .line 1500
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1503
    :cond_b
    move-object v11, v0

    iget-object v11, v11, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v11, v11, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    move-object v8, v11

    .line 1504
    .local v8, "used":[Lgnu/bytecode/Variable;
    move-object v11, v8

    if-nez v11, :cond_d

    const/4 v11, 0x0

    :goto_6
    move v9, v11

    .local v9, "i":I
    :goto_7
    add-int/lit8 v9, v9, -0x1

    move v11, v9

    if-ltz v11, :cond_e

    .line 1506
    move-object v11, v8

    move v12, v9

    aget-object v11, v11, v12

    move-object v10, v11

    .line 1507
    .local v10, "var":Lgnu/bytecode/Variable;
    move-object v11, v10

    if-eqz v11, :cond_c

    move-object v11, v10

    iget-object v11, v11, Lgnu/bytecode/Variable;->type:Lgnu/bytecode/Type;

    move-object v12, v6

    if-ne v11, v12, :cond_c

    .line 1508
    move-object v11, v10

    move-object v12, v7

    iput-object v12, v11, Lgnu/bytecode/Variable;->type:Lgnu/bytecode/Type;

    .line 1509
    :cond_c
    goto :goto_7

    .line 1504
    .end local v9    # "i":I
    .end local v10    # "var":Lgnu/bytecode/Variable;
    :cond_d
    move-object v11, v8

    array-length v11, v11

    goto :goto_6

    .line 1510
    .restart local v9    # "i":I
    :cond_e
    move-object v11, v0

    iget-object v11, v11, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    if-nez v11, :cond_10

    const/4 v11, 0x0

    :goto_8
    move v9, v11

    :cond_f
    :goto_9
    add-int/lit8 v9, v9, -0x1

    move v11, v9

    if-ltz v11, :cond_11

    .line 1511
    move-object v11, v0

    iget-object v11, v11, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    move v12, v9

    aget-object v11, v11, v12

    move-object v12, v6

    if-ne v11, v12, :cond_f

    .line 1512
    move-object v11, v0

    iget-object v11, v11, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    move v12, v9

    move-object v13, v7

    aput-object v13, v11, v12

    goto :goto_9

    .line 1510
    :cond_10
    move-object v11, v0

    iget-object v11, v11, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v11, v11

    goto :goto_8

    .line 1514
    .end local v6    # "t":Lgnu/bytecode/Type;
    .end local v7    # "ctype":Lgnu/bytecode/ClassType;
    .end local v8    # "used":[Lgnu/bytecode/Variable;
    .end local v9    # "i":I
    :cond_11
    move-object v11, v1

    iget-object v11, v11, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;

    iget v11, v11, Lgnu/bytecode/Type;->size:I

    if-eqz v11, :cond_12

    .line 1515
    move-object v11, v0

    move-object v12, v1

    iget-object v12, v12, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;

    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1516
    :cond_12
    return-void
.end method

.method public emitInvokeSpecial(Lgnu/bytecode/Method;)V
    .locals 5

    .prologue
    .line 1543
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "method":Lgnu/bytecode/Method;
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0xb7

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    .line 1544
    return-void
.end method

.method public emitInvokeStatic(Lgnu/bytecode/Method;)V
    .locals 5

    .prologue
    .line 1552
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "method":Lgnu/bytecode/Method;
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0xb8

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    .line 1553
    return-void
.end method

.method public emitInvokeVirtual(Lgnu/bytecode/Method;)V
    .locals 5

    .prologue
    .line 1538
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "method":Lgnu/bytecode/Method;
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0xb6

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    .line 1539
    return-void
.end method

.method public final emitJsr(Lgnu/bytecode/Label;)V
    .locals 6

    .prologue
    .line 1583
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "label":Lgnu/bytecode/Label;
    move-object v2, v0

    const/4 v3, 0x5

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 1584
    move-object v2, v0

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1585
    move-object v2, v0

    const/16 v3, 0xa8

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1586
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/bytecode/CodeAttr;->PC:I

    const/4 v4, 0x2

    add-int/lit8 v3, v3, 0x2

    iput v3, v2, Lgnu/bytecode/CodeAttr;->PC:I

    .line 1587
    return-void
.end method

.method public final emitLoad(Lgnu/bytecode/Variable;)V
    .locals 10

    .prologue
    .line 1347
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "var":Lgnu/bytecode/Variable;
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/Variable;->dead()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1348
    new-instance v5, Ljava/lang/Error;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "attempting to push dead variable"

    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1349
    :cond_0
    move-object v5, v1

    iget v5, v5, Lgnu/bytecode/Variable;->offset:I

    move v2, v5

    .line 1350
    .local v2, "offset":I
    move v5, v2

    if-ltz v5, :cond_1

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1351
    :cond_1
    new-instance v5, Ljava/lang/Error;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "attempting to load from unassigned variable "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " simple:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", offset: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1353
    :cond_2
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v5

    move-object v3, v5

    .line 1354
    .local v3, "type":Lgnu/bytecode/Type;
    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1355
    move-object v5, v0

    move-object v6, v3

    invoke-direct {v5, v6}, Lgnu/bytecode/CodeAttr;->adjustTypedOp(Lgnu/bytecode/Type;)I

    move-result v5

    move v4, v5

    .line 1356
    .local v4, "kind":I
    move v5, v2

    const/4 v6, 0x3

    if-gt v5, v6, :cond_3

    .line 1357
    move-object v5, v0

    const/16 v6, 0x1a

    const/4 v7, 0x4

    move v8, v4

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    move v7, v2

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1360
    :goto_0
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1361
    return-void

    .line 1359
    :cond_3
    move-object v5, v0

    const/16 v6, 0x15

    move v7, v4

    add-int/2addr v6, v7

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/CodeAttr;->emitMaybeWide(II)V

    goto :goto_0
.end method

.method emitMaybeWide(II)V
    .locals 5

    .prologue
    .line 1328
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "opcode":I
    move v2, p2

    .local v2, "index":I
    move v3, v2

    const/16 v4, 0x100

    if-lt v3, v4, :cond_0

    .line 1330
    move-object v3, v0

    const/16 v4, 0xc4

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1331
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1332
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->put2(I)V

    .line 1339
    :goto_0
    return-void

    .line 1336
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1337
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_0
.end method

.method public final emitMonitorEnter()V
    .locals 3

    .prologue
    .line 2050
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 2051
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 2052
    move-object v1, v0

    const/16 v2, 0xc2

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 2053
    return-void
.end method

.method public final emitMonitorExit()V
    .locals 3

    .prologue
    .line 2057
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 2058
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 2059
    move-object v1, v0

    const/16 v2, 0xc3

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 2060
    return-void
.end method

.method public final emitMul()V
    .locals 3

    .prologue
    .line 1281
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    const/16 v2, 0x68

    invoke-direct {v1, v2}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public emitNew(Lgnu/bytecode/ClassType;)V
    .locals 9

    .prologue
    .line 1175
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/ClassType;
    move-object v3, v0

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1176
    new-instance v3, Lgnu/bytecode/Label;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object v2, v3

    .line 1177
    .local v2, "label":Lgnu/bytecode/Label;
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v3, v4}, Lgnu/bytecode/Label;->defineRaw(Lgnu/bytecode/CodeAttr;)V

    .line 1178
    move-object v3, v0

    const/16 v4, 0xbb

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1179
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->putIndex2(Lgnu/bytecode/CpoolEntry;)V

    .line 1180
    move-object v3, v0

    new-instance v4, Lgnu/bytecode/UninitializedType;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lgnu/bytecode/UninitializedType;-><init>(Lgnu/bytecode/ClassType;Lgnu/bytecode/Label;)V

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1181
    return-void
.end method

.method emitNewArray(I)V
    .locals 4

    .prologue
    .line 1063
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "type_code":I
    move-object v2, v0

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1064
    move-object v2, v0

    const/16 v3, 0xbc

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1065
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1066
    return-void
.end method

.method public emitNewArray(Lgnu/bytecode/Type;)V
    .locals 5

    .prologue
    .line 1235
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "element_type":Lgnu/bytecode/Type;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;I)V

    .line 1236
    return-void
.end method

.method public emitNewArray(Lgnu/bytecode/Type;I)V
    .locals 10

    .prologue
    .line 1189
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "element_type":Lgnu/bytecode/Type;
    move v2, p2

    .local v2, "dims":I
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v4

    sget-object v5, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-eq v4, v5, :cond_0

    .line 1190
    new-instance v4, Ljava/lang/Error;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "non-int dim. spec. in emitNewArray"

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1192
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Lgnu/bytecode/PrimType;

    if-eqz v4, :cond_2

    .line 1195
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 1205
    new-instance v4, Ljava/lang/Error;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "bad PrimType in emitNewArray"

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1197
    :sswitch_0
    const/16 v4, 0x8

    move v3, v4

    .line 1207
    .local v3, "code":I
    :goto_0
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitNewArray(I)V

    .line 1208
    .line 1230
    .end local v3    # "code":I
    :cond_1
    :goto_1
    move-object v4, v0

    new-instance v5, Lgnu/bytecode/ArrayType;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    invoke-direct {v6, v7}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;)V

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1231
    return-void

    .line 1198
    :sswitch_1
    const/16 v4, 0x9

    move v3, v4

    .restart local v3    # "code":I
    goto :goto_0

    .line 1199
    .end local v3    # "code":I
    :sswitch_2
    const/16 v4, 0xa

    move v3, v4

    .restart local v3    # "code":I
    goto :goto_0

    .line 1200
    .end local v3    # "code":I
    :sswitch_3
    const/16 v4, 0xb

    move v3, v4

    .restart local v3    # "code":I
    goto :goto_0

    .line 1201
    .end local v3    # "code":I
    :sswitch_4
    const/4 v4, 0x6

    move v3, v4

    .restart local v3    # "code":I
    goto :goto_0

    .line 1202
    .end local v3    # "code":I
    :sswitch_5
    const/4 v4, 0x7

    move v3, v4

    .restart local v3    # "code":I
    goto :goto_0

    .line 1203
    .end local v3    # "code":I
    :sswitch_6
    const/4 v4, 0x4

    move v3, v4

    .restart local v3    # "code":I
    goto :goto_0

    .line 1204
    .end local v3    # "code":I
    :sswitch_7
    const/4 v4, 0x5

    move v3, v4

    .restart local v3    # "code":I
    goto :goto_0

    .line 1209
    .end local v3    # "code":I
    :cond_2
    move-object v4, v1

    instance-of v4, v4, Lgnu/bytecode/ObjectType;

    if-eqz v4, :cond_3

    .line 1211
    move-object v4, v0

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1212
    move-object v4, v0

    const/16 v5, 0xbd

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1213
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v5

    move-object v6, v1

    check-cast v6, Lgnu/bytecode/ObjectType;

    invoke-virtual {v5, v6}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->putIndex2(Lgnu/bytecode/CpoolEntry;)V

    goto :goto_1

    .line 1215
    :cond_3
    move-object v4, v1

    instance-of v4, v4, Lgnu/bytecode/ArrayType;

    if-eqz v4, :cond_7

    .line 1217
    move-object v4, v0

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1218
    move-object v4, v0

    const/16 v5, 0xc5

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1219
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v5

    new-instance v6, Lgnu/bytecode/ArrayType;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;)V

    invoke-virtual {v5, v6}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->putIndex2(Lgnu/bytecode/CpoolEntry;)V

    .line 1220
    move v4, v2

    const/4 v5, 0x1

    if-lt v4, v5, :cond_4

    move v4, v2

    const/16 v5, 0xff

    if-le v4, v5, :cond_5

    .line 1221
    :cond_4
    new-instance v4, Ljava/lang/Error;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "dims out of range in emitNewArray"

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1222
    :cond_5
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1223
    :cond_6
    add-int/lit8 v2, v2, -0x1

    move v4, v2

    if-lez v4, :cond_1

    .line 1224
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v4

    sget-object v5, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-eq v4, v5, :cond_6

    .line 1225
    new-instance v4, Ljava/lang/Error;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "non-int dim. spec. in emitNewArray"

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1228
    :cond_7
    new-instance v4, Ljava/lang/Error;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "unimplemented type in emitNewArray"

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1195
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x43 -> :sswitch_7
        0x44 -> :sswitch_5
        0x46 -> :sswitch_4
        0x49 -> :sswitch_2
        0x4a -> :sswitch_3
        0x53 -> :sswitch_1
        0x5a -> :sswitch_6
    .end sparse-switch
.end method

.method public final emitNot(Lgnu/bytecode/Type;)V
    .locals 5

    .prologue
    .line 1311
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move-object v2, v0

    const/4 v3, 0x1

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitPushConstant(ILgnu/bytecode/Type;)V

    .line 1312
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitAdd()V

    .line 1313
    move-object v2, v0

    const/4 v3, 0x1

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitPushConstant(ILgnu/bytecode/Type;)V

    .line 1314
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitAnd()V

    .line 1315
    return-void
.end method

.method public emitPop(I)V
    .locals 6

    .prologue
    .line 460
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "nvalues":I
    :goto_0
    move v4, v1

    if-lez v4, :cond_3

    .line 462
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 463
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v4

    move-object v2, v4

    .line 464
    .local v2, "type":Lgnu/bytecode/Type;
    move-object v4, v2

    iget v4, v4, Lgnu/bytecode/Type;->size:I

    const/4 v5, 0x4

    if-le v4, v5, :cond_0

    .line 465
    move-object v4, v0

    const/16 v5, 0x58

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 460
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 466
    :cond_0
    move v4, v1

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 468
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v4

    move-object v3, v4

    .line 469
    .local v3, "type2":Lgnu/bytecode/Type;
    move-object v4, v3

    iget v4, v4, Lgnu/bytecode/Type;->size:I

    const/4 v5, 0x4

    if-le v4, v5, :cond_1

    .line 471
    move-object v4, v0

    const/16 v5, 0x57

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 472
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 474
    :cond_1
    move-object v4, v0

    const/16 v5, 0x58

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 475
    add-int/lit8 v1, v1, -0x1

    .line 476
    goto :goto_1

    .line 478
    .end local v3    # "type2":Lgnu/bytecode/Type;
    :cond_2
    move-object v4, v0

    const/16 v5, 0x57

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_1

    .line 480
    .end local v2    # "type":Lgnu/bytecode/Type;
    :cond_3
    return-void
.end method

.method public emitPrimop(IILgnu/bytecode/Type;)V
    .locals 6

    .prologue
    .line 1319
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "opcode":I
    move v2, p2

    .local v2, "arg_count":I
    move-object v3, p3

    .local v3, "retType":Lgnu/bytecode/Type;
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1320
    :goto_0
    add-int/lit8 v2, v2, -0x1

    move v4, v2

    if-ltz v4, :cond_0

    .line 1321
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v4

    goto :goto_0

    .line 1322
    :cond_0
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1323
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1324
    return-void
.end method

.method public final emitPushClass(Lgnu/bytecode/ObjectType;)V
    .locals 5

    .prologue
    .line 944
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "ctype":Lgnu/bytecode/ObjectType;
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitPushConstant(Lgnu/bytecode/CpoolEntry;)V

    .line 945
    move-object v2, v0

    sget-object v3, Lgnu/bytecode/Type;->javalangClassType:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 946
    return-void
.end method

.method public final emitPushConstant(ILgnu/bytecode/Type;)V
    .locals 7

    .prologue
    .line 710
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "val":I
    move-object v2, p2

    .local v2, "type":Lgnu/bytecode/Type;
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 721
    new-instance v3, Ljava/lang/Error;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "bad type to emitPushConstant"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 713
    :sswitch_0
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 723
    :goto_0
    return-void

    .line 715
    :sswitch_1
    move-object v3, v0

    move v4, v1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/CodeAttr;->emitPushLong(J)V

    goto :goto_0

    .line 717
    :sswitch_2
    move-object v3, v0

    move v4, v1

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitPushFloat(F)V

    goto :goto_0

    .line 719
    :sswitch_3
    move-object v3, v0

    move v4, v1

    int-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/CodeAttr;->emitPushDouble(D)V

    goto :goto_0

    .line 710
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

.method public final emitPushConstant(Lgnu/bytecode/CpoolEntry;)V
    .locals 5

    .prologue
    .line 729
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "cnst":Lgnu/bytecode/CpoolEntry;
    move-object v3, v0

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 730
    move-object v3, v1

    iget v3, v3, Lgnu/bytecode/CpoolEntry;->index:I

    move v2, v3

    .line 731
    .local v2, "index":I
    move-object v3, v1

    instance-of v3, v3, Lgnu/bytecode/CpoolValue2;

    if-eqz v3, :cond_0

    .line 733
    move-object v3, v0

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 734
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->put2(I)V

    .line 746
    :goto_0
    return-void

    .line 736
    :cond_0
    move v3, v2

    const/16 v4, 0x100

    if-ge v3, v4, :cond_1

    .line 738
    move-object v3, v0

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 739
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_0

    .line 743
    :cond_1
    move-object v3, v0

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 744
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->put2(I)V

    goto :goto_0
.end method

.method public emitPushDefaultValue(Lgnu/bytecode/Type;)V
    .locals 5

    .prologue
    .line 958
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v2

    move-object v1, v2

    .line 959
    move-object v2, v1

    instance-of v2, v2, Lgnu/bytecode/PrimType;

    if-eqz v2, :cond_0

    .line 960
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitPushConstant(ILgnu/bytecode/Type;)V

    .line 963
    :goto_0
    return-void

    .line 962
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    goto :goto_0
.end method

.method public emitPushDouble(D)V
    .locals 9

    .prologue
    .line 825
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-wide v1, p1

    .local v1, "x":D
    move-wide v4, v1

    double-to-int v4, v4

    move v3, v4

    .line 826
    .local v3, "xi":I
    move v4, v3

    int-to-double v4, v4

    move-wide v6, v1

    cmpl-double v4, v4, v6

    if-nez v4, :cond_3

    move v4, v3

    const/16 v5, -0x80

    if-lt v4, v5, :cond_3

    move v4, v3

    const/16 v5, 0x80

    if-ge v4, v5, :cond_3

    .line 828
    move v4, v3

    if-eqz v4, :cond_0

    move v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 830
    :cond_0
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 831
    move-object v4, v0

    const/16 v5, 0xe

    move v6, v3

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 832
    move v4, v3

    if-nez v4, :cond_1

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 834
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 835
    move-object v4, v0

    const/16 v5, 0x77

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 852
    :cond_1
    :goto_0
    move-object v4, v0

    sget-object v5, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 853
    return-void

    .line 842
    :cond_2
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 843
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 844
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 845
    move-object v4, v0

    const/16 v5, 0x87

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_0

    .line 850
    :cond_3
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v5

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/ConstantPool;->addDouble(D)Lgnu/bytecode/CpoolValue2;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitPushConstant(Lgnu/bytecode/CpoolEntry;)V

    goto :goto_0
.end method

.method public emitPushFloat(F)V
    .locals 6

    .prologue
    .line 793
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "x":F
    move v3, v1

    float-to-int v3, v3

    move v2, v3

    .line 794
    .local v2, "xi":I
    move v3, v2

    int-to-float v3, v3

    move v4, v1

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    move v3, v2

    const/16 v4, -0x80

    if-lt v3, v4, :cond_2

    move v3, v2

    const/16 v4, 0x80

    if-ge v3, v4, :cond_2

    .line 796
    move v3, v2

    if-ltz v3, :cond_1

    move v3, v2

    const/4 v4, 0x2

    if-gt v3, v4, :cond_1

    .line 798
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 799
    move-object v3, v0

    const/16 v4, 0xb

    move v5, v2

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 800
    move v3, v2

    if-nez v3, :cond_0

    move v3, v1

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eqz v3, :cond_0

    .line 802
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 803
    move-object v3, v0

    const/16 v4, 0x76

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 820
    :cond_0
    :goto_0
    move-object v3, v0

    sget-object v4, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 821
    return-void

    .line 810
    :cond_1
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 811
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 812
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v3

    .line 813
    move-object v3, v0

    const/16 v4, 0x86

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_0

    .line 818
    :cond_2
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/bytecode/ConstantPool;->addFloat(F)Lgnu/bytecode/CpoolValue1;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitPushConstant(Lgnu/bytecode/CpoolEntry;)V

    goto :goto_0
.end method

.method public final emitPushInt(I)V
    .locals 5

    .prologue
    .line 750
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 751
    move v2, v1

    const/4 v3, -0x1

    if-lt v2, v3, :cond_0

    move v2, v1

    const/4 v3, 0x5

    if-gt v2, v3, :cond_0

    .line 752
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x3

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 767
    :goto_0
    move-object v2, v0

    sget-object v3, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 768
    return-void

    .line 753
    :cond_0
    move v2, v1

    const/16 v3, -0x80

    if-lt v2, v3, :cond_1

    move v2, v1

    const/16 v3, 0x80

    if-ge v2, v3, :cond_1

    .line 755
    move-object v2, v0

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 756
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_0

    .line 758
    :cond_1
    move v2, v1

    const/16 v3, -0x8000

    if-lt v2, v3, :cond_2

    move v2, v1

    const v3, 0x8000

    if-ge v2, v3, :cond_2

    .line 760
    move-object v2, v0

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 761
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->put2(I)V

    goto :goto_0

    .line 765
    :cond_2
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/ConstantPool;->addInt(I)Lgnu/bytecode/CpoolValue1;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitPushConstant(Lgnu/bytecode/CpoolEntry;)V

    goto :goto_0
.end method

.method public emitPushLong(J)V
    .locals 9

    .prologue
    .line 772
    move-object v1, p0

    .local v1, "this":Lgnu/bytecode/CodeAttr;
    move-wide v2, p1

    .local v2, "i":J
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 774
    :cond_0
    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 775
    move-object v4, v1

    const/16 v5, 0x9

    move-wide v6, v2

    long-to-int v6, v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 788
    :goto_0
    move-object v4, v1

    sget-object v5, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 789
    return-void

    .line 777
    :cond_1
    move-wide v4, v2

    long-to-int v4, v4

    int-to-long v4, v4

    move-wide v6, v2

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 779
    move-object v4, v1

    move-wide v5, v2

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 780
    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 781
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 782
    move-object v4, v1

    const/16 v5, 0x85

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_0

    .line 786
    :cond_2
    move-object v4, v1

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v5

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/ConstantPool;->addLong(J)Lgnu/bytecode/CpoolValue2;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitPushConstant(Lgnu/bytecode/CpoolEntry;)V

    goto :goto_0
.end method

.method public emitPushNull()V
    .locals 3

    .prologue
    .line 950
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 951
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 952
    move-object v1, v0

    sget-object v2, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 953
    return-void
.end method

.method public final emitPushPrimArray(Ljava/lang/Object;Lgnu/bytecode/ArrayType;)V
    .locals 16

    .prologue
    .line 983
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object/from16 v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "arrayType":Lgnu/bytecode/ArrayType;
    move-object v12, v2

    invoke-virtual {v12}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v12

    move-object v3, v12

    .line 984
    .local v3, "elementType":Lgnu/bytecode/Type;
    move-object v12, v1

    invoke-static {v12}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v12

    move v4, v12

    .line 985
    .local v4, "len":I
    move-object v12, v0

    move v13, v4

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 986
    move-object v12, v0

    move-object v13, v3

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 987
    move-object v12, v3

    invoke-virtual {v12}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move v5, v12

    .line 988
    .local v5, "sig":C
    const/4 v12, 0x0

    move v6, v12

    .local v6, "i":I
    :goto_0
    move v12, v6

    move v13, v4

    if-ge v12, v13, :cond_2

    .line 990
    const-wide/16 v12, 0x0

    move-wide v7, v12

    .local v7, "ival":J
    const/4 v12, 0x0

    move v9, v12

    .local v9, "fval":F
    const-wide/16 v12, 0x0

    move-wide v10, v12

    .line 991
    .local v10, "dval":D
    move v12, v5

    sparse-switch v12, :sswitch_data_0

    .line 1034
    :cond_0
    move-object v12, v0

    move-object v13, v2

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 1035
    move-object v12, v0

    move v13, v6

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1036
    move v12, v5

    sparse-switch v12, :sswitch_data_1

    .line 1055
    :goto_1
    move-object v12, v0

    move-object v13, v3

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    .line 988
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 994
    :sswitch_0
    move-object v12, v1

    check-cast v12, [J

    check-cast v12, [J

    move v13, v6

    aget-wide v12, v12, v13

    move-wide v7, v12

    .line 995
    move-wide v12, v7

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_0

    .line 996
    goto :goto_2

    .line 999
    :sswitch_1
    move-object v12, v1

    check-cast v12, [I

    check-cast v12, [I

    move v13, v6

    aget v12, v12, v13

    int-to-long v12, v12

    move-wide v7, v12

    .line 1000
    move-wide v12, v7

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_0

    .line 1001
    goto :goto_2

    .line 1004
    :sswitch_2
    move-object v12, v1

    check-cast v12, [S

    check-cast v12, [S

    move v13, v6

    aget-short v12, v12, v13

    int-to-long v12, v12

    move-wide v7, v12

    .line 1005
    move-wide v12, v7

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_0

    .line 1006
    goto :goto_2

    .line 1009
    :sswitch_3
    move-object v12, v1

    check-cast v12, [C

    check-cast v12, [C

    move v13, v6

    aget-char v12, v12, v13

    int-to-long v12, v12

    move-wide v7, v12

    .line 1010
    move-wide v12, v7

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_0

    .line 1011
    goto :goto_2

    .line 1014
    :sswitch_4
    move-object v12, v1

    check-cast v12, [B

    check-cast v12, [B

    move v13, v6

    aget-byte v12, v12, v13

    int-to-long v12, v12

    move-wide v7, v12

    .line 1015
    move-wide v12, v7

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_0

    .line 1016
    goto :goto_2

    .line 1019
    :sswitch_5
    move-object v12, v1

    check-cast v12, [Z

    check-cast v12, [Z

    move v13, v6

    aget-boolean v12, v12, v13

    if-eqz v12, :cond_1

    const-wide/16 v12, 0x1

    :goto_3
    move-wide v7, v12

    .line 1020
    move-wide v12, v7

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_0

    .line 1021
    goto :goto_2

    .line 1019
    :cond_1
    const-wide/16 v12, 0x0

    goto :goto_3

    .line 1024
    :sswitch_6
    move-object v12, v1

    check-cast v12, [F

    check-cast v12, [F

    move v13, v6

    aget v12, v12, v13

    move v9, v12

    .line 1025
    move v12, v9

    float-to-double v12, v12

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_0

    .line 1026
    goto/16 :goto_2

    .line 1029
    :sswitch_7
    move-object v12, v1

    check-cast v12, [D

    check-cast v12, [D

    move v13, v6

    aget-wide v12, v12, v13

    move-wide v10, v12

    .line 1030
    move-wide v12, v10

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_0

    .line 1031
    goto/16 :goto_2

    .line 1043
    :sswitch_8
    move-object v12, v0

    move-wide v13, v7

    long-to-int v13, v13

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1044
    goto/16 :goto_1

    .line 1046
    :sswitch_9
    move-object v12, v0

    move-wide v13, v7

    invoke-virtual {v12, v13, v14}, Lgnu/bytecode/CodeAttr;->emitPushLong(J)V

    .line 1047
    goto/16 :goto_1

    .line 1049
    :sswitch_a
    move-object v12, v0

    move v13, v9

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitPushFloat(F)V

    .line 1050
    goto/16 :goto_1

    .line 1052
    :sswitch_b
    move-object v12, v0

    move-wide v13, v10

    invoke-virtual {v12, v13, v14}, Lgnu/bytecode/CodeAttr;->emitPushDouble(D)V

    goto/16 :goto_1

    .line 1057
    .end local v7    # "ival":J
    .end local v9    # "fval":F
    .end local v10    # "dval":D
    :cond_2
    return-void

    .line 991
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_4
        0x43 -> :sswitch_3
        0x44 -> :sswitch_7
        0x46 -> :sswitch_6
        0x49 -> :sswitch_1
        0x4a -> :sswitch_0
        0x53 -> :sswitch_2
        0x5a -> :sswitch_5
    .end sparse-switch

    .line 1036
    :sswitch_data_1
    .sparse-switch
        0x42 -> :sswitch_8
        0x43 -> :sswitch_8
        0x44 -> :sswitch_b
        0x46 -> :sswitch_a
        0x49 -> :sswitch_8
        0x4a -> :sswitch_9
        0x53 -> :sswitch_8
        0x5a -> :sswitch_8
    .end sparse-switch
.end method

.method public final emitPushString(Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 890
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object/from16 v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v12, v1

    if-nez v12, :cond_0

    .line 891
    move-object v12, v0

    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    .line 938
    :goto_0
    return-void

    .line 894
    :cond_0
    move-object v12, v1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    move v2, v12

    .line 895
    .local v2, "length":I
    move-object v12, v1

    invoke-static {v12}, Lgnu/bytecode/CodeAttr;->calculateSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v3, v12

    .line 896
    .local v3, "segments":Ljava/lang/String;
    move-object v12, v3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    move v4, v12

    .line 897
    .local v4, "numSegments":I
    move v12, v4

    const/4 v13, 0x1

    if-gt v12, v13, :cond_1

    .line 898
    move-object v12, v0

    move-object v13, v0

    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v13

    move-object v14, v1

    invoke-virtual {v13, v14}, Lgnu/bytecode/ConstantPool;->addString(Ljava/lang/String;)Lgnu/bytecode/CpoolString;

    move-result-object v13

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitPushConstant(Lgnu/bytecode/CpoolEntry;)V

    .line 936
    move-object v12, v0

    sget-object v13, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    goto :goto_0

    .line 901
    :cond_1
    move v12, v4

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    .line 903
    move-object v12, v3

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move v5, v12

    .line 904
    .local v5, "firstSegment":I
    move-object v12, v0

    move-object v13, v1

    const/4 v14, 0x0

    move v15, v5

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 905
    move-object v12, v0

    move-object v13, v1

    move v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 906
    sget-object v12, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    const-string/jumbo v13, "concat"

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v12

    move-object v6, v12

    .line 908
    .local v6, "concatMethod":Lgnu/bytecode/Method;
    move-object v12, v0

    move-object v13, v6

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 909
    .line 932
    .end local v5    # "firstSegment":I
    .end local v6    # "concatMethod":Lgnu/bytecode/Method;
    :goto_1
    move-object v12, v1

    move-object v13, v1

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    if-ne v12, v13, :cond_2

    .line 933
    move-object v12, v0

    sget-object v13, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    const-string/jumbo v14, "intern"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v13

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 934
    :cond_2
    goto :goto_0

    .line 912
    :cond_3
    const-string/jumbo v12, "java.lang.StringBuffer"

    invoke-static {v12}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v12

    move-object v5, v12

    .line 913
    .local v5, "sbufType":Lgnu/bytecode/ClassType;
    move-object v12, v0

    move-object v13, v5

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 914
    move-object v12, v0

    move-object v13, v5

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 915
    move-object v12, v0

    move v13, v2

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 916
    const/4 v12, 0x1

    new-array v12, v12, [Lgnu/bytecode/Type;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    sget-object v15, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v15, v13, v14

    move-object v6, v12

    .line 917
    .local v6, "args1":[Lgnu/bytecode/Type;
    move-object v12, v0

    move-object v13, v5

    const-string/jumbo v14, "<init>"

    move-object v15, v6

    invoke-virtual {v13, v14, v15}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v13

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 918
    const/4 v12, 0x1

    new-array v12, v12, [Lgnu/bytecode/Type;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    sget-object v15, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    aput-object v15, v13, v14

    move-object v7, v12

    .line 919
    .local v7, "args2":[Lgnu/bytecode/Type;
    move-object v12, v5

    const-string/jumbo v13, "append"

    move-object v14, v7

    invoke-virtual {v12, v13, v14}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v12

    move-object v8, v12

    .line 921
    .local v8, "appendMethod":Lgnu/bytecode/Method;
    const/4 v12, 0x0

    move v9, v12

    .line 922
    .local v9, "segStart":I
    const/4 v12, 0x0

    move v10, v12

    .local v10, "seg":I
    :goto_2
    move v12, v10

    move v13, v4

    if-ge v12, v13, :cond_4

    .line 924
    move-object v12, v0

    move-object v13, v5

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 925
    move v12, v9

    move-object v13, v3

    move v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    add-int/2addr v12, v13

    move v11, v12

    .line 926
    .local v11, "segEnd":I
    move-object v12, v0

    move-object v13, v1

    move v14, v9

    move v15, v11

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 927
    move-object v12, v0

    move-object v13, v8

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 928
    move v12, v11

    move v9, v12

    .line 922
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 930
    .end local v11    # "segEnd":I
    :cond_4
    move-object v12, v0

    sget-object v13, Lgnu/bytecode/Type;->toString_method:Lgnu/bytecode/Method;

    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto/16 :goto_1
.end method

.method public final emitPushThis()V
    .locals 4

    .prologue
    .line 974
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v2, v2, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 975
    return-void
.end method

.method public final emitPutField(Lgnu/bytecode/Field;)V
    .locals 5

    .prologue
    .line 1451
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "field":Lgnu/bytecode/Field;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 1452
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 1453
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0xb5

    invoke-direct {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitFieldop(Lgnu/bytecode/Field;I)V

    .line 1454
    return-void
.end method

.method public final emitPutStatic(Lgnu/bytecode/Field;)V
    .locals 5

    .prologue
    .line 1442
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "field":Lgnu/bytecode/Field;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 1443
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0xb3

    invoke-direct {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitFieldop(Lgnu/bytecode/Field;I)V

    .line 1444
    return-void
.end method

.method final emitRawReturn()V
    .locals 4

    .prologue
    .line 2077
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v1

    iget v1, v1, Lgnu/bytecode/Type;->size:I

    if-nez v1, :cond_0

    .line 2079
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 2080
    move-object v1, v0

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 2084
    :goto_0
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 2085
    return-void

    .line 2083
    :cond_0
    move-object v1, v0

    const/16 v2, 0xac

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    goto :goto_0
.end method

.method public final emitRem()V
    .locals 3

    .prologue
    .line 1283
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    const/16 v2, 0x70

    invoke-direct {v1, v2}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public emitRet(Lgnu/bytecode/Variable;)V
    .locals 5

    .prologue
    .line 1827
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "var":Lgnu/bytecode/Variable;
    move-object v3, v1

    iget v3, v3, Lgnu/bytecode/Variable;->offset:I

    move v2, v3

    .line 1828
    .local v2, "offset":I
    move v3, v2

    const/16 v4, 0x100

    if-ge v3, v4, :cond_0

    .line 1830
    move-object v3, v0

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1831
    move-object v3, v0

    const/16 v4, 0xa9

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1832
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1841
    :goto_0
    return-void

    .line 1836
    :cond_0
    move-object v3, v0

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1837
    move-object v3, v0

    const/16 v4, 0xc4

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1838
    move-object v3, v0

    const/16 v4, 0xa9

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1839
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->put2(I)V

    goto :goto_0
.end method

.method public final emitReturn()V
    .locals 4

    .prologue
    .line 2070
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    if-eqz v1, :cond_0

    .line 2071
    new-instance v1, Ljava/lang/Error;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/Error;-><init>()V

    .line 2072
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitRawReturn()V

    .line 2073
    return-void
.end method

.method public final emitShl()V
    .locals 3

    .prologue
    .line 1288
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    const/16 v2, 0x78

    invoke-direct {v1, v2}, Lgnu/bytecode/CodeAttr;->emitShift(I)V

    return-void
.end method

.method public final emitShr()V
    .locals 3

    .prologue
    .line 1289
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    const/16 v2, 0x7a

    invoke-direct {v1, v2}, Lgnu/bytecode/CodeAttr;->emitShift(I)V

    return-void
.end method

.method public emitStore(Lgnu/bytecode/Variable;)V
    .locals 10

    .prologue
    .line 1365
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "var":Lgnu/bytecode/Variable;
    move-object v5, v1

    iget v5, v5, Lgnu/bytecode/Variable;->offset:I

    move v2, v5

    .line 1366
    .local v2, "offset":I
    move v5, v2

    if-ltz v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1367
    :cond_0
    new-instance v5, Ljava/lang/Error;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "attempting to store in unassigned "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " simple:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", offset: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1369
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v5

    move-object v3, v5

    .line 1370
    .local v3, "type":Lgnu/bytecode/Type;
    move-object v5, v0

    move v6, v2

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/CodeAttr;->noteVarType(ILgnu/bytecode/Type;)V

    .line 1371
    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1372
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v5

    .line 1373
    move-object v5, v0

    move-object v6, v3

    invoke-direct {v5, v6}, Lgnu/bytecode/CodeAttr;->adjustTypedOp(Lgnu/bytecode/Type;)I

    move-result v5

    move v4, v5

    .line 1374
    .local v4, "kind":I
    move v5, v2

    const/4 v6, 0x3

    if-gt v5, v6, :cond_2

    .line 1375
    move-object v5, v0

    const/16 v6, 0x3b

    const/4 v7, 0x4

    move v8, v4

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    move v7, v2

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1378
    :goto_0
    return-void

    .line 1377
    :cond_2
    move-object v5, v0

    const/16 v6, 0x36

    move v7, v4

    add-int/2addr v6, v7

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/CodeAttr;->emitMaybeWide(II)V

    goto :goto_0
.end method

.method public emitStoreDefaultValue(Lgnu/bytecode/Variable;)V
    .locals 4

    .prologue
    .line 968
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "var":Lgnu/bytecode/Variable;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitPushDefaultValue(Lgnu/bytecode/Type;)V

    .line 969
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 970
    return-void
.end method

.method public final emitSub()V
    .locals 3

    .prologue
    .line 1279
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public final emitSub(C)V
    .locals 5

    .prologue
    .line 1276
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "sig":C
    move-object v2, v0

    const/16 v3, 0x64

    move v4, v1

    invoke-direct {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitBinop(IC)V

    return-void
.end method

.method public final emitSub(Lgnu/bytecode/PrimType;)V
    .locals 5

    .prologue
    .line 1277
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/PrimType;
    move-object v2, v0

    const/16 v3, 0x64

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitBinop(ILgnu/bytecode/Type;)V

    return-void
.end method

.method public emitSwap()V
    .locals 5

    .prologue
    .line 494
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 495
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v3

    move-object v1, v3

    .line 496
    .local v1, "type1":Lgnu/bytecode/Type;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v3

    move-object v2, v3

    .line 498
    .local v2, "type2":Lgnu/bytecode/Type;
    move-object v3, v1

    iget v3, v3, Lgnu/bytecode/Type;->size:I

    const/4 v4, 0x4

    if-gt v3, v4, :cond_0

    move-object v3, v2

    iget v3, v3, Lgnu/bytecode/Type;->size:I

    const/4 v4, 0x4

    if-le v3, v4, :cond_1

    .line 502
    :cond_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 503
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 504
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    .line 505
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 513
    :goto_0
    return-void

    .line 509
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 510
    move-object v3, v0

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 511
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    goto :goto_0
.end method

.method public emitTailCall(ZLgnu/bytecode/Scope;)V
    .locals 9

    .prologue
    .line 2459
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "pop_args":Z
    move-object v2, p2

    .local v2, "scope":Lgnu/bytecode/Scope;
    move v6, v1

    if-eqz v6, :cond_4

    .line 2461
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v6

    move-object v3, v6

    .line 2462
    .local v3, "meth":Lgnu/bytecode/Method;
    move-object v6, v3

    iget v6, v6, Lgnu/bytecode/Method;->access_flags:I

    const/16 v7, 0x8

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    move v4, v6

    .line 2463
    .local v4, "arg_slots":I
    move-object v6, v3

    iget-object v6, v6, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    array-length v6, v6

    move v5, v6

    .local v5, "i":I
    :goto_1
    add-int/lit8 v5, v5, -0x1

    move v6, v5

    if-ltz v6, :cond_2

    .line 2464
    move v6, v4

    move-object v7, v3

    iget-object v7, v7, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    move v8, v5

    aget-object v7, v7, v8

    iget v7, v7, Lgnu/bytecode/Type;->size:I

    const/4 v8, 0x4

    if-le v7, v8, :cond_1

    const/4 v7, 0x2

    :goto_2
    add-int/2addr v6, v7

    move v4, v6

    goto :goto_1

    .line 2462
    .end local v4    # "arg_slots":I
    .end local v5    # "i":I
    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    .line 2464
    .restart local v4    # "arg_slots":I
    .restart local v5    # "i":I
    :cond_1
    const/4 v7, 0x1

    goto :goto_2

    .line 2465
    :cond_2
    move-object v6, v3

    iget-object v6, v6, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    array-length v6, v6

    move v5, v6

    :goto_3
    add-int/lit8 v5, v5, -0x1

    move v6, v5

    if-ltz v6, :cond_4

    .line 2467
    move v6, v4

    move-object v7, v3

    iget-object v7, v7, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    move v8, v5

    aget-object v7, v7, v8

    iget v7, v7, Lgnu/bytecode/Type;->size:I

    const/4 v8, 0x4

    if-le v7, v8, :cond_3

    const/4 v7, 0x2

    :goto_4
    sub-int/2addr v6, v7

    move v4, v6

    .line 2468
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v7, v7, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    move v8, v4

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    goto :goto_3

    .line 2467
    :cond_3
    const/4 v7, 0x1

    goto :goto_4

    .line 2471
    .end local v3    # "meth":Lgnu/bytecode/Method;
    .end local v4    # "arg_slots":I
    .end local v5    # "i":I
    :cond_4
    move-object v6, v0

    move-object v7, v2

    iget-object v7, v7, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 2472
    return-void
.end method

.method public final emitThen()V
    .locals 3

    .prologue
    .line 1845
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    move-object v2, v0

    iget v2, v2, Lgnu/bytecode/CodeAttr;->SP:I

    iput v2, v1, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1846
    return-void
.end method

.method public final emitThrow()V
    .locals 3

    .prologue
    .line 2042
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 2043
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 2044
    move-object v1, v0

    const/16 v2, 0xbf

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 2045
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 2046
    return-void
.end method

.method final emitTransfer(Lgnu/bytecode/Label;I)V
    .locals 7

    .prologue
    .line 1562
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "label":Lgnu/bytecode/Label;
    move v2, p2

    .local v2, "opcode":I
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v3, v4}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    .line 1563
    move-object v3, v0

    const/4 v4, 0x6

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 1564
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1565
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lgnu/bytecode/CodeAttr;->PC:I

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x2

    iput v4, v3, Lgnu/bytecode/CodeAttr;->PC:I

    .line 1566
    return-void
.end method

.method public emitTryCatchEnd()V
    .locals 7

    .prologue
    .line 2405
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v4, v4, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    if-eqz v4, :cond_0

    .line 2406
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->emitFinallyEnd()V

    .line 2407
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v4, v4, Lgnu/bytecode/TryState;->savedStack:[Lgnu/bytecode/Variable;

    move-object v1, v4

    .line 2408
    .local v1, "vars":[Lgnu/bytecode/Variable;
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v4, v4, Lgnu/bytecode/TryState;->end_label:Lgnu/bytecode/Label;

    if-nez v4, :cond_4

    .line 2409
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 2427
    :cond_1
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v4, v4, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    if-nez v4, :cond_2

    move-object v4, v1

    if-eqz v4, :cond_3

    .line 2428
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    move-result-object v4

    .line 2429
    :cond_3
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v5, v5, Lgnu/bytecode/TryState;->previous:Lgnu/bytecode/TryState;

    iput-object v5, v4, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    .line 2430
    return-void

    .line 2412
    :cond_4
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v5, v5, Lgnu/bytecode/TryState;->start_try:Lgnu/bytecode/Label;

    iget-object v5, v5, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    sget-object v6, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/CodeAttr;->setTypes([Lgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    .line 2413
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v4, v4, Lgnu/bytecode/TryState;->end_label:Lgnu/bytecode/Label;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 2414
    move-object v4, v1

    if-eqz v4, :cond_6

    .line 2416
    move-object v4, v1

    array-length v4, v4

    move v2, v4

    .local v2, "i":I
    :goto_1
    add-int/lit8 v2, v2, -0x1

    move v4, v2

    if-ltz v4, :cond_6

    .line 2418
    move-object v4, v1

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    .line 2419
    .local v3, "v":Lgnu/bytecode/Variable;
    move-object v4, v3

    if-eqz v4, :cond_5

    .line 2420
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2422
    :cond_5
    goto :goto_1

    .line 2424
    .end local v2    # "i":I
    .end local v3    # "v":Lgnu/bytecode/Variable;
    :cond_6
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v4, v4, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    if-eqz v4, :cond_1

    .line 2425
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v5, v5, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_0
.end method

.method public emitTryEnd()V
    .locals 3

    .prologue
    .line 2242
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lgnu/bytecode/CodeAttr;->emitTryEnd(Z)V

    .line 2243
    return-void
.end method

.method public emitTryStart(ZLgnu/bytecode/Type;)V
    .locals 13

    .prologue
    .line 2197
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "has_finally":Z
    move-object v2, p2

    .local v2, "result_type":Lgnu/bytecode/Type;
    move-object v7, v2

    if-eqz v7, :cond_0

    move-object v7, v2

    invoke-virtual {v7}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2198
    const/4 v7, 0x0

    move-object v2, v7

    .line 2199
    :cond_0
    const/4 v7, 0x0

    move-object v3, v7

    .line 2200
    .local v3, "savedStack":[Lgnu/bytecode/Variable;
    move-object v7, v2

    if-nez v7, :cond_1

    move-object v7, v0

    iget v7, v7, Lgnu/bytecode/CodeAttr;->SP:I

    if-lez v7, :cond_2

    .line 2201
    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v7

    .line 2202
    :cond_2
    move-object v7, v0

    iget v7, v7, Lgnu/bytecode/CodeAttr;->SP:I

    if-lez v7, :cond_3

    .line 2204
    move-object v7, v0

    iget v7, v7, Lgnu/bytecode/CodeAttr;->SP:I

    new-array v7, v7, [Lgnu/bytecode/Variable;

    move-object v3, v7

    .line 2205
    const/4 v7, 0x0

    move v4, v7

    .line 2206
    .local v4, "i":I
    :goto_0
    move-object v7, v0

    iget v7, v7, Lgnu/bytecode/CodeAttr;->SP:I

    if-lez v7, :cond_3

    .line 2208
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->topType()Lgnu/bytecode/Type;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v7

    move-object v5, v7

    .line 2209
    .local v5, "var":Lgnu/bytecode/Variable;
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2210
    move-object v7, v3

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    move-object v9, v5

    aput-object v9, v7, v8

    .line 2211
    goto :goto_0

    .line 2213
    .end local v4    # "i":I
    .end local v5    # "var":Lgnu/bytecode/Variable;
    :cond_3
    new-instance v7, Lgnu/bytecode/TryState;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    invoke-direct {v8, v9}, Lgnu/bytecode/TryState;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object v4, v7

    .line 2214
    .local v4, "try_state":Lgnu/bytecode/TryState;
    move-object v7, v4

    move-object v8, v3

    iput-object v8, v7, Lgnu/bytecode/TryState;->savedStack:[Lgnu/bytecode/Variable;

    .line 2216
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    if-nez v7, :cond_7

    const/4 v7, 0x0

    :goto_1
    move v5, v7

    .line 2217
    .local v5, "usedLocals":I
    :goto_2
    move v7, v5

    if-lez v7, :cond_4

    .line 2219
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    move-object v6, v7

    .line 2220
    .local v6, "last":Lgnu/bytecode/Type;
    move-object v7, v6

    if-eqz v7, :cond_8

    .line 2221
    .line 2225
    .end local v6    # "last":Lgnu/bytecode/Type;
    :cond_4
    move v7, v5

    if-nez v7, :cond_9

    .line 2226
    sget-object v7, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    move-object v6, v7

    .line 2232
    .local v6, "startLocals":[Lgnu/bytecode/Type;
    :goto_3
    move-object v7, v4

    iget-object v7, v7, Lgnu/bytecode/TryState;->start_try:Lgnu/bytecode/Label;

    move-object v8, v6

    iput-object v8, v7, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    .line 2234
    move-object v7, v2

    if-eqz v7, :cond_5

    .line 2235
    move-object v7, v4

    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v8

    iput-object v8, v7, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    .line 2236
    :cond_5
    move v7, v1

    if-eqz v7, :cond_6

    .line 2237
    move-object v7, v4

    new-instance v8, Lgnu/bytecode/Label;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Lgnu/bytecode/Label;-><init>()V

    iput-object v8, v7, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    .line 2238
    :cond_6
    return-void

    .line 2216
    .end local v5    # "usedLocals":I
    .end local v6    # "startLocals":[Lgnu/bytecode/Type;
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v7, v7

    goto :goto_1

    .line 2217
    .restart local v5    # "usedLocals":I
    .local v6, "last":Lgnu/bytecode/Type;
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 2229
    .end local v6    # "last":Lgnu/bytecode/Type;
    :cond_9
    move v7, v5

    new-array v7, v7, [Lgnu/bytecode/Type;

    move-object v6, v7

    .line 2230
    .local v6, "startLocals":[Lgnu/bytecode/Type;
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    const/4 v8, 0x0

    move-object v9, v6

    const/4 v10, 0x0

    move v11, v5

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3
.end method

.method public final emitUshr()V
    .locals 3

    .prologue
    .line 1290
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    const/16 v2, 0x7c

    invoke-direct {v1, v2}, Lgnu/bytecode/CodeAttr;->emitShift(I)V

    return-void
.end method

.method public emitWithCleanupCatch(Lgnu/bytecode/Variable;)V
    .locals 9

    .prologue
    .line 2153
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "catchVar":Lgnu/bytecode/Variable;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->emitTryEnd()V

    .line 2155
    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/CodeAttr;->SP:I

    if-lez v4, :cond_0

    .line 2157
    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/CodeAttr;->SP:I

    new-array v4, v4, [Lgnu/bytecode/Type;

    move-object v2, v4

    .line 2158
    .local v2, "savedTypes":[Lgnu/bytecode/Type;
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    const/4 v5, 0x0

    move-object v6, v2

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Lgnu/bytecode/CodeAttr;->SP:I

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2159
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lgnu/bytecode/CodeAttr;->SP:I

    .line 2163
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    move-object v5, v2

    iput-object v5, v4, Lgnu/bytecode/TryState;->savedTypes:[Lgnu/bytecode/Type;

    .line 2165
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    move-object v5, v1

    iput-object v5, v4, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    .line 2166
    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/CodeAttr;->SP:I

    move v3, v4

    .line 2167
    .local v3, "save_SP":I
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitCatchStart(Lgnu/bytecode/Variable;)V

    .line 2168
    return-void

    .line 2162
    .end local v2    # "savedTypes":[Lgnu/bytecode/Type;
    .end local v3    # "save_SP":I
    :cond_0
    const/4 v4, 0x0

    move-object v2, v4

    .restart local v2    # "savedTypes":[Lgnu/bytecode/Type;
    goto :goto_0
.end method

.method public emitWithCleanupDone()V
    .locals 8

    .prologue
    .line 2174
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    move-object v1, v3

    .line 2175
    .local v1, "catchVar":Lgnu/bytecode/Variable;
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    const/4 v4, 0x0

    iput-object v4, v3, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    .line 2176
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 2177
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2178
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    .line 2179
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->emitCatchEnd()V

    .line 2180
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->savedTypes:[Lgnu/bytecode/Type;

    move-object v2, v3

    .line 2181
    .local v2, "savedTypes":[Lgnu/bytecode/Type;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    .line 2182
    move-object v3, v2

    if-eqz v3, :cond_2

    .line 2184
    move-object v3, v0

    move-object v4, v2

    array-length v4, v4

    iput v4, v3, Lgnu/bytecode/CodeAttr;->SP:I

    .line 2185
    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/CodeAttr;->SP:I

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 2186
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    .line 2192
    :goto_0
    return-void

    .line 2188
    :cond_1
    move-object v3, v2

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lgnu/bytecode/CodeAttr;->SP:I

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 2191
    :cond_2
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lgnu/bytecode/CodeAttr;->SP:I

    goto :goto_0
.end method

.method public emitWithCleanupStart()V
    .locals 5

    .prologue
    .line 2142
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v2, v0

    iget v2, v2, Lgnu/bytecode/CodeAttr;->SP:I

    move v1, v2

    .line 2143
    .local v1, "savedSP":I
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lgnu/bytecode/CodeAttr;->SP:I

    .line 2144
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 2145
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/bytecode/CodeAttr;->SP:I

    .line 2146
    return-void
.end method

.method public final emitXOr()V
    .locals 3

    .prologue
    .line 1286
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    const/16 v2, 0x82

    invoke-direct {v1, v2}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public endExitableBlock()V
    .locals 4

    .prologue
    .line 1608
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->currentExitableBlock:Lgnu/bytecode/ExitableBlock;

    move-object v1, v2

    .line 1609
    .local v1, "bl":Lgnu/bytecode/ExitableBlock;
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/bytecode/ExitableBlock;->finish()V

    .line 1610
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/ExitableBlock;->outer:Lgnu/bytecode/ExitableBlock;

    iput-object v3, v2, Lgnu/bytecode/CodeAttr;->currentExitableBlock:Lgnu/bytecode/ExitableBlock;

    .line 1611
    return-void
.end method

.method public endFragment(I)V
    .locals 7

    .prologue
    .line 3285
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "cookie":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/bytecode/CodeAttr;->fixup_count:I

    const/4 v6, 0x4

    shl-int/lit8 v5, v5, 0x4

    const/16 v6, 0xa

    or-int/lit8 v5, v5, 0xa

    aput v5, v3, v4

    .line 3286
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move v4, v1

    aget-object v3, v3, v4

    move-object v2, v3

    .line 3287
    .local v2, "after":Lgnu/bytecode/Label;
    move-object v3, v0

    const/16 v4, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lgnu/bytecode/CodeAttr;->fixupAdd(IILgnu/bytecode/Label;)V

    .line 3288
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v3, v4}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 3289
    return-void
.end method

.method public enterScope(Lgnu/bytecode/Scope;)V
    .locals 4

    .prologue
    .line 629
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "scope":Lgnu/bytecode/Scope;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/bytecode/Scope;->setStartPC(Lgnu/bytecode/CodeAttr;)V

    .line 630
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/LocalVarsAttr;->enterScope(Lgnu/bytecode/Scope;)V

    .line 631
    return-void
.end method

.method final fixupAdd(IILgnu/bytecode/Label;)V
    .locals 13

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "kind":I
    move v2, p2

    .local v2, "offset":I
    move-object/from16 v3, p3

    .local v3, "label":Lgnu/bytecode/Label;
    move-object v8, v3

    if-eqz v8, :cond_0

    move v8, v1

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    move v8, v1

    if-eqz v8, :cond_0

    move v8, v1

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    move v8, v1

    const/16 v9, 0xb

    if-eq v8, v9, :cond_0

    .line 146
    move-object v8, v3

    const/4 v9, 0x1

    iput-boolean v9, v8, Lgnu/bytecode/Label;->needsStackMapEntry:Z

    .line 147
    :cond_0
    move-object v8, v0

    iget v8, v8, Lgnu/bytecode/CodeAttr;->fixup_count:I

    move v4, v8

    .line 148
    .local v4, "count":I
    move v8, v4

    if-nez v8, :cond_2

    .line 150
    move-object v8, v0

    const/16 v9, 0x1e

    new-array v9, v9, [I

    iput-object v9, v8, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    .line 151
    move-object v8, v0

    const/16 v9, 0x1e

    new-array v9, v9, [Lgnu/bytecode/Label;

    iput-object v9, v8, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    .line 163
    :cond_1
    :goto_0
    move-object v8, v0

    iget-object v8, v8, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    move v9, v4

    move v10, v2

    const/4 v11, 0x4

    shl-int/lit8 v10, v10, 0x4

    move v11, v1

    or-int/2addr v10, v11

    aput v10, v8, v9

    .line 164
    move-object v8, v0

    iget-object v8, v8, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move v9, v4

    move-object v10, v3

    aput-object v10, v8, v9

    .line 165
    move-object v8, v0

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lgnu/bytecode/CodeAttr;->fixup_count:I

    .line 166
    return-void

    .line 153
    :cond_2
    move-object v8, v0

    iget v8, v8, Lgnu/bytecode/CodeAttr;->fixup_count:I

    move-object v9, v0

    iget-object v9, v9, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    array-length v9, v9

    if-ne v8, v9, :cond_1

    .line 155
    const/4 v8, 0x2

    move v9, v4

    mul-int/2addr v8, v9

    move v5, v8

    .line 156
    .local v5, "new_length":I
    move v8, v5

    new-array v8, v8, [Lgnu/bytecode/Label;

    move-object v6, v8

    .line 157
    .local v6, "new_labels":[Lgnu/bytecode/Label;
    move-object v8, v0

    iget-object v8, v8, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    const/4 v9, 0x0

    move-object v10, v6

    const/4 v11, 0x0

    move v12, v4

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    .line 159
    move v8, v5

    new-array v8, v8, [I

    move-object v7, v8

    .line 160
    .local v7, "new_offsets":[I
    move-object v8, v0

    iget-object v8, v8, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    const/4 v9, 0x0

    move-object v10, v7

    const/4 v11, 0x0

    move v12, v4

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    goto :goto_0
.end method

.method public final fixupAdd(ILgnu/bytecode/Label;)V
    .locals 7

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "kind":I
    move-object v2, p2

    .local v2, "label":Lgnu/bytecode/Label;
    move-object v3, v0

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/bytecode/CodeAttr;->PC:I

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/bytecode/CodeAttr;->fixupAdd(IILgnu/bytecode/Label;)V

    .line 140
    return-void
.end method

.method public final fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V
    .locals 7

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "here":Lgnu/bytecode/Label;
    move-object v2, p2

    .local v2, "target":Lgnu/bytecode/Label;
    move-object v3, v0

    const/16 v4, 0x9

    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/bytecode/CodeAttr;->fixupAdd(IILgnu/bytecode/Label;)V

    .line 131
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v3, v4}, Lgnu/bytecode/Label;->defineRaw(Lgnu/bytecode/CodeAttr;)V

    .line 132
    return-void
.end method

.method public getArg(I)Lgnu/bytecode/Variable;
    .locals 4

    .prologue
    .line 660
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v2, v2, Lgnu/bytecode/LocalVarsAttr;->parameter_scope:Lgnu/bytecode/Scope;

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/Scope;->getVariable(I)Lgnu/bytecode/Variable;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return-object v0
.end method

.method public final getAttributes()Lgnu/bytecode/Attribute;
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/CodeAttr;->attributes:Lgnu/bytecode/Attribute;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return-object v0
.end method

.method public getCode()[B
    .locals 2

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/CodeAttr;->code:[B

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return-object v0
.end method

.method public getCodeLength()I
    .locals 2

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/CodeAttr;->PC:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return v0
.end method

.method public final getConstants()Lgnu/bytecode/ConstantPool;
    .locals 2

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v1

    iget-object v1, v1, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    iget-object v1, v1, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return-object v0
.end method

.method public getCurrentScope()Lgnu/bytecode/Scope;
    .locals 2

    .prologue
    .line 646
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v1, v1, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return-object v0
.end method

.method public final getCurrentTry()Lgnu/bytecode/TryState;
    .locals 2

    .prologue
    .line 2434
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return-object v0
.end method

.method public getLabel()Lgnu/bytecode/Label;
    .locals 5

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    new-instance v2, Lgnu/bytecode/Label;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lgnu/bytecode/Label;-><init>()V

    move-object v1, v2

    .line 488
    .local v1, "label":Lgnu/bytecode/Label;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/bytecode/Label;->defineRaw(Lgnu/bytecode/CodeAttr;)V

    .line 489
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return-object v0
.end method

.method public final getLength()I
    .locals 4

    .prologue
    .line 2809
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    const/16 v1, 0xc

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->getCodeLength()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x8

    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    move-object v2, v0

    invoke-static {v2}, Lgnu/bytecode/Attribute;->getLengthAll(Lgnu/bytecode/AttrContainer;)I

    move-result v2

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return v0
.end method

.method public getMaxLocals()I
    .locals 2

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/CodeAttr;->max_locals:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return v0
.end method

.method public getMaxStack()I
    .locals 2

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/CodeAttr;->max_stack:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return v0
.end method

.method public final getMethod()Lgnu/bytecode/Method;
    .locals 2

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->getContainer()Lgnu/bytecode/AttrContainer;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/Method;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return-object v0
.end method

.method public final getPC()I
    .locals 2

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/CodeAttr;->PC:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return v0
.end method

.method public final getSP()I
    .locals 2

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/CodeAttr;->SP:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return v0
.end method

.method invert_opcode(B)B
    .locals 7

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "opcode":B
    move v3, v1

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    move v2, v3

    .line 258
    .local v2, "iopcode":I
    move v3, v2

    const/16 v4, 0x99

    if-lt v3, v4, :cond_0

    move v3, v2

    const/16 v4, 0xa6

    if-le v3, v4, :cond_1

    :cond_0
    move v3, v2

    const/16 v4, 0xc6

    if-lt v3, v4, :cond_2

    move v3, v2

    const/16 v4, 0xc7

    if-gt v3, v4, :cond_2

    .line 260
    :cond_1
    move v3, v2

    const/4 v4, 0x1

    xor-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    move v0, v3

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return v0

    .line 261
    .restart local v0    # "this":Lgnu/bytecode/CodeAttr;
    :cond_2
    new-instance v3, Ljava/lang/Error;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "unknown opcode to invert_opcode"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final isInTry()Z
    .locals 2

    .prologue
    .line 2441
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return v0

    .restart local v0    # "this":Lgnu/bytecode/CodeAttr;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public lookup(Ljava/lang/String;)Lgnu/bytecode/Variable;
    .locals 6

    .prologue
    .line 670
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v4, v4, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    move-object v2, v4

    .line 671
    .local v2, "scope":Lgnu/bytecode/Scope;
    :goto_0
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 673
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/bytecode/Scope;->lookup(Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v4

    move-object v3, v4

    .line 674
    .local v3, "var":Lgnu/bytecode/Variable;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 675
    move-object v4, v3

    move-object v0, v4

    .line 677
    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    .end local v3    # "var":Lgnu/bytecode/Variable;
    :goto_1
    return-object v0

    .line 671
    .restart local v0    # "this":Lgnu/bytecode/CodeAttr;
    .restart local v3    # "var":Lgnu/bytecode/Variable;
    :cond_0
    move-object v4, v2

    iget-object v4, v4, Lgnu/bytecode/Scope;->parent:Lgnu/bytecode/Scope;

    move-object v2, v4

    goto :goto_0

    .line 677
    .end local v3    # "var":Lgnu/bytecode/Variable;
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method noteParamTypes()V
    .locals 13

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v9

    move-object v1, v9

    .line 323
    .local v1, "method":Lgnu/bytecode/Method;
    const/4 v9, 0x0

    move v2, v9

    .line 324
    .local v2, "offset":I
    move-object v9, v1

    iget v9, v9, Lgnu/bytecode/Method;->access_flags:I

    const/16 v10, 0x8

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_1

    .line 326
    move-object v9, v1

    iget-object v9, v9, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    move-object v3, v9

    .line 327
    .local v3, "type":Lgnu/bytecode/Type;
    const-string/jumbo v9, "<init>"

    move-object v10, v1

    invoke-virtual {v10}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string/jumbo v9, "java.lang.Object"

    move-object v10, v3

    invoke-virtual {v10}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 329
    move-object v9, v3

    check-cast v9, Lgnu/bytecode/ClassType;

    invoke-static {v9}, Lgnu/bytecode/UninitializedType;->uninitializedThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/UninitializedType;

    move-result-object v9

    move-object v3, v9

    .line 330
    :cond_0
    move-object v9, v0

    move v10, v2

    add-int/lit8 v2, v2, 0x1

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Lgnu/bytecode/CodeAttr;->noteVarType(ILgnu/bytecode/Type;)V

    .line 332
    .end local v3    # "type":Lgnu/bytecode/Type;
    :cond_1
    move-object v9, v1

    iget-object v9, v9, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    array-length v9, v9

    move v3, v9

    .line 333
    .local v3, "arg_count":I
    const/4 v9, 0x0

    move v4, v9

    .local v4, "i":I
    :goto_0
    move v9, v4

    move v10, v3

    if-ge v9, v10, :cond_3

    .line 335
    move-object v9, v1

    iget-object v9, v9, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    move v10, v4

    aget-object v9, v9, v10

    move-object v5, v9

    .line 336
    .local v5, "type":Lgnu/bytecode/Type;
    move-object v9, v0

    move v10, v2

    add-int/lit8 v2, v2, 0x1

    move-object v11, v5

    invoke-virtual {v9, v10, v11}, Lgnu/bytecode/CodeAttr;->noteVarType(ILgnu/bytecode/Type;)V

    .line 337
    move-object v9, v5

    invoke-virtual {v9}, Lgnu/bytecode/Type;->getSizeInWords()I

    move-result v9

    move v6, v9

    .local v6, "size":I
    :goto_1
    add-int/lit8 v6, v6, -0x1

    move v9, v6

    if-lez v9, :cond_2

    .line 338
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 333
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 340
    .end local v5    # "type":Lgnu/bytecode/Type;
    .end local v6    # "size":I
    :cond_3
    move-object v9, v0

    iget v9, v9, Lgnu/bytecode/CodeAttr;->flags:I

    const/4 v10, 0x1

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_7

    .line 342
    move-object v9, v0

    new-instance v10, Lgnu/bytecode/StackMapTableAttr;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Lgnu/bytecode/StackMapTableAttr;-><init>()V

    iput-object v10, v9, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    .line 344
    const/16 v9, 0x14

    move v10, v2

    add-int/2addr v9, v10

    new-array v9, v9, [I

    move-object v4, v9

    .line 345
    .local v4, "encodedLocals":[I
    const/4 v9, 0x0

    move v5, v9

    .line 346
    .local v5, "count":I
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_2
    move v9, v6

    move v10, v2

    if-ge v9, v10, :cond_6

    .line 348
    move-object v9, v0

    iget-object v9, v9, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    move-object v10, v0

    iget-object v10, v10, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    move v11, v6

    aget-object v10, v10, v11

    move-object v11, v0

    invoke-virtual {v9, v10, v11}, Lgnu/bytecode/StackMapTableAttr;->encodeVerificationType(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)I

    move-result v9

    move v7, v9

    .line 349
    .local v7, "encoded":I
    move-object v9, v4

    move v10, v5

    add-int/lit8 v5, v5, 0x1

    move v11, v7

    aput v11, v9, v10

    .line 350
    move v9, v7

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    move v8, v9

    .line 351
    .local v8, "tag":I
    move v9, v8

    const/4 v10, 0x3

    if-eq v9, v10, :cond_4

    move v9, v8

    const/4 v10, 0x4

    if-ne v9, v10, :cond_5

    .line 352
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 346
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 354
    .end local v7    # "encoded":I
    .end local v8    # "tag":I
    :cond_6
    move-object v9, v0

    iget-object v9, v9, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    move-object v10, v4

    iput-object v10, v9, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    .line 355
    move-object v9, v0

    iget-object v9, v9, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    move v10, v5

    iput v10, v9, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    .line 356
    move-object v9, v0

    iget-object v9, v9, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    const/16 v10, 0xa

    new-array v10, v10, [I

    iput-object v10, v9, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    .line 357
    move-object v9, v0

    iget-object v9, v9, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    const/4 v10, 0x0

    iput v10, v9, Lgnu/bytecode/StackMapTableAttr;->countStack:I

    .line 359
    .end local v4    # "encodedLocals":[I
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_7
    return-void
.end method

.method public noteVarType(ILgnu/bytecode/Type;)V
    .locals 10

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "offset":I
    move-object v2, p2

    .local v2, "type":Lgnu/bytecode/Type;
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/bytecode/Type;->getSizeInWords()I

    move-result v5

    move v3, v5

    .line 365
    .local v3, "size":I
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    if-nez v5, :cond_3

    .line 366
    move-object v5, v0

    move v6, v1

    move v7, v3

    add-int/2addr v6, v7

    const/16 v7, 0x14

    add-int/lit8 v6, v6, 0x14

    new-array v6, v6, [Lgnu/bytecode/Type;

    iput-object v6, v5, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    .line 372
    :cond_0
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    move v6, v1

    move-object v7, v2

    aput-object v7, v5, v6

    .line 373
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    if-nez v5, :cond_4

    .line 374
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v6, v6

    new-array v6, v6, [Z

    iput-object v6, v5, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    .line 381
    :cond_1
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    move v6, v1

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 382
    move v5, v1

    if-lez v5, :cond_2

    .line 384
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    move-object v4, v5

    .line 385
    .local v4, "prev":Lgnu/bytecode/Type;
    move-object v5, v4

    if-eqz v5, :cond_2

    move-object v5, v4

    invoke-virtual {v5}, Lgnu/bytecode/Type;->getSizeInWords()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 386
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 388
    .end local v4    # "prev":Lgnu/bytecode/Type;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, -0x1

    move v5, v3

    if-lez v5, :cond_5

    .line 389
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    add-int/lit8 v1, v1, 0x1

    move v6, v1

    const/4 v7, 0x0

    aput-object v7, v5, v6

    goto :goto_2

    .line 367
    :cond_3
    move v5, v1

    move v6, v3

    add-int/2addr v5, v6

    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v6, v6

    if-le v5, v6, :cond_0

    .line 368
    const/4 v5, 0x2

    move v6, v1

    move v7, v3

    add-int/2addr v6, v7

    mul-int/2addr v5, v6

    new-array v5, v5, [Lgnu/bytecode/Type;

    move-object v4, v5

    .line 369
    .local v4, "new_array":[Lgnu/bytecode/Type;
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v9, v9

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    goto :goto_0

    .line 375
    .end local v4    # "new_array":[Lgnu/bytecode/Type;
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    array-length v5, v5

    move v6, v1

    if-gt v5, v6, :cond_1

    .line 377
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v5, v5

    new-array v5, v5, [Z

    move-object v4, v5

    .line 378
    .local v4, "tmp":[Z
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    array-length v9, v9

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    goto :goto_1

    .line 390
    .end local v4    # "tmp":[Z
    :cond_5
    return-void
.end method

.method public popScope()Lgnu/bytecode/Scope;
    .locals 4

    .prologue
    .line 650
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v2, v2, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    move-object v1, v2

    .line 651
    .local v1, "scope":Lgnu/bytecode/Scope;
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/Scope;->parent:Lgnu/bytecode/Scope;

    iput-object v3, v2, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    .line 652
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/bytecode/Scope;->freeLocals(Lgnu/bytecode/CodeAttr;)V

    .line 653
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->getLabel()Lgnu/bytecode/Label;

    move-result-object v3

    iput-object v3, v2, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    .line 654
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return-object v0
.end method

.method public final popType()Lgnu/bytecode/Type;
    .locals 8

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v2, v0

    iget v2, v2, Lgnu/bytecode/CodeAttr;->SP:I

    if-gtz v2, :cond_0

    .line 442
    new-instance v2, Ljava/lang/Error;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "popType called with empty stack "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 443
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lgnu/bytecode/CodeAttr;->SP:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput v5, v4, Lgnu/bytecode/CodeAttr;->SP:I

    aget-object v2, v2, v3

    move-object v1, v2

    .line 444
    .local v1, "type":Lgnu/bytecode/Type;
    move-object v2, v1

    iget v2, v2, Lgnu/bytecode/Type;->size:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 445
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 446
    new-instance v2, Ljava/lang/Error;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "missing void type on stack"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 447
    :cond_1
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return-object v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 10

    .prologue
    .line 2835
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "dst":Lgnu/bytecode/ClassTypeWriter;
    move-object v6, v1

    const-string/jumbo v7, "Attribute \""

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2836
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2837
    move-object v6, v1

    const-string/jumbo v7, "\", length:"

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2838
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->getLength()I

    move-result v7

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 2839
    move-object v6, v1

    const-string/jumbo v7, ", max_stack:"

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2840
    move-object v6, v1

    move-object v7, v0

    iget v7, v7, Lgnu/bytecode/CodeAttr;->max_stack:I

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 2841
    move-object v6, v1

    const-string/jumbo v7, ", max_locals:"

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2842
    move-object v6, v1

    move-object v7, v0

    iget v7, v7, Lgnu/bytecode/CodeAttr;->max_locals:I

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 2843
    move-object v6, v1

    const-string/jumbo v7, ", code_length:"

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2844
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->getCodeLength()I

    move-result v6

    move v2, v6

    .line 2845
    .local v2, "length":I
    move-object v6, v1

    move v7, v2

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 2846
    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x0

    move v9, v2

    invoke-virtual {v6, v7, v8, v9}, Lgnu/bytecode/CodeAttr;->disAssemble(Lgnu/bytecode/ClassTypeWriter;II)V

    .line 2847
    move-object v6, v0

    iget v6, v6, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    if-lez v6, :cond_1

    .line 2849
    move-object v6, v1

    const-string/jumbo v7, "Exceptions (count: "

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2850
    move-object v6, v1

    move-object v7, v0

    iget v7, v7, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 2851
    move-object v6, v1

    const-string/jumbo v7, "):"

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 2852
    move-object v6, v0

    iget v6, v6, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    move v3, v6

    .line 2853
    .local v3, "count":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    move v6, v3

    if-ltz v6, :cond_1

    .line 2855
    move-object v6, v1

    const-string/jumbo v7, "  start: "

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2856
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/CodeAttr;->exception_table:[S

    move v8, v4

    aget-short v7, v7, v8

    const v8, 0xffff

    and-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 2857
    move-object v6, v1

    const-string/jumbo v7, ", end: "

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2858
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/CodeAttr;->exception_table:[S

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aget-short v7, v7, v8

    const v8, 0xffff

    and-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 2859
    move-object v6, v1

    const-string/jumbo v7, ", handler: "

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2860
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/CodeAttr;->exception_table:[S

    move v8, v4

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    aget-short v7, v7, v8

    const v8, 0xffff

    and-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 2861
    move-object v6, v1

    const-string/jumbo v7, ", type: "

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2862
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/CodeAttr;->exception_table:[S

    move v7, v4

    const/4 v8, 0x3

    add-int/lit8 v7, v7, 0x3

    aget-short v6, v6, v7

    const v7, 0xffff

    and-int/2addr v6, v7

    move v5, v6

    .line 2863
    .local v5, "catch_type_index":I
    move v6, v5

    if-nez v6, :cond_0

    .line 2864
    move-object v6, v1

    const-string/jumbo v7, "0 /* finally */"

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2870
    :goto_1
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 2853
    add-int/lit8 v4, v4, 0x4

    goto :goto_0

    .line 2867
    :cond_0
    move-object v6, v1

    move v7, v5

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 2868
    move-object v6, v1

    move v7, v5

    const/4 v8, 0x7

    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    goto :goto_1

    .line 2873
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "catch_type_index":I
    :cond_1
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->printAttributes(Lgnu/bytecode/AttrContainer;)V

    .line 2874
    return-void
.end method

.method public processFixups()V
    .locals 27

    .prologue
    .line 2476
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/bytecode/CodeAttr;
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    move/from16 v21, v0

    if-gtz v21, :cond_0

    .line 2477
    .line 2776
    :goto_0
    return-void

    .line 2484
    :cond_0
    const/16 v21, 0x0

    move/from16 v3, v21

    .line 2485
    .local v3, "delta":I
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    move/from16 v21, v0

    move/from16 v4, v21

    .line 2486
    .local v4, "instruction_tail":I
    move-object/from16 v21, v2

    const/16 v22, 0x9

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v24}, Lgnu/bytecode/CodeAttr;->fixupAdd(IILgnu/bytecode/Label;)V

    .line 2489
    const/16 v21, 0x0

    move/from16 v5, v21

    .line 2491
    .local v5, "i":I
    :goto_1
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    move-object/from16 v21, v0

    move/from16 v22, v5

    aget v21, v21, v22

    move/from16 v6, v21

    .line 2492
    .local v6, "offset":I
    move/from16 v21, v6

    const/16 v22, 0xf

    and-int/lit8 v21, v21, 0xf

    move/from16 v7, v21

    .line 2493
    .local v7, "kind":I
    move/from16 v21, v6

    const/16 v22, 0x4

    shr-int/lit8 v21, v21, 0x4

    move/from16 v6, v21

    .line 2494
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move-object/from16 v21, v0

    move/from16 v22, v5

    aget-object v21, v21, v22

    move-object/from16 v8, v21

    .line 2495
    .local v8, "label":Lgnu/bytecode/Label;
    move/from16 v21, v7

    packed-switch v21, :pswitch_data_0

    .line 2550
    :pswitch_0
    new-instance v21, Ljava/lang/Error;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    const-string/jumbo v23, "unexpected fixup"

    invoke-direct/range {v22 .. v23}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v21

    .line 2498
    :pswitch_1
    add-int/lit8 v5, v5, 0x2

    .line 2552
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 2553
    goto :goto_1

    .line 2501
    :pswitch_2
    add-int/lit8 v5, v5, 0x1

    .line 2505
    :pswitch_3
    goto :goto_2

    .line 2507
    :pswitch_4
    move-object/from16 v21, v8

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move-object/from16 v0, v22

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v22, v0

    move/from16 v23, v3

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lgnu/bytecode/Label;->position:I

    .line 2508
    goto :goto_2

    .line 2510
    :pswitch_5
    add-int/lit8 v3, v3, 0x3

    .line 2511
    goto :goto_2

    .line 2514
    :pswitch_6
    move-object/from16 v21, v8

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/bytecode/Label;->first_fixup:I

    move/from16 v21, v0

    move/from16 v22, v5

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    move-object/from16 v21, v2

    move/from16 v22, v5

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    invoke-direct/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v21

    move/from16 v22, v6

    const/16 v23, 0x3

    add-int/lit8 v22, v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 2518
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    move-object/from16 v21, v0

    move/from16 v22, v5

    move/from16 v23, v6

    const/16 v24, 0x4

    shl-int/lit8 v23, v23, 0x4

    const/16 v24, 0x8

    or-int/lit8 v23, v23, 0x8

    aput v23, v21, v22

    .line 2519
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move-object/from16 v21, v0

    move/from16 v22, v5

    const/16 v23, 0x0

    aput-object v23, v21, v22

    .line 2520
    add-int/lit8 v3, v3, -0x3

    .line 2521
    goto :goto_2

    .line 2525
    :cond_2
    :pswitch_7
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/bytecode/CodeAttr;->PC:I

    move/from16 v21, v0

    const v22, 0x8000

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_1

    .line 2526
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_2

    .line 2529
    :pswitch_8
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/bytecode/CodeAttr;->PC:I

    move/from16 v21, v0

    const v22, 0x8000

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_1

    .line 2530
    add-int/lit8 v3, v3, 0x5

    goto/16 :goto_2

    .line 2533
    :pswitch_9
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move-object/from16 v21, v0

    move/from16 v22, v4

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move-object/from16 v23, v0

    move/from16 v24, v5

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    aget-object v23, v23, v24

    aput-object v23, v21, v22

    .line 2534
    move/from16 v21, v6

    move/from16 v4, v21

    .line 2537
    :pswitch_a
    move/from16 v21, v5

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_3

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/bytecode/CodeAttr;->PC:I

    move/from16 v21, v0

    :goto_3
    move/from16 v9, v21

    .line 2539
    .local v9, "cur_pc":I
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    move-object/from16 v21, v0

    move/from16 v22, v5

    move/from16 v23, v9

    const/16 v24, 0x4

    shl-int/lit8 v23, v23, 0x4

    const/16 v24, 0x9

    or-int/lit8 v23, v23, 0x9

    aput v23, v21, v22

    .line 2540
    move-object/from16 v21, v8

    if-nez v21, :cond_4

    .line 2541
    .line 2558
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/bytecode/CodeAttr;->PC:I

    move/from16 v21, v0

    move/from16 v5, v21

    .line 2560
    .local v5, "new_size":I
    const/16 v21, 0x0

    move/from16 v3, v21

    .line 2562
    const/16 v21, 0x0

    move/from16 v6, v21

    .end local v7    # "kind":I
    .end local v8    # "label":Lgnu/bytecode/Label;
    .end local v9    # "cur_pc":I
    .local v6, "i":I
    :goto_4
    move/from16 v21, v6

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    .line 2564
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    move-object/from16 v21, v0

    move/from16 v22, v6

    aget v21, v21, v22

    move/from16 v7, v21

    .line 2565
    .local v7, "offset":I
    move/from16 v21, v7

    const/16 v22, 0xf

    and-int/lit8 v21, v21, 0xf

    move/from16 v8, v21

    .line 2566
    .local v8, "kind":I
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move-object/from16 v21, v0

    move/from16 v22, v6

    aget-object v21, v21, v22

    move-object/from16 v9, v21

    .line 2567
    .local v9, "label":Lgnu/bytecode/Label;
    move-object/from16 v21, v9

    if-eqz v21, :cond_5

    move-object/from16 v21, v9

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v21, v0

    if-gez v21, :cond_5

    .line 2568
    new-instance v21, Ljava/lang/Error;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "undefined label "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v9

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v21

    .line 2537
    .end local v9    # "label":Lgnu/bytecode/Label;
    .local v5, "i":I
    .local v6, "offset":I
    .local v7, "kind":I
    .local v8, "label":Lgnu/bytecode/Label;
    :cond_3
    move-object/from16 v21, v2

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move-object/from16 v22, v0

    move/from16 v23, v5

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget v0, v0, Lgnu/bytecode/Label;->first_fixup:I

    move/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v21

    goto/16 :goto_3

    .line 2544
    .local v9, "cur_pc":I
    :cond_4
    move-object/from16 v21, v8

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/bytecode/Label;->first_fixup:I

    move/from16 v21, v0

    move/from16 v5, v21

    .line 2545
    move-object/from16 v21, v2

    move/from16 v22, v5

    invoke-direct/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v21

    move/from16 v10, v21

    .line 2546
    .local v10, "next_pc":I
    move/from16 v21, v9

    move/from16 v22, v3

    add-int v21, v21, v22

    move/from16 v22, v10

    sub-int v21, v21, v22

    move/from16 v3, v21

    .line 2547
    goto/16 :goto_1

    .line 2572
    .end local v10    # "next_pc":I
    .local v5, "new_size":I
    .local v6, "i":I
    .local v7, "offset":I
    .local v8, "kind":I
    .local v9, "label":Lgnu/bytecode/Label;
    :cond_5
    :goto_5
    move-object/from16 v21, v9

    if-eqz v21, :cond_6

    move/from16 v21, v8

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_6

    move/from16 v21, v8

    const/16 v22, 0x7

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_6

    move-object/from16 v21, v9

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/bytecode/Label;->first_fixup:I

    move/from16 v21, v0

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Lgnu/bytecode/Label;->first_fixup:I

    move/from16 v22, v0

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    aget v21, v21, v22

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    move-object/from16 v22, v0

    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget v0, v0, Lgnu/bytecode/Label;->first_fixup:I

    move/from16 v23, v0

    aget v22, v22, v23

    const/16 v23, 0xf

    and-int/lit8 v22, v22, 0xf

    const/16 v23, 0x4

    or-int/lit8 v22, v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 2578
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Lgnu/bytecode/Label;->first_fixup:I

    move/from16 v22, v0

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    aget-object v21, v21, v22

    move-object/from16 v9, v21

    .line 2579
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move-object/from16 v21, v0

    move/from16 v22, v6

    move-object/from16 v23, v9

    aput-object v23, v21, v22

    goto/16 :goto_5

    .line 2581
    :cond_6
    move/from16 v21, v7

    const/16 v22, 0x4

    shr-int/lit8 v21, v21, 0x4

    move/from16 v7, v21

    .line 2582
    move/from16 v21, v8

    packed-switch v21, :pswitch_data_1

    .line 2630
    :pswitch_b
    new-instance v21, Ljava/lang/Error;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    const-string/jumbo v23, "unexpected fixup"

    invoke-direct/range {v22 .. v23}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v21

    .line 2585
    :pswitch_c
    add-int/lit8 v6, v6, 0x2

    .line 2586
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move-object/from16 v21, v0

    move/from16 v22, v6

    aget-object v21, v21, v22

    move/from16 v22, v7

    move/from16 v23, v3

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lgnu/bytecode/Label;->position:I

    .line 2587
    .line 2632
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 2633
    goto/16 :goto_4

    .line 2589
    :pswitch_d
    add-int/lit8 v6, v6, 0x1

    .line 2592
    :pswitch_e
    goto :goto_6

    .line 2594
    :pswitch_f
    add-int/lit8 v3, v3, -0x3

    .line 2595
    add-int/lit8 v5, v5, -0x3

    .line 2596
    goto :goto_6

    .line 2598
    :pswitch_10
    move-object/from16 v21, v9

    move/from16 v22, v7

    move/from16 v23, v3

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lgnu/bytecode/Label;->position:I

    .line 2599
    goto :goto_6

    .line 2601
    :pswitch_11
    const/16 v21, 0x3

    move/from16 v22, v7

    move/from16 v23, v3

    add-int v22, v22, v23

    rsub-int/lit8 v21, v22, 0x3

    const/16 v22, 0x3

    and-int/lit8 v21, v21, 0x3

    move/from16 v10, v21

    .line 2602
    .local v10, "padding":I
    move/from16 v21, v3

    move/from16 v22, v10

    add-int v21, v21, v22

    move/from16 v3, v21

    .line 2603
    move/from16 v21, v5

    move/from16 v22, v10

    add-int v21, v21, v22

    move/from16 v5, v21

    .line 2604
    goto :goto_6

    .line 2608
    .end local v10    # "padding":I
    :pswitch_12
    move-object/from16 v21, v9

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v21, v0

    move/from16 v22, v7

    move/from16 v23, v3

    add-int v22, v22, v23

    sub-int v21, v21, v22

    move/from16 v11, v21

    .line 2609
    .local v11, "rel":I
    move/from16 v21, v11

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    move/from16 v22, v11

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 2611
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    move-object/from16 v21, v0

    move/from16 v22, v6

    move/from16 v23, v7

    const/16 v24, 0x4

    shl-int/lit8 v23, v23, 0x4

    const/16 v24, 0x7

    or-int/lit8 v23, v23, 0x7

    aput v23, v21, v22

    goto :goto_6

    .line 2615
    :cond_7
    move/from16 v21, v3

    move/from16 v22, v8

    const/16 v23, 0x6

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    const/16 v22, 0x5

    :goto_7
    add-int v21, v21, v22

    move/from16 v3, v21

    .line 2616
    move/from16 v21, v5

    move/from16 v22, v8

    const/16 v23, 0x6

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    const/16 v22, 0x5

    :goto_8
    add-int v21, v21, v22

    move/from16 v5, v21

    .line 2618
    goto/16 :goto_6

    .line 2615
    :cond_8
    const/16 v22, 0x2

    goto :goto_7

    .line 2616
    :cond_9
    const/16 v22, 0x2

    goto :goto_8

    .line 2620
    .end local v11    # "rel":I
    :pswitch_13
    move-object/from16 v21, v9

    if-nez v21, :cond_c

    .line 2621
    .line 2635
    .end local v7    # "offset":I
    .end local v8    # "kind":I
    .end local v9    # "label":Lgnu/bytecode/Label;
    :cond_a
    move/from16 v21, v5

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v21, v0

    move-object/from16 v6, v21

    .line 2636
    .local v6, "new_code":[B
    const/16 v21, -0x1

    move/from16 v7, v21

    .line 2637
    .local v7, "prev_linenumber":I
    const/16 v21, 0x0

    move/from16 v8, v21

    .line 2638
    .local v8, "new_pc":I
    const/16 v21, 0x0

    move/from16 v9, v21

    .line 2639
    .local v9, "next_fixup_index":I
    move-object/from16 v21, v2

    const/16 v22, 0x0

    invoke-direct/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v21

    move/from16 v10, v21

    .line 2640
    .local v10, "next_fixup_offset":I
    const/16 v21, -0x1

    move/from16 v11, v21

    .line 2641
    .local v11, "oldPC":I
    const/16 v21, 0x0

    move-object/from16 v12, v21

    .line 2643
    .local v12, "pendingStackMapLabel":Lgnu/bytecode/Label;
    const/16 v21, 0x0

    move/from16 v13, v21

    .line 2645
    .local v13, "old_pc":I
    :cond_b
    :goto_9
    move/from16 v21, v13

    move/from16 v22, v10

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_d

    .line 2646
    move-object/from16 v21, v6

    move/from16 v22, v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->code:[B

    move-object/from16 v23, v0

    move/from16 v24, v13

    add-int/lit8 v13, v13, 0x1

    aget-byte v23, v23, v24

    aput-byte v23, v21, v22

    goto :goto_9

    .line 2624
    .end local v10    # "next_fixup_offset":I
    .end local v11    # "oldPC":I
    .end local v12    # "pendingStackMapLabel":Lgnu/bytecode/Label;
    .end local v13    # "old_pc":I
    .local v6, "i":I
    .local v7, "offset":I
    .local v8, "kind":I
    .local v9, "label":Lgnu/bytecode/Label;
    :cond_c
    move-object/from16 v21, v9

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/bytecode/Label;->first_fixup:I

    move/from16 v21, v0

    move/from16 v6, v21

    .line 2625
    move-object/from16 v21, v2

    move/from16 v22, v6

    invoke-direct/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v21

    move/from16 v12, v21

    .line 2626
    .local v12, "next_pc":I
    move/from16 v21, v7

    move/from16 v22, v3

    add-int v21, v21, v22

    move/from16 v22, v12

    sub-int v21, v21, v22

    move/from16 v3, v21

    .line 2627
    goto/16 :goto_4

    .line 2649
    .local v6, "new_code":[B
    .local v7, "prev_linenumber":I
    .local v8, "new_pc":I
    .local v9, "next_fixup_index":I
    .restart local v10    # "next_fixup_offset":I
    .restart local v11    # "oldPC":I
    .local v12, "pendingStackMapLabel":Lgnu/bytecode/Label;
    .restart local v13    # "old_pc":I
    :cond_d
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    move-object/from16 v21, v0

    move/from16 v22, v9

    aget v21, v21, v22

    const/16 v22, 0xf

    and-int/lit8 v21, v21, 0xf

    move/from16 v14, v21

    .line 2650
    .local v14, "kind":I
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move-object/from16 v21, v0

    move/from16 v22, v9

    aget-object v21, v21, v22

    move-object/from16 v15, v21

    .line 2651
    .local v15, "label":Lgnu/bytecode/Label;
    move-object/from16 v21, v12

    if-eqz v21, :cond_e

    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v21, v0

    move/from16 v22, v8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_e

    .line 2654
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    move-object/from16 v21, v0

    move-object/from16 v22, v12

    move-object/from16 v23, v2

    invoke-virtual/range {v21 .. v23}, Lgnu/bytecode/StackMapTableAttr;->emitStackMapEntry(Lgnu/bytecode/Label;Lgnu/bytecode/CodeAttr;)V

    .line 2655
    const/16 v21, 0x0

    move-object/from16 v12, v21

    .line 2657
    :cond_e
    move-object/from16 v21, v12

    if-eqz v21, :cond_f

    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v21, v0

    move/from16 v22, v8

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_f

    .line 2659
    new-instance v21, Ljava/lang/Error;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    const-string/jumbo v23, "labels out of order"

    invoke-direct/range {v22 .. v23}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v21

    .line 2660
    :cond_f
    move/from16 v21, v14

    packed-switch v21, :pswitch_data_2

    .line 2763
    :pswitch_14
    new-instance v21, Ljava/lang/Error;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    const-string/jumbo v23, "unexpected fixup"

    invoke-direct/range {v22 .. v23}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v21

    .line 2663
    .line 2765
    :cond_10
    :goto_a
    :pswitch_15
    add-int/lit8 v9, v9, 0x1

    .line 2766
    move-object/from16 v21, v2

    move/from16 v22, v9

    invoke-direct/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v21

    move/from16 v10, v21

    .line 2767
    goto/16 :goto_9

    .line 2665
    :pswitch_16
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    move-object/from16 v21, v0

    if-eqz v21, :cond_10

    move-object/from16 v21, v15

    if-eqz v21, :cond_10

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    move-object/from16 v21, v0

    if-eqz v21, :cond_10

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lgnu/bytecode/Label;->needsStackMapEntry:Z

    move/from16 v21, v0

    if-eqz v21, :cond_10

    .line 2667
    move-object/from16 v21, v2

    move-object/from16 v22, v12

    move-object/from16 v23, v15

    invoke-direct/range {v21 .. v23}, Lgnu/bytecode/CodeAttr;->mergeLabels(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)Lgnu/bytecode/Label;

    move-result-object v21

    move-object/from16 v12, v21

    goto :goto_a

    .line 2672
    :pswitch_17
    add-int/lit8 v13, v13, 0x3

    .line 2673
    goto :goto_a

    .line 2675
    :pswitch_18
    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v21, v0

    move/from16 v22, v8

    sub-int v21, v21, v22

    move/from16 v3, v21

    .line 2676
    move-object/from16 v21, v6

    move/from16 v22, v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->code:[B

    move-object/from16 v23, v0

    move/from16 v24, v13

    aget-byte v23, v23, v24

    aput-byte v23, v21, v22

    .line 2677
    move-object/from16 v21, v6

    move/from16 v22, v8

    add-int/lit8 v8, v8, 0x1

    move/from16 v23, v3

    const/16 v24, 0x8

    shr-int/lit8 v23, v23, 0x8

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v21, v22

    .line 2678
    move-object/from16 v21, v6

    move/from16 v22, v8

    add-int/lit8 v8, v8, 0x1

    move/from16 v23, v3

    const/16 v24, 0xff

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v21, v22

    .line 2679
    add-int/lit8 v13, v13, 0x3

    .line 2680
    goto/16 :goto_a

    .line 2684
    :pswitch_19
    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v21, v0

    move/from16 v22, v8

    sub-int v21, v21, v22

    move/from16 v3, v21

    .line 2685
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->code:[B

    move-object/from16 v21, v0

    move/from16 v22, v13

    aget-byte v21, v21, v22

    move/from16 v16, v21

    .line 2686
    .local v16, "opcode":B
    move/from16 v21, v14

    const/16 v22, 0x6

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    .line 2689
    move-object/from16 v21, v2

    move/from16 v22, v16

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->invert_opcode(B)B

    move-result v21

    move/from16 v16, v21

    .line 2690
    move-object/from16 v21, v6

    move/from16 v22, v8

    add-int/lit8 v8, v8, 0x1

    move/from16 v23, v16

    aput-byte v23, v21, v22

    .line 2691
    move-object/from16 v21, v6

    move/from16 v22, v8

    add-int/lit8 v8, v8, 0x1

    const/16 v23, 0x0

    aput-byte v23, v21, v22

    .line 2692
    move-object/from16 v21, v6

    move/from16 v22, v8

    add-int/lit8 v8, v8, 0x1

    const/16 v23, 0x8

    aput-byte v23, v21, v22

    .line 2693
    const/16 v21, -0x38

    move/from16 v16, v21

    .line 2700
    :goto_b
    move-object/from16 v21, v6

    move/from16 v22, v8

    add-int/lit8 v8, v8, 0x1

    move/from16 v23, v16

    aput-byte v23, v21, v22

    .line 2701
    move-object/from16 v21, v6

    move/from16 v22, v8

    add-int/lit8 v8, v8, 0x1

    move/from16 v23, v3

    const/16 v24, 0x18

    shr-int/lit8 v23, v23, 0x18

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v21, v22

    .line 2702
    move-object/from16 v21, v6

    move/from16 v22, v8

    add-int/lit8 v8, v8, 0x1

    move/from16 v23, v3

    const/16 v24, 0x10

    shr-int/lit8 v23, v23, 0x10

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v21, v22

    .line 2703
    move-object/from16 v21, v6

    move/from16 v22, v8

    add-int/lit8 v8, v8, 0x1

    move/from16 v23, v3

    const/16 v24, 0x8

    shr-int/lit8 v23, v23, 0x8

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v21, v22

    .line 2704
    move-object/from16 v21, v6

    move/from16 v22, v8

    add-int/lit8 v8, v8, 0x1

    move/from16 v23, v3

    const/16 v24, 0xff

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v21, v22

    .line 2705
    add-int/lit8 v13, v13, 0x3

    .line 2706
    goto/16 :goto_a

    .line 2698
    :cond_11
    move/from16 v21, v16

    const/16 v22, 0x21

    add-int/lit8 v21, v21, 0x21

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    move/from16 v16, v21

    goto :goto_b

    .line 2708
    .end local v16    # "opcode":B
    :pswitch_1a
    const/16 v21, 0x3

    move/from16 v22, v8

    rsub-int/lit8 v21, v22, 0x3

    const/16 v22, 0x3

    and-int/lit8 v21, v21, 0x3

    move/from16 v17, v21

    .line 2709
    .local v17, "padding":I
    move/from16 v21, v8

    move/from16 v18, v21

    .line 2710
    .local v18, "switch_start":I
    move-object/from16 v21, v6

    move/from16 v22, v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->code:[B

    move-object/from16 v23, v0

    move/from16 v24, v13

    add-int/lit8 v13, v13, 0x1

    aget-byte v23, v23, v24

    aput-byte v23, v21, v22

    .line 2711
    :goto_c
    add-int/lit8 v17, v17, -0x1

    move/from16 v21, v17

    if-ltz v21, :cond_13

    .line 2712
    move-object/from16 v21, v6

    move/from16 v22, v8

    add-int/lit8 v8, v8, 0x1

    const/16 v23, 0x0

    aput-byte v23, v21, v22

    goto :goto_c

    .line 2720
    .local v19, "offset":I
    :cond_12
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move-object/from16 v21, v0

    move/from16 v22, v9

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v21, v0

    move/from16 v22, v18

    sub-int v21, v21, v22

    move/from16 v3, v21

    .line 2722
    move-object/from16 v21, v6

    move/from16 v22, v8

    add-int/lit8 v8, v8, 0x1

    move/from16 v23, v3

    const/16 v24, 0x18

    shr-int/lit8 v23, v23, 0x18

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v21, v22

    .line 2723
    move-object/from16 v21, v6

    move/from16 v22, v8

    add-int/lit8 v8, v8, 0x1

    move/from16 v23, v3

    const/16 v24, 0x10

    shr-int/lit8 v23, v23, 0x10

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v21, v22

    .line 2724
    move-object/from16 v21, v6

    move/from16 v22, v8

    add-int/lit8 v8, v8, 0x1

    move/from16 v23, v3

    const/16 v24, 0x8

    shr-int/lit8 v23, v23, 0x8

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v21, v22

    .line 2725
    move-object/from16 v21, v6

    move/from16 v22, v8

    add-int/lit8 v8, v8, 0x1

    move/from16 v23, v3

    const/16 v24, 0xff

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v21, v22

    .line 2726
    add-int/lit8 v13, v13, 0x4

    .line 2714
    .end local v19    # "offset":I
    :cond_13
    move/from16 v21, v9

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_10

    move-object/from16 v21, v2

    move/from16 v22, v9

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    invoke-direct/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->fixupKind(I)I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    .line 2716
    add-int/lit8 v9, v9, 0x1

    .line 2717
    move-object/from16 v21, v2

    move/from16 v22, v9

    invoke-direct/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v21

    move/from16 v19, v21

    .line 2718
    .restart local v19    # "offset":I
    :goto_d
    move/from16 v21, v13

    move/from16 v22, v19

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_12

    .line 2719
    move-object/from16 v21, v6

    move/from16 v22, v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->code:[B

    move-object/from16 v23, v0

    move/from16 v24, v13

    add-int/lit8 v13, v13, 0x1

    aget-byte v23, v23, v24

    aput-byte v23, v21, v22

    goto :goto_d

    .line 2730
    .end local v17    # "padding":I
    .end local v18    # "switch_start":I
    .end local v19    # "offset":I
    :pswitch_1b
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move-object/from16 v21, v0

    move/from16 v22, v9

    const/16 v23, 0x2

    add-int/lit8 v22, v22, 0x2

    aget-object v21, v21, v22

    move-object/from16 v15, v21

    .line 2731
    move-object/from16 v21, v2

    move/from16 v22, v9

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    invoke-direct/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v21

    move/from16 v19, v21

    .line 2732
    .local v19, "handler_type_index":I
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    move-object/from16 v21, v0

    if-eqz v21, :cond_14

    .line 2733
    move-object/from16 v21, v2

    move-object/from16 v22, v12

    move-object/from16 v23, v15

    invoke-direct/range {v21 .. v23}, Lgnu/bytecode/CodeAttr;->mergeLabels(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)Lgnu/bytecode/Label;

    move-result-object v21

    move-object/from16 v12, v21

    .line 2735
    :cond_14
    move-object/from16 v21, v2

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move-object/from16 v22, v0

    move/from16 v23, v9

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move-object/from16 v23, v0

    move/from16 v24, v9

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v23, v0

    move/from16 v24, v8

    move/from16 v25, v19

    invoke-virtual/range {v21 .. v25}, Lgnu/bytecode/CodeAttr;->addHandler(IIII)V

    .line 2739
    add-int/lit8 v9, v9, 0x2

    .line 2740
    goto/16 :goto_a

    .line 2742
    .end local v19    # "handler_type_index":I
    :pswitch_1c
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    move-object/from16 v21, v0

    if-nez v21, :cond_15

    .line 2743
    move-object/from16 v21, v2

    new-instance v22, Lgnu/bytecode/LineNumbersAttr;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    move-object/from16 v24, v2

    invoke-direct/range {v23 .. v24}, Lgnu/bytecode/LineNumbersAttr;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    .line 2744
    :cond_15
    add-int/lit8 v9, v9, 0x1

    .line 2745
    move-object/from16 v21, v2

    move/from16 v22, v9

    invoke-direct/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v21

    move/from16 v20, v21

    .line 2746
    .local v20, "linenumber":I
    move/from16 v21, v20

    move/from16 v22, v7

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_16

    .line 2747
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    move-object/from16 v21, v0

    move/from16 v22, v20

    move/from16 v23, v8

    invoke-virtual/range {v21 .. v23}, Lgnu/bytecode/LineNumbersAttr;->put(II)V

    .line 2748
    :cond_16
    move/from16 v21, v20

    move/from16 v7, v21

    .line 2749
    goto/16 :goto_a

    .line 2751
    .end local v20    # "linenumber":I
    :pswitch_1d
    move-object/from16 v21, v15

    if-nez v21, :cond_17

    .line 2752
    .line 2769
    move/from16 v21, v5

    move/from16 v22, v8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_18

    .line 2770
    new-instance v21, Ljava/lang/Error;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "PC confusion new_pc:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move/from16 v24, v8

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " new_size:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move/from16 v24, v5

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v21

    .line 2755
    :cond_17
    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/bytecode/Label;->first_fixup:I

    move/from16 v21, v0

    move/from16 v9, v21

    .line 2756
    move-object/from16 v21, v2

    move/from16 v22, v9

    invoke-direct/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v21

    move/from16 v13, v21

    .line 2757
    move/from16 v21, v13

    move/from16 v10, v21

    .line 2758
    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v21, v0

    move/from16 v22, v8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    .line 2759
    new-instance v21, Ljava/lang/Error;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    const-string/jumbo v23, "bad pc"

    invoke-direct/range {v22 .. v23}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v21

    .line 2771
    :cond_18
    move-object/from16 v21, v2

    move/from16 v22, v5

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lgnu/bytecode/CodeAttr;->PC:I

    .line 2772
    move-object/from16 v21, v2

    move-object/from16 v22, v6

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lgnu/bytecode/CodeAttr;->code:[B

    .line 2773
    move-object/from16 v21, v2

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lgnu/bytecode/CodeAttr;->fixup_count:I

    .line 2774
    move-object/from16 v21, v2

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    .line 2775
    move-object/from16 v21, v2

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    .line 2776
    goto/16 :goto_0

    .line 2495
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_3
        :pswitch_a
        :pswitch_9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 2582
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_e
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_d
    .end packed-switch

    .line 2660
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_15
        :pswitch_16
        :pswitch_1a
        :pswitch_14
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_1d
        :pswitch_14
        :pswitch_1b
        :pswitch_14
        :pswitch_14
        :pswitch_1c
    .end packed-switch
.end method

.method public pushScope()Lgnu/bytecode/Scope;
    .locals 7

    .prologue
    .line 635
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    new-instance v2, Lgnu/bytecode/Scope;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lgnu/bytecode/Scope;-><init>()V

    move-object v1, v2

    .line 636
    .local v1, "scope":Lgnu/bytecode/Scope;
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    if-nez v2, :cond_0

    .line 637
    move-object v2, v0

    new-instance v3, Lgnu/bytecode/LocalVarsAttr;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v5

    invoke-direct {v4, v5}, Lgnu/bytecode/LocalVarsAttr;-><init>(Lgnu/bytecode/Method;)V

    iput-object v3, v2, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    .line 638
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->enterScope(Lgnu/bytecode/Scope;)V

    .line 639
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v2, v2, Lgnu/bytecode/LocalVarsAttr;->parameter_scope:Lgnu/bytecode/Scope;

    if-nez v2, :cond_1

    .line 640
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/LocalVarsAttr;->parameter_scope:Lgnu/bytecode/Scope;

    .line 641
    :cond_1
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return-object v0
.end method

.method public final pushType(Lgnu/bytecode/Type;)V
    .locals 10

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move-object v3, v1

    iget v3, v3, Lgnu/bytecode/Type;->size:I

    if-nez v3, :cond_0

    .line 424
    new-instance v3, Ljava/lang/Error;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "pushing void type onto stack"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 425
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    array-length v3, v3

    if-nez v3, :cond_5

    .line 426
    :cond_1
    move-object v3, v0

    const/16 v4, 0x14

    new-array v4, v4, [Lgnu/bytecode/Type;

    iput-object v4, v3, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    .line 432
    :cond_2
    :goto_0
    move-object v3, v1

    iget v3, v3, Lgnu/bytecode/Type;->size:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 433
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lgnu/bytecode/CodeAttr;->SP:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lgnu/bytecode/CodeAttr;->SP:I

    sget-object v5, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    aput-object v5, v3, v4

    .line 434
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lgnu/bytecode/CodeAttr;->SP:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lgnu/bytecode/CodeAttr;->SP:I

    move-object v5, v1

    aput-object v5, v3, v4

    .line 435
    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/CodeAttr;->SP:I

    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/CodeAttr;->max_stack:I

    if-le v3, v4, :cond_4

    .line 436
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/CodeAttr;->SP:I

    iput v4, v3, Lgnu/bytecode/CodeAttr;->max_stack:I

    .line 437
    :cond_4
    return-void

    .line 427
    :cond_5
    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/CodeAttr;->SP:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 428
    const/4 v3, 0x2

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    array-length v4, v4

    mul-int/2addr v3, v4

    new-array v3, v3, [Lgnu/bytecode/Type;

    move-object v2, v3

    .line 429
    .local v2, "new_array":[Lgnu/bytecode/Type;
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lgnu/bytecode/CodeAttr;->SP:I

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    goto :goto_0
.end method

.method public final put1(I)V
    .locals 9

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->code:[B

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/bytecode/CodeAttr;->PC:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/bytecode/CodeAttr;->PC:I

    move v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 271
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lgnu/bytecode/CodeAttr;->unreachable_here:Z

    .line 272
    return-void
.end method

.method public final put2(I)V
    .locals 9

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->code:[B

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/bytecode/CodeAttr;->PC:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/bytecode/CodeAttr;->PC:I

    move v4, v1

    const/16 v5, 0x8

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 281
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->code:[B

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/bytecode/CodeAttr;->PC:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/bytecode/CodeAttr;->PC:I

    move v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 282
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lgnu/bytecode/CodeAttr;->unreachable_here:Z

    .line 283
    return-void
.end method

.method public final put4(I)V
    .locals 9

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->code:[B

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/bytecode/CodeAttr;->PC:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/bytecode/CodeAttr;->PC:I

    move v4, v1

    const/16 v5, 0x18

    shr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 292
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->code:[B

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/bytecode/CodeAttr;->PC:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/bytecode/CodeAttr;->PC:I

    move v4, v1

    const/16 v5, 0x10

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 293
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->code:[B

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/bytecode/CodeAttr;->PC:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/bytecode/CodeAttr;->PC:I

    move v4, v1

    const/16 v5, 0x8

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 295
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->code:[B

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/bytecode/CodeAttr;->PC:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/bytecode/CodeAttr;->PC:I

    move v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 296
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lgnu/bytecode/CodeAttr;->unreachable_here:Z

    .line 297
    return-void
.end method

.method public final putIndex2(Lgnu/bytecode/CpoolEntry;)V
    .locals 4

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "cnst":Lgnu/bytecode/CpoolEntry;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lgnu/bytecode/CpoolEntry;->index:I

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->put2(I)V

    .line 302
    return-void
.end method

.method public final putLineNumber(I)V
    .locals 6

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "linenumber":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    if-eqz v2, :cond_0

    .line 314
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CodeAttr;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/SourceDebugExtAttr;->fixLine(I)I

    move-result v2

    move v1, v2

    .line 315
    :cond_0
    move-object v2, v0

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 316
    move-object v2, v0

    const/16 v3, 0xf

    move v4, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lgnu/bytecode/CodeAttr;->fixupAdd(IILgnu/bytecode/Label;)V

    .line 317
    return-void
.end method

.method public final putLineNumber(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "filename":Ljava/lang/String;
    move v2, p2

    .local v2, "linenumber":I
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 307
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v3

    iget-object v3, v3, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassType;->setSourceFile(Ljava/lang/String;)V

    .line 308
    :cond_0
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->putLineNumber(I)V

    .line 309
    return-void
.end method

.method public final reachableHere()Z
    .locals 2

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    iget-boolean v1, v1, Lgnu/bytecode/CodeAttr;->unreachable_here:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return v0

    .restart local v0    # "this":Lgnu/bytecode/CodeAttr;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final reserve(I)V
    .locals 8

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "bytes":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->code:[B

    if-nez v3, :cond_1

    .line 245
    move-object v3, v0

    const/16 v4, 0x64

    move v5, v1

    add-int/2addr v4, v5

    new-array v4, v4, [B

    iput-object v4, v3, Lgnu/bytecode/CodeAttr;->code:[B

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/CodeAttr;->PC:I

    move v4, v1

    add-int/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->code:[B

    array-length v4, v4

    if-le v3, v4, :cond_0

    .line 248
    const/4 v3, 0x2

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->code:[B

    array-length v4, v4

    mul-int/2addr v3, v4

    move v4, v1

    add-int/2addr v3, v4

    new-array v3, v3, [B

    move-object v2, v3

    .line 249
    .local v2, "new_code":[B
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->code:[B

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lgnu/bytecode/CodeAttr;->PC:I

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/bytecode/CodeAttr;->code:[B

    goto :goto_0
.end method

.method public final setAttributes(Lgnu/bytecode/Attribute;)V
    .locals 4

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "attributes":Lgnu/bytecode/Attribute;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/CodeAttr;->attributes:Lgnu/bytecode/Attribute;

    return-void
.end method

.method public setCode([B)V
    .locals 4

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "code":[B
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/CodeAttr;->code:[B

    move-object v2, v0

    move-object v3, v1

    array-length v3, v3

    iput v3, v2, Lgnu/bytecode/CodeAttr;->PC:I

    return-void
.end method

.method public setCodeLength(I)V
    .locals 4

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "len":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/bytecode/CodeAttr;->PC:I

    return-void
.end method

.method public setMaxLocals(I)V
    .locals 4

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "n":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/bytecode/CodeAttr;->max_locals:I

    return-void
.end method

.method public setMaxStack(I)V
    .locals 4

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "n":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/bytecode/CodeAttr;->max_stack:I

    return-void
.end method

.method public final setReachable(Z)V
    .locals 4

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move v1, p1

    .local v1, "val":Z
    move-object v2, v0

    move v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Lgnu/bytecode/CodeAttr;->unreachable_here:Z

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final setTypes(Lgnu/bytecode/Label;)V
    .locals 5

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "label":Lgnu/bytecode/Label;
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->setTypes([Lgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    .line 396
    return-void
.end method

.method public final setTypes([Lgnu/bytecode/Type;[Lgnu/bytecode/Type;)V
    .locals 11

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "labelLocals":[Lgnu/bytecode/Type;
    move-object v2, p2

    .local v2, "labelStack":[Lgnu/bytecode/Type;
    move-object v6, v2

    array-length v6, v6

    move v3, v6

    .line 402
    .local v3, "usedStack":I
    move-object v6, v1

    array-length v6, v6

    move v4, v6

    .line 403
    .local v4, "usedLocals":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    if-eqz v6, :cond_1

    .line 405
    move v6, v4

    if-lez v6, :cond_0

    .line 406
    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    const/4 v9, 0x0

    move v10, v4

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    :cond_0
    move v6, v4

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 408
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    move v7, v5

    const/4 v8, 0x0

    aput-object v8, v6, v7

    .line 407
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 410
    .end local v5    # "i":I
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    if-eqz v6, :cond_2

    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    array-length v7, v7

    if-le v6, v7, :cond_4

    .line 411
    :cond_2
    move-object v6, v0

    move v7, v3

    new-array v7, v7, [Lgnu/bytecode/Type;

    iput-object v7, v6, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    .line 417
    :cond_3
    move-object v6, v2

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    const/4 v9, 0x0

    move v10, v3

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lgnu/bytecode/CodeAttr;->SP:I

    .line 419
    return-void

    .line 414
    :cond_4
    move v6, v3

    move v5, v6

    .restart local v5    # "i":I
    :goto_1
    move v6, v5

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    array-length v7, v7

    if-ge v6, v7, :cond_3

    .line 415
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    move v7, v5

    const/4 v8, 0x0

    aput-object v8, v6, v7

    .line 414
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public final setUnreachable()V
    .locals 3

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lgnu/bytecode/CodeAttr;->unreachable_here:Z

    return-void
.end method

.method public startExitableBlock(Lgnu/bytecode/Type;Z)Lgnu/bytecode/ExitableBlock;
    .locals 10

    .prologue
    .line 1598
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "resultType":Lgnu/bytecode/Type;
    move v2, p2

    .local v2, "runFinallyBlocks":Z
    new-instance v4, Lgnu/bytecode/ExitableBlock;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v0

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Lgnu/bytecode/ExitableBlock;-><init>(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;Z)V

    move-object v3, v4

    .line 1599
    .local v3, "bl":Lgnu/bytecode/ExitableBlock;
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->currentExitableBlock:Lgnu/bytecode/ExitableBlock;

    iput-object v5, v4, Lgnu/bytecode/ExitableBlock;->outer:Lgnu/bytecode/ExitableBlock;

    .line 1600
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/bytecode/CodeAttr;->currentExitableBlock:Lgnu/bytecode/ExitableBlock;

    .line 1601
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return-object v0
.end method

.method public startSwitch()Lgnu/bytecode/SwitchState;
    .locals 6

    .prologue
    .line 2449
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    new-instance v2, Lgnu/bytecode/SwitchState;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lgnu/bytecode/SwitchState;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object v1, v2

    .line 2450
    .local v1, "sw":Lgnu/bytecode/SwitchState;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/bytecode/SwitchState;->switchValuePushed(Lgnu/bytecode/CodeAttr;)V

    .line 2451
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return-object v0
.end method

.method public final topType()Lgnu/bytecode/Type;
    .locals 4

    .prologue
    .line 452
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    move-object v2, v0

    iget v2, v2, Lgnu/bytecode/CodeAttr;->SP:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return-object v0
.end method

.method useJsr()Z
    .locals 3

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/CodeAttr;->flags:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/CodeAttr;
    return v0

    .restart local v0    # "this":Lgnu/bytecode/CodeAttr;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2815
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CodeAttr;
    move-object v1, p1

    .local v1, "dstr":Ljava/io/DataOutputStream;
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/bytecode/CodeAttr;->max_stack:I

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2816
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/bytecode/CodeAttr;->max_locals:I

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2817
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/bytecode/CodeAttr;->PC:I

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2818
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->code:[B

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lgnu/bytecode/CodeAttr;->PC:I

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 2820
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2821
    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    move v2, v4

    .line 2822
    .local v2, "count":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    move v4, v2

    if-ltz v4, :cond_0

    .line 2824
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->exception_table:[S

    move v6, v3

    aget-short v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2825
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->exception_table:[S

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-short v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2826
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->exception_table:[S

    move v6, v3

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    aget-short v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2827
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CodeAttr;->exception_table:[S

    move v6, v3

    const/4 v7, 0x3

    add-int/lit8 v6, v6, 0x3

    aget-short v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2822
    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    .line 2830
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lgnu/bytecode/Attribute;->writeAll(Lgnu/bytecode/AttrContainer;Ljava/io/DataOutputStream;)V

    .line 2831
    return-void
.end method
