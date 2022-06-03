.class Lgnu/kawa/functions/NamedPart;
.super Lgnu/mapping/ProcedureN;
.source "GetNamedPart.java"

# interfaces
.implements Lgnu/mapping/HasSetter;
.implements Ljava/io/Externalizable;


# instance fields
.field container:Ljava/lang/Object;

.field kind:C

.field member:Ljava/lang/Object;

.field methods:Lgnu/mapping/MethodProc;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;C)V
    .locals 7

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/NamedPart;
    move-object v1, p1

    .local v1, "container":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "member":Ljava/lang/Object;
    move v3, p3

    .local v3, "kind":C
    move-object v4, v0

    invoke-direct {v4}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 144
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    .line 145
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    .line 146
    move-object v4, v0

    move v5, v3

    iput-char v5, v4, Lgnu/kawa/functions/NamedPart;->kind:C

    .line 147
    move-object v4, v0

    sget-object v5, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v6, "gnu.kawa.functions.CompileNamedPart:validateNamedPart"

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/functions/NamedPart;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;CLgnu/mapping/MethodProc;)V
    .locals 9

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/NamedPart;
    move-object v1, p1

    .local v1, "container":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "mname":Ljava/lang/String;
    move v3, p3

    .local v3, "kind":C
    move-object v4, p4

    .local v4, "methods":Lgnu/mapping/MethodProc;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Lgnu/kawa/functions/NamedPart;-><init>(Ljava/lang/Object;Ljava/lang/Object;C)V

    .line 155
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lgnu/kawa/functions/NamedPart;->methods:Lgnu/mapping/MethodProc;

    .line 156
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/NamedPart;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/mapping/CallContext;->getArgs()[Ljava/lang/Object;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/functions/NamedPart;->apply([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 170
    return-void
.end method

.method public apply([Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/NamedPart;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v5, v0

    iget-char v5, v5, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v6, 0x53

    if-ne v5, v6, :cond_0

    .line 177
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/functions/NamedPart;->methods:Lgnu/mapping/MethodProc;

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/MethodProc;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 188
    :goto_0
    return-void

    .line 178
    :cond_0
    move-object v5, v0

    iget-char v5, v5, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v6, 0x4d

    if-ne v5, v6, :cond_1

    .line 180
    move-object v5, v1

    array-length v5, v5

    move v3, v5

    .line 181
    .local v3, "nargs":I
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v4, v5

    .line 182
    .local v4, "xargs":[Ljava/lang/Object;
    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    aput-object v7, v5, v6

    .line 183
    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x1

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/functions/NamedPart;->methods:Lgnu/mapping/MethodProc;

    move-object v6, v4

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/MethodProc;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 185
    goto :goto_0

    .line 187
    .end local v3    # "nargs":I
    .end local v4    # "xargs":[Ljava/lang/Object;
    :cond_1
    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/kawa/functions/NamedPart;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/NamedPart;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v4, v0

    iget-char v4, v4, Lgnu/kawa/functions/NamedPart;->kind:C

    sparse-switch v4, :sswitch_data_0

    .line 220
    new-instance v4, Ljava/lang/Error;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown part "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 198
    :sswitch_0
    sget-object v4, Lkawa/standard/Scheme;->instanceOf:Lgnu/kawa/reflect/InstanceOf;

    move-object v5, v1

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/reflect/InstanceOf;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .line 218
    .end local v0    # "this":Lgnu/kawa/functions/NamedPart;
    :goto_0
    return-object v0

    .line 200
    .restart local v0    # "this":Lgnu/kawa/functions/NamedPart;
    :sswitch_1
    sget-object v4, Lgnu/kawa/functions/Convert;->as:Lgnu/kawa/functions/Convert;

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    move-object v6, v1

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/functions/Convert;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 202
    :sswitch_2
    move-object v4, v1

    array-length v4, v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v2, v4

    .line 203
    .local v2, "xargs":[Ljava/lang/Object;
    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    aput-object v6, v4, v5

    .line 204
    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v2

    const/4 v7, 0x1

    move-object v8, v1

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    sget-object v4, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 207
    .end local v2    # "xargs":[Ljava/lang/Object;
    :sswitch_3
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/functions/NamedPart;->methods:Lgnu/mapping/MethodProc;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/mapping/MethodProc;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 209
    :sswitch_4
    move-object v4, v1

    array-length v4, v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v2, v4

    .line 210
    .restart local v2    # "xargs":[Ljava/lang/Object;
    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    aput-object v6, v4, v5

    .line 211
    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v2

    const/4 v7, 0x1

    move-object v8, v1

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/functions/NamedPart;->methods:Lgnu/mapping/MethodProc;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lgnu/mapping/MethodProc;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 214
    .end local v2    # "xargs":[Ljava/lang/Object;
    :sswitch_5
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 215
    .local v3, "fname":Ljava/lang/String;
    move-object v4, v1

    array-length v4, v4

    if-nez v4, :cond_0

    .line 216
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    check-cast v4, Lgnu/bytecode/ClassType;

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/kawa/reflect/SlotGet;->staticField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 218
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    check-cast v4, Lgnu/bytecode/Type;

    move-object v5, v1

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/kawa/reflect/SlotGet;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_0

    .line 195
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x44 -> :sswitch_5
        0x49 -> :sswitch_0
        0x4d -> :sswitch_4
        0x4e -> :sswitch_2
        0x53 -> :sswitch_3
    .end sparse-switch
.end method

.method public getSetter()Lgnu/mapping/Procedure;
    .locals 6

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/NamedPart;
    move-object v1, v0

    iget-char v1, v1, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v2, 0x44

    if-ne v1, v2, :cond_0

    .line 226
    new-instance v1, Lgnu/kawa/functions/NamedPartSetter;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/kawa/functions/NamedPartSetter;-><init>(Lgnu/kawa/functions/NamedPart;)V

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/functions/NamedPart;
    return-object v0

    .line 228
    .restart local v0    # "this":Lgnu/kawa/functions/NamedPart;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "procedure \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/kawa/functions/NamedPart;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' has no setter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public numArgs()I
    .locals 3

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/NamedPart;
    move-object v1, v0

    iget-char v1, v1, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v2, 0x49

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget-char v1, v1, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v2, 0x43

    if-ne v1, v2, :cond_1

    .line 161
    :cond_0
    const/16 v1, 0x1001

    move v0, v1

    .line 164
    .end local v0    # "this":Lgnu/kawa/functions/NamedPart;
    :goto_0
    return v0

    .line 162
    .restart local v0    # "this":Lgnu/kawa/functions/NamedPart;
    :cond_1
    move-object v1, v0

    iget-char v1, v1, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v2, 0x44

    if-ne v1, v2, :cond_2

    .line 163
    const/16 v1, 0x1000

    move v0, v1

    goto :goto_0

    .line 164
    :cond_2
    const/16 v1, -0x1000

    move v0, v1

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/NamedPart;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readChar()C

    move-result v3

    iput-char v3, v2, Lgnu/kawa/functions/NamedPart;->kind:C

    .line 269
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/Procedure;

    iput-object v3, v2, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    .line 270
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/Procedure;

    iput-object v3, v2, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    .line 271
    return-void
.end method

.method public set0(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/NamedPart;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v3, v0

    iget-char v3, v3, Lgnu/kawa/functions/NamedPart;->kind:C

    packed-switch v3, :pswitch_data_0

    .line 240
    new-instance v3, Ljava/lang/Error;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invalid setter for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 236
    :pswitch_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 237
    .local v2, "fname":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    check-cast v3, Lgnu/bytecode/ClassType;

    move-object v4, v2

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lgnu/kawa/reflect/SlotSet;->setStaticField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    return-void

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch
.end method

.method public set1(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/NamedPart;
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v4, v0

    iget-char v4, v4, Lgnu/kawa/functions/NamedPart;->kind:C

    packed-switch v4, :pswitch_data_0

    .line 254
    new-instance v4, Ljava/lang/Error;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "invalid setter for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 249
    :pswitch_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 250
    .local v3, "fname":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    check-cast v4, Lgnu/bytecode/Type;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 251
    move-object v4, v1

    move-object v5, v3

    move-object v6, v2

    invoke-static {v4, v5, v6}, Lgnu/kawa/reflect/SlotSet;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    return-void

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/NamedPart;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 261
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 262
    move-object v2, v1

    move-object v3, v0

    iget-char v3, v3, Lgnu/kawa/functions/NamedPart;->kind:C

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeChar(I)V

    .line 263
    return-void
.end method
