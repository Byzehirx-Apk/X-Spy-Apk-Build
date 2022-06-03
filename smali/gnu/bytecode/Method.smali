.class public Lgnu/bytecode/Method;
.super Ljava/lang/Object;
.source "Method.java"

# interfaces
.implements Lgnu/bytecode/AttrContainer;
.implements Lgnu/bytecode/Member;


# instance fields
.field access_flags:I

.field arg_types:[Lgnu/bytecode/Type;

.field attributes:Lgnu/bytecode/Attribute;

.field classfile:Lgnu/bytecode/ClassType;

.field code:Lgnu/bytecode/CodeAttr;

.field exceptions:Lgnu/bytecode/ExceptionsAttr;

.field private name:Ljava/lang/String;

.field name_index:I

.field next:Lgnu/bytecode/Method;

.field return_type:Lgnu/bytecode/Type;

.field signature:Ljava/lang/String;

.field signature_index:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method constructor <init>(Lgnu/bytecode/ClassType;I)V
    .locals 7

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, p1

    .local v1, "clfile":Lgnu/bytecode/ClassType;
    move v2, p2

    .local v2, "flags":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 87
    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/ClassType;->last_method:Lgnu/bytecode/Method;

    if-nez v3, :cond_0

    .line 88
    move-object v3, v1

    move-object v4, v0

    iput-object v4, v3, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    .line 91
    :goto_0
    move-object v3, v1

    move-object v4, v0

    iput-object v4, v3, Lgnu/bytecode/ClassType;->last_method:Lgnu/bytecode/Method;

    .line 92
    move-object v3, v1

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lgnu/bytecode/ClassType;->methods_count:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lgnu/bytecode/ClassType;->methods_count:I

    .line 93
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lgnu/bytecode/Method;->access_flags:I

    .line 94
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    .line 95
    return-void

    .line 90
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/ClassType;->last_method:Lgnu/bytecode/Method;

    move-object v4, v0

    iput-object v4, v3, Lgnu/bytecode/Method;->next:Lgnu/bytecode/Method;

    goto :goto_0
.end method

.method public constructor <init>(Lgnu/bytecode/Method;Lgnu/bytecode/ClassType;)V
    .locals 5

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, p1

    .local v1, "base":Lgnu/bytecode/Method;
    move-object v2, p2

    .local v2, "clas":Lgnu/bytecode/ClassType;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 78
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    iput-object v4, v3, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    .line 79
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;

    iput-object v4, v3, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;

    .line 80
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/Method;->name:Ljava/lang/String;

    iput-object v4, v3, Lgnu/bytecode/Method;->name:Ljava/lang/String;

    .line 81
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lgnu/bytecode/Method;->access_flags:I

    iput v4, v3, Lgnu/bytecode/Method;->access_flags:I

    .line 82
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    .line 83
    return-void
.end method

.method public static makeCloneMethod(Lgnu/bytecode/Type;)Lgnu/bytecode/Method;
    .locals 5

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "returnType":Lgnu/bytecode/Type;
    new-instance v2, Lgnu/bytecode/Method;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lgnu/bytecode/Method;-><init>()V

    move-object v1, v2

    .line 64
    .local v1, "method":Lgnu/bytecode/Method;
    move-object v2, v1

    const-string/jumbo v3, "clone"

    iput-object v3, v2, Lgnu/bytecode/Method;->name:Ljava/lang/String;

    .line 65
    move-object v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lgnu/bytecode/Method;->access_flags:I

    .line 66
    move-object v2, v1

    sget-object v3, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    iput-object v3, v2, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    .line 67
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;

    .line 68
    move-object v2, v1

    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    iput-object v3, v2, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    .line 69
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "returnType":Lgnu/bytecode/Type;
    return-object v0
.end method

.method public static makeSignature([Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "arg_types":[Lgnu/bytecode/Type;
    move-object v1, p1

    .local v1, "return_type":Lgnu/bytecode/Type;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/16 v7, 0x64

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v5

    .line 253
    .local v2, "buf":Ljava/lang/StringBuilder;
    move-object v5, v0

    array-length v5, v5

    move v3, v5

    .line 254
    .local v3, "args_count":I
    move-object v5, v2

    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 255
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 256
    move-object v5, v2

    move-object v6, v0

    move v7, v4

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 255
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 257
    :cond_0
    move-object v5, v2

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 258
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 259
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "arg_types":[Lgnu/bytecode/Type;
    return-object v0
.end method


# virtual methods
.method public allocate_local(Lgnu/bytecode/Variable;)V
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, p1

    .local v1, "local":Lgnu/bytecode/Variable;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v2, v3}, Lgnu/bytecode/Variable;->allocateLocal(Lgnu/bytecode/CodeAttr;)V

    .line 146
    return-void
.end method

.method assignConstants()V
    .locals 5

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/Method;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v2

    move-object v1, v2

    .line 312
    .local v1, "constants":Lgnu/bytecode/ConstantPool;
    move-object v2, v0

    iget v2, v2, Lgnu/bytecode/Method;->name_index:I

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/Method;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 313
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/Method;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v3

    iget v3, v3, Lgnu/bytecode/CpoolUtf8;->index:I

    iput v3, v2, Lgnu/bytecode/Method;->name_index:I

    .line 314
    :cond_0
    move-object v2, v0

    iget v2, v2, Lgnu/bytecode/Method;->signature_index:I

    if-nez v2, :cond_1

    .line 315
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/Method;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v3

    iget v3, v3, Lgnu/bytecode/CpoolUtf8;->index:I

    iput v3, v2, Lgnu/bytecode/Method;->signature_index:I

    .line 316
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    invoke-static {v2, v3}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/AttrContainer;Lgnu/bytecode/ClassType;)V

    .line 317
    return-void
.end method

.method public cleanupAfterCompilation()V
    .locals 3

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/bytecode/Method;->attributes:Lgnu/bytecode/Attribute;

    .line 389
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/bytecode/Method;->exceptions:Lgnu/bytecode/ExceptionsAttr;

    .line 390
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    .line 391
    return-void
.end method

.method public compile_checkcast(Lgnu/bytecode/Type;)V
    .locals 4

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 203
    return-void
.end method

.method public compile_push_this()V
    .locals 2

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 234
    return-void
.end method

.method public compile_push_value(Lgnu/bytecode/Variable;)V
    .locals 4

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, p1

    .local v1, "var":Lgnu/bytecode/Variable;
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    return-void
.end method

.method public compile_store_value(Lgnu/bytecode/Variable;)V
    .locals 4

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, p1

    .local v1, "var":Lgnu/bytecode/Variable;
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 229
    return-void
.end method

.method public final getAttributes()Lgnu/bytecode/Attribute;
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Method;->attributes:Lgnu/bytecode/Attribute;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Method;
    return-object v0
.end method

.method public final getCode()Lgnu/bytecode/CodeAttr;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Method;
    return-object v0
.end method

.method public final getConstants()Lgnu/bytecode/ConstantPool;
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    iget-object v1, v1, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Method;
    return-object v0
.end method

.method public getDeclaringClass()Lgnu/bytecode/ClassType;
    .locals 2

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Method;
    return-object v0
.end method

.method public final getExceptionAttr()Lgnu/bytecode/ExceptionsAttr;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Method;->exceptions:Lgnu/bytecode/ExceptionsAttr;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Method;
    return-object v0
.end method

.method public final getExceptions()[Lgnu/bytecode/ClassType;
    .locals 2

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Method;->exceptions:Lgnu/bytecode/ExceptionsAttr;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move-object v0, v1

    .line 328
    .end local v0    # "this":Lgnu/bytecode/Method;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/bytecode/Method;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Method;->exceptions:Lgnu/bytecode/ExceptionsAttr;

    invoke-virtual {v1}, Lgnu/bytecode/ExceptionsAttr;->getExceptions()[Lgnu/bytecode/ClassType;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getModifiers()I
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/Method;->access_flags:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/Method;
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Method;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Method;
    return-object v0
.end method

.method public final getNext()Lgnu/bytecode/Method;
    .locals 2

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Method;->next:Lgnu/bytecode/Method;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Method;
    return-object v0
.end method

.method public final getParameterTypes()[Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Method;
    return-object v0
.end method

.method public final getReturnType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Method;
    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 4

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Method;->signature:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 267
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;

    invoke-static {v2, v3}, Lgnu/bytecode/Method;->makeSignature([Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lgnu/bytecode/Method;->signature:Ljava/lang/String;

    .line 268
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Method;->signature:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Method;
    return-object v0
.end method

.method public final getStaticFlag()Z
    .locals 3

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/Method;->access_flags:I

    const/16 v2, 0x8

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/Method;
    return v0

    .restart local v0    # "this":Lgnu/bytecode/Method;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initCode()V
    .locals 5

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    iget-object v1, v1, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    if-nez v1, :cond_0

    .line 153
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    new-instance v2, Lgnu/bytecode/ConstantPool;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lgnu/bytecode/ConstantPool;-><init>()V

    iput-object v2, v1, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 154
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgnu/bytecode/Method;->prepareCode(I)V

    .line 155
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    iget-object v2, v2, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    iput-object v2, v1, Lgnu/bytecode/CodeAttr;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    .line 156
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->noteParamTypes()V

    .line 157
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v1

    .line 158
    return-void
.end method

.method public init_param_slots()V
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 166
    return-void
.end method

.method instruction_start_hook(I)V
    .locals 4

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move v1, p1

    .local v1, "max_size":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/Method;->prepareCode(I)V

    .line 195
    return-void
.end method

.method public final isAbstract()Z
    .locals 3

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/Method;->access_flags:I

    const/16 v2, 0x400

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/Method;
    return v0

    .restart local v0    # "this":Lgnu/bytecode/Method;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method kill_local(Lgnu/bytecode/Variable;)V
    .locals 4

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, p1

    .local v1, "var":Lgnu/bytecode/Variable;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v2, v3}, Lgnu/bytecode/Variable;->freeLocal(Lgnu/bytecode/CodeAttr;)V

    return-void
.end method

.method public listParameters(Ljava/lang/StringBuffer;)V
    .locals 7

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, p1

    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    array-length v4, v4

    move v2, v4

    .line 362
    .local v2, "args_count":I
    move-object v4, v1

    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 363
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 365
    move v4, v3

    if-lez v4, :cond_0

    .line 366
    move-object v4, v1

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 367
    :cond_0
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    move v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 363
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 369
    :cond_1
    move-object v4, v1

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 370
    return-void
.end method

.method public maybe_compile_checkcast(Lgnu/bytecode/Type;)V
    .locals 5

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->topType()Lgnu/bytecode/Type;

    move-result-object v3

    move-object v2, v3

    .line 208
    .local v2, "stack_type":Lgnu/bytecode/Type;
    move-object v3, v1

    move-object v4, v2

    if-eq v3, v4, :cond_0

    .line 209
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 210
    :cond_0
    return-void
.end method

.method public popScope()Lgnu/bytecode/Scope;
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Method;
    return-object v0
.end method

.method final pop_stack_type()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Method;
    return-object v0
.end method

.method prepareCode(I)V
    .locals 7

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move v1, p1

    .local v1, "max_size":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    if-nez v2, :cond_0

    .line 184
    move-object v2, v0

    new-instance v3, Lgnu/bytecode/CodeAttr;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lgnu/bytecode/CodeAttr;-><init>(Lgnu/bytecode/Method;)V

    iput-object v3, v2, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    .line 185
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 186
    return-void
.end method

.method public pushScope()Lgnu/bytecode/Scope;
    .locals 3

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgnu/bytecode/Method;->prepareCode(I)V

    .line 130
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Method;
    return-object v0
.end method

.method final push_stack_type(Lgnu/bytecode/Type;)V
    .locals 4

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    return-void
.end method

.method public push_var(Lgnu/bytecode/Variable;)V
    .locals 4

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, p1

    .local v1, "var":Lgnu/bytecode/Variable;
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    return-void
.end method

.method public final reachableHere()Z
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/Method;
    return v0
.end method

.method public final setAttributes(Lgnu/bytecode/Attribute;)V
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, p1

    .local v1, "attributes":Lgnu/bytecode/Attribute;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/Method;->attributes:Lgnu/bytecode/Attribute;

    return-void
.end method

.method public setExceptions([Lgnu/bytecode/ClassType;)V
    .locals 7

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, p1

    .local v1, "exn_types":[Lgnu/bytecode/ClassType;
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/Method;->exceptions:Lgnu/bytecode/ExceptionsAttr;

    if-nez v2, :cond_0

    .line 47
    move-object v2, v0

    new-instance v3, Lgnu/bytecode/ExceptionsAttr;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lgnu/bytecode/ExceptionsAttr;-><init>(Lgnu/bytecode/Method;)V

    iput-object v3, v2, Lgnu/bytecode/Method;->exceptions:Lgnu/bytecode/ExceptionsAttr;

    .line 48
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/Method;->exceptions:Lgnu/bytecode/ExceptionsAttr;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/ExceptionsAttr;->setExceptions([Lgnu/bytecode/ClassType;)V

    .line 49
    return-void
.end method

.method public setExceptions([S)V
    .locals 7

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, p1

    .local v1, "exn_indices":[S
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/Method;->exceptions:Lgnu/bytecode/ExceptionsAttr;

    if-nez v2, :cond_0

    .line 40
    move-object v2, v0

    new-instance v3, Lgnu/bytecode/ExceptionsAttr;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lgnu/bytecode/ExceptionsAttr;-><init>(Lgnu/bytecode/Method;)V

    iput-object v3, v2, Lgnu/bytecode/Method;->exceptions:Lgnu/bytecode/ExceptionsAttr;

    .line 41
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/Method;->exceptions:Lgnu/bytecode/ExceptionsAttr;

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/ExceptionsAttr;->setExceptions([SLgnu/bytecode/ClassType;)V

    .line 42
    return-void
.end method

.method public setModifiers(I)V
    .locals 4

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move v1, p1

    .local v1, "modifiers":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/bytecode/Method;->access_flags:I

    .line 121
    return-void
.end method

.method public final setName(I)V
    .locals 6

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move v1, p1

    .local v1, "name_index":I
    move v3, v1

    if-gtz v3, :cond_0

    .line 344
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lgnu/bytecode/Method;->name:Ljava/lang/String;

    .line 351
    :goto_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lgnu/bytecode/Method;->name_index:I

    .line 352
    return-void

    .line 347
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/Method;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v3

    move v4, v1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/CpoolUtf8;

    move-object v2, v3

    .line 349
    .local v2, "nameConstant":Lgnu/bytecode/CpoolUtf8;
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    iput-object v4, v3, Lgnu/bytecode/Method;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/Method;->name:Ljava/lang/String;

    .line 339
    return-void
.end method

.method public setSignature(I)V
    .locals 6

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move v1, p1

    .local v1, "signature_index":I
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/Method;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v3

    move v4, v1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/CpoolUtf8;

    move-object v2, v3

    .line 305
    .local v2, "sigConstant":Lgnu/bytecode/CpoolUtf8;
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lgnu/bytecode/Method;->signature_index:I

    .line 306
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lgnu/bytecode/Method;->setSignature(Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, p1

    .local v1, "signature":Ljava/lang/String;
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v2, v7

    .line 274
    .local v2, "len":I
    move v7, v2

    const/4 v8, 0x3

    if-lt v7, v8, :cond_0

    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x28

    if-eq v7, v8, :cond_1

    .line 275
    :cond_0
    new-instance v7, Ljava/lang/ClassFormatError;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "bad method signature"

    invoke-direct {v8, v9}, Ljava/lang/ClassFormatError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 276
    :cond_1
    const/4 v7, 0x1

    move v3, v7

    .line 278
    .local v3, "pos":I
    new-instance v7, Ljava/util/Stack;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/util/Stack;-><init>()V

    move-object v4, v7

    .line 284
    .local v4, "types":Ljava/util/Stack;, "Ljava/util/Stack<Lgnu/bytecode/Type;>;"
    :goto_0
    move-object v7, v1

    move v8, v3

    invoke-static {v7, v8}, Lgnu/bytecode/Type;->signatureLength(Ljava/lang/String;I)I

    move-result v7

    move v5, v7

    .line 285
    .local v5, "arg_sig_len":I
    move v7, v5

    if-gez v7, :cond_3

    .line 287
    move v7, v3

    move v8, v2

    if-ge v7, v8, :cond_2

    move-object v7, v1

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x29

    if-ne v7, v8, :cond_2

    .line 288
    .line 295
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v8}, Ljava/util/Stack;->size()I

    move-result v8

    new-array v8, v8, [Lgnu/bytecode/Type;

    iput-object v8, v7, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    .line 296
    move-object v7, v4

    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v7

    move v5, v7

    .local v5, "i":I
    :goto_1
    add-int/lit8 v5, v5, -0x1

    move v7, v5

    if-ltz v7, :cond_4

    .line 297
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    move v8, v5

    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/bytecode/Type;

    aput-object v9, v7, v8

    goto :goto_1

    .line 289
    .local v5, "arg_sig_len":I
    :cond_2
    new-instance v7, Ljava/lang/ClassFormatError;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "bad method signature"

    invoke-direct {v8, v9}, Ljava/lang/ClassFormatError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 291
    :cond_3
    move-object v7, v1

    move v8, v3

    move v9, v5

    invoke-static {v7, v8, v9}, Lgnu/bytecode/Type;->signatureToType(Ljava/lang/String;II)Lgnu/bytecode/Type;

    move-result-object v7

    move-object v6, v7

    .line 292
    .local v6, "arg_type":Lgnu/bytecode/Type;
    move-object v7, v4

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 293
    move v7, v3

    move v8, v5

    add-int/2addr v7, v8

    move v3, v7

    .line 294
    goto :goto_0

    .line 298
    .end local v6    # "arg_type":Lgnu/bytecode/Type;
    .local v5, "i":I
    :cond_4
    move-object v7, v0

    move-object v8, v1

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v10, v2

    move v11, v3

    sub-int/2addr v10, v11

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-static {v8, v9, v10}, Lgnu/bytecode/Type;->signatureToType(Ljava/lang/String;II)Lgnu/bytecode/Type;

    move-result-object v8

    iput-object v8, v7, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;

    .line 299
    return-void
.end method

.method public final setStaticFlag(Z)V
    .locals 6

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move v1, p1

    .local v1, "is_static":Z
    move v2, v1

    if-eqz v2, :cond_0

    .line 99
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/bytecode/Method;->access_flags:I

    const/16 v4, 0x8

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Lgnu/bytecode/Method;->access_flags:I

    .line 102
    :goto_0
    return-void

    .line 101
    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/bytecode/Method;->access_flags:I

    const/16 v4, -0x9

    xor-int/lit8 v3, v3, -0x9

    iput v3, v2, Lgnu/bytecode/Method;->access_flags:I

    goto :goto_0
.end method

.method public startCode()Lgnu/bytecode/CodeAttr;
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/Method;->initCode()V

    .line 172
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->addParamLocals()V

    .line 173
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Method;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v1, v2

    .line 375
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 376
    move-object v2, v1

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 377
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/Method;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 378
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    if-eqz v2, :cond_0

    .line 380
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/Method;->listParameters(Ljava/lang/StringBuffer;)V

    .line 381
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;

    invoke-virtual {v3}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 383
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/bytecode/Method;
    return-object v0
.end method

.method write(Ljava/io/DataOutputStream;Lgnu/bytecode/ClassType;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Method;
    move-object v1, p1

    .local v1, "dstr":Ljava/io/DataOutputStream;
    move-object v2, p2

    .local v2, "classfile":Lgnu/bytecode/ClassType;
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/Method;->access_flags:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 240
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/Method;->name_index:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 241
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/Method;->signature_index:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 243
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lgnu/bytecode/Attribute;->writeAll(Lgnu/bytecode/AttrContainer;Ljava/io/DataOutputStream;)V

    .line 244
    return-void
.end method
