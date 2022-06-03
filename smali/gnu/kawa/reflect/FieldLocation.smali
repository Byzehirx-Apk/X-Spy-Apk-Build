.class public Lgnu/kawa/reflect/FieldLocation;
.super Lgnu/kawa/reflect/ClassMemberLocation;
.source "FieldLocation.java"


# static fields
.field static final CONSTANT:I = 0x4

.field static final INDIRECT_LOCATION:I = 0x2

.field public static final KIND_FLAGS_SET:I = 0x40

.field public static final PROCEDURE:I = 0x10

.field static final SETUP_DONE:I = 0x1

.field public static final SYNTAX:I = 0x20

.field static final VALUE_SET:I = 0x8


# instance fields
.field decl:Lgnu/expr/Declaration;

.field private flags:I

.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/ClassType;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/FieldLocation;
    move-object v1, p1

    .local v1, "instance":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "type":Lgnu/bytecode/ClassType;
    move-object v3, p3

    .local v3, "mname":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lgnu/kawa/reflect/ClassMemberLocation;-><init>(Ljava/lang/Object;Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/FieldLocation;
    move-object v1, p1

    .local v1, "instance":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "cname":Ljava/lang/String;
    move-object v3, p3

    .local v3, "fname":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static {v6}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v6

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lgnu/kawa/reflect/ClassMemberLocation;-><init>(Ljava/lang/Object;Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .locals 6

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/FieldLocation;
    move-object v1, p1

    .local v1, "instance":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "field":Ljava/lang/reflect/Field;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lgnu/kawa/reflect/ClassMemberLocation;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    .line 129
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/ClassType;

    iput-object v4, v3, Lgnu/kawa/reflect/FieldLocation;->type:Lgnu/bytecode/ClassType;

    .line 130
    return-void
.end method

.method private getFieldValue()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/FieldLocation;
    move-object v2, v0

    invoke-super {v2}, Lgnu/kawa/reflect/ClassMemberLocation;->setup()V

    .line 236
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lgnu/kawa/reflect/FieldLocation;->rfield:Ljava/lang/reflect/Field;

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/reflect/FieldLocation;->instance:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/reflect/FieldLocation;
    return-object v0

    .line 238
    .restart local v0    # "this":Lgnu/kawa/reflect/FieldLocation;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 240
    .local v1, "ex":Ljava/lang/Throwable;
    move-object v2, v1

    invoke-static {v2}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static make(Ljava/lang/Object;Lgnu/expr/Declaration;)Lgnu/kawa/reflect/FieldLocation;
    .locals 11

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "instance":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object v2, v5

    .line 361
    .local v2, "fld":Lgnu/bytecode/Field;
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v5

    move-object v3, v5

    .line 362
    .local v3, "ctype":Lgnu/bytecode/ClassType;
    new-instance v5, Lgnu/kawa/reflect/FieldLocation;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v3

    move-object v9, v2

    invoke-virtual {v9}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lgnu/kawa/reflect/FieldLocation;-><init>(Ljava/lang/Object;Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    move-object v4, v5

    .line 363
    .local v4, "loc":Lgnu/kawa/reflect/FieldLocation;
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/kawa/reflect/FieldLocation;->setDeclaration(Lgnu/expr/Declaration;)V

    .line 365
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "instance":Ljava/lang/Object;
    return-object v0
.end method

.method public static make(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/FieldLocation;
    .locals 9

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "instance":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "cname":Ljava/lang/String;
    move-object v2, p2

    .local v2, "fldName":Ljava/lang/String;
    new-instance v3, Lgnu/kawa/reflect/FieldLocation;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    invoke-static {v6}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v6

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lgnu/kawa/reflect/FieldLocation;-><init>(Ljava/lang/Object;Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    move-object v0, v3

    .end local v0    # "instance":Ljava/lang/Object;
    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/FieldLocation;
    move-object v1, p1

    .local v1, "defaultValue":Ljava/lang/Object;
    move-object v5, v0

    :try_start_0
    invoke-virtual {v5}, Lgnu/kawa/reflect/FieldLocation;->setup()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .line 198
    move-object v5, v0

    iget v5, v5, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v6, 0x8

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_0

    .line 200
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    move-object v2, v5

    .line 201
    .local v2, "v":Ljava/lang/Object;
    move-object v5, v0

    iget v5, v5, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/4 v6, 0x4

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    .line 202
    move-object v5, v2

    move-object v0, v5

    .line 228
    .end local v0    # "this":Lgnu/kawa/reflect/FieldLocation;
    .end local v2    # "v":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 193
    .restart local v0    # "this":Lgnu/kawa/reflect/FieldLocation;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 195
    .local v2, "ex":Ljava/lang/Throwable;
    move-object v5, v1

    move-object v0, v5

    goto :goto_0

    .line 206
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_0
    move-object v5, v0

    invoke-direct {v5}, Lgnu/kawa/reflect/FieldLocation;->getFieldValue()Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 207
    .local v2, "v":Ljava/lang/Object;
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/reflect/FieldLocation;->type:Lgnu/bytecode/ClassType;

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/reflect/FieldLocation;->mname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v5

    const/16 v6, 0x10

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_2

    .line 209
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v7, 0x8

    or-int/lit8 v6, v6, 0x8

    iput v6, v5, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 210
    move-object v5, v0

    iget v5, v5, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_1

    .line 211
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/4 v7, 0x4

    or-int/lit8 v6, v6, 0x4

    iput v6, v5, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 212
    :cond_1
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    .line 215
    :cond_2
    move-object v5, v0

    iget v5, v5, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    .line 217
    sget-object v5, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    move-object v3, v5

    .line 218
    .local v3, "unb":Ljava/lang/String;
    move-object v5, v2

    check-cast v5, Lgnu/mapping/Location;

    move-object v4, v5

    .line 219
    .local v4, "loc":Lgnu/mapping/Location;
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v5, v6}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 220
    move-object v5, v2

    move-object v6, v3

    if-ne v5, v6, :cond_3

    .line 221
    move-object v5, v1

    move-object v0, v5

    goto :goto_0

    .line 222
    :cond_3
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/mapping/Location;->isConstant()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 224
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/4 v7, 0x4

    or-int/lit8 v6, v6, 0x4

    iput v6, v5, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 225
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    .line 228
    .end local v3    # "unb":Ljava/lang/String;
    .end local v4    # "loc":Lgnu/mapping/Location;
    :cond_4
    move-object v5, v2

    move-object v0, v5

    goto :goto_0
.end method

.method public declared-synchronized getDeclaration()Lgnu/expr/Declaration;
    .locals 13

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/FieldLocation;
    move-object v11, p0

    monitor-enter v11

    move-object v7, v0

    :try_start_0
    iget v7, v7, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v8, 0x40

    and-int/lit8 v7, v7, 0x40

    if-nez v7, :cond_0

    .line 151
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/kawa/reflect/FieldLocation;->setKindFlags()V

    .line 152
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/reflect/FieldLocation;->decl:Lgnu/expr/Declaration;

    move-object v1, v7

    .line 153
    .local v1, "d":Lgnu/expr/Declaration;
    move-object v7, v1

    if-nez v7, :cond_5

    .line 155
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/kawa/reflect/FieldLocation;->getMemberName()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 156
    .local v2, "fname":Ljava/lang/String;
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/kawa/reflect/FieldLocation;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v7

    move-object v3, v7

    .line 157
    .local v3, "t":Lgnu/bytecode/ClassType;
    move-object v7, v3

    move-object v8, v2

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    move-object v4, v7

    .line 158
    .local v4, "procField":Lgnu/bytecode/Field;
    move-object v7, v4

    if-nez v7, :cond_1

    .line 159
    const/4 v7, 0x0

    move-object v0, v7

    .line 171
    .end local v0    # "this":Lgnu/kawa/reflect/FieldLocation;
    .end local v2    # "fname":Ljava/lang/String;
    .end local v3    # "t":Lgnu/bytecode/ClassType;
    .end local v4    # "procField":Lgnu/bytecode/Field;
    :goto_0
    monitor-exit v11

    return-object v0

    .line 160
    .restart local v0    # "this":Lgnu/kawa/reflect/FieldLocation;
    .restart local v2    # "fname":Ljava/lang/String;
    .restart local v3    # "t":Lgnu/bytecode/ClassType;
    .restart local v4    # "procField":Lgnu/bytecode/Field;
    :cond_1
    move-object v7, v3

    :try_start_1
    invoke-static {v7}, Lgnu/expr/ModuleInfo;->find(Lgnu/bytecode/ClassType;)Lgnu/expr/ModuleInfo;

    move-result-object v7

    move-object v5, v7

    .line 161
    .local v5, "info":Lgnu/expr/ModuleInfo;
    move-object v7, v5

    invoke-virtual {v7}, Lgnu/expr/ModuleInfo;->getModuleExp()Lgnu/expr/ModuleExp;

    move-result-object v7

    move-object v6, v7

    .line 162
    .local v6, "mexp":Lgnu/expr/ModuleExp;
    move-object v7, v6

    invoke-virtual {v7}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v7

    move-object v1, v7

    :goto_1
    move-object v7, v1

    if-eqz v7, :cond_2

    .line 164
    move-object v7, v1

    iget-object v7, v7, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v7, :cond_3

    move-object v7, v1

    iget-object v7, v7, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v7}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 165
    .line 167
    :cond_2
    move-object v7, v1

    if-nez v7, :cond_4

    .line 168
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "no field found for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    .end local v1    # "d":Lgnu/expr/Declaration;
    .end local v2    # "fname":Ljava/lang/String;
    .end local v3    # "t":Lgnu/bytecode/ClassType;
    .end local v4    # "procField":Lgnu/bytecode/Field;
    .end local v5    # "info":Lgnu/expr/ModuleInfo;
    .end local v6    # "mexp":Lgnu/expr/ModuleExp;
    :catchall_0
    move-exception v0

    monitor-exit v11

    .end local v0    # "this":Lgnu/kawa/reflect/FieldLocation;
    throw v0

    .line 162
    .restart local v0    # "this":Lgnu/kawa/reflect/FieldLocation;
    .restart local v1    # "d":Lgnu/expr/Declaration;
    .restart local v2    # "fname":Ljava/lang/String;
    .restart local v3    # "t":Lgnu/bytecode/ClassType;
    .restart local v4    # "procField":Lgnu/bytecode/Field;
    .restart local v5    # "info":Lgnu/expr/ModuleInfo;
    .restart local v6    # "mexp":Lgnu/expr/ModuleExp;
    :cond_3
    move-object v7, v1

    :try_start_2
    invoke-virtual {v7}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v7

    move-object v1, v7

    goto :goto_1

    .line 169
    :cond_4
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lgnu/kawa/reflect/FieldLocation;->decl:Lgnu/expr/Declaration;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    .end local v2    # "fname":Ljava/lang/String;
    .end local v3    # "t":Lgnu/bytecode/ClassType;
    .end local v4    # "procField":Lgnu/bytecode/Field;
    .end local v5    # "info":Lgnu/expr/ModuleInfo;
    .end local v6    # "mexp":Lgnu/expr/ModuleExp;
    :cond_5
    move-object v7, v1

    move-object v0, v7

    goto :goto_0
.end method

.method public getFType()Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/FieldLocation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/reflect/FieldLocation;->type:Lgnu/bytecode/ClassType;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/reflect/FieldLocation;->mname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/reflect/FieldLocation;
    return-object v0
.end method

.method public getField()Lgnu/bytecode/Field;
    .locals 3

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/FieldLocation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/reflect/FieldLocation;->type:Lgnu/bytecode/ClassType;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/reflect/FieldLocation;->mname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/reflect/FieldLocation;
    return-object v0
.end method

.method public isBound()Z
    .locals 7

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/FieldLocation;
    move-object v3, v0

    iget v3, v3, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v4, 0x40

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_0

    .line 335
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/reflect/FieldLocation;->setKindFlags()V

    .line 336
    :cond_0
    move-object v3, v0

    iget v3, v3, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    .line 337
    :cond_1
    const/4 v3, 0x1

    move v0, v3

    .line 355
    .end local v0    # "this":Lgnu/kawa/reflect/FieldLocation;
    :goto_0
    return v0

    .line 339
    .restart local v0    # "this":Lgnu/kawa/reflect/FieldLocation;
    :cond_2
    move-object v3, v0

    iget v3, v3, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    .line 340
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    move-object v1, v3

    .line 355
    .local v1, "v":Ljava/lang/Object;
    :goto_1
    move-object v3, v1

    check-cast v3, Lgnu/mapping/Location;

    invoke-virtual {v3}, Lgnu/mapping/Location;->isBound()Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 345
    .end local v1    # "v":Ljava/lang/Object;
    :cond_3
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Lgnu/kawa/reflect/FieldLocation;->setup()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .line 351
    move-object v3, v0

    invoke-direct {v3}, Lgnu/kawa/reflect/FieldLocation;->getFieldValue()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 352
    .restart local v1    # "v":Ljava/lang/Object;
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v5, 0x8

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 353
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    goto :goto_1

    .line 347
    .end local v1    # "v":Ljava/lang/Object;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 349
    .local v2, "ex":Ljava/lang/Throwable;
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public isConstant()Z
    .locals 7

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/FieldLocation;
    move-object v3, v0

    iget v3, v3, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v4, 0x40

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_0

    .line 305
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/reflect/FieldLocation;->setKindFlags()V

    .line 306
    :cond_0
    move-object v3, v0

    iget v3, v3, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    .line 307
    const/4 v3, 0x1

    move v0, v3

    .line 329
    .end local v0    # "this":Lgnu/kawa/reflect/FieldLocation;
    :goto_0
    return v0

    .line 308
    .restart local v0    # "this":Lgnu/kawa/reflect/FieldLocation;
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/reflect/FieldLocation;->isIndirectLocation()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 311
    move-object v3, v0

    iget v3, v3, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_2

    .line 312
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    move-object v1, v3

    .line 327
    .local v1, "v":Ljava/lang/Object;
    :goto_1
    move-object v3, v1

    check-cast v3, Lgnu/mapping/Location;

    invoke-virtual {v3}, Lgnu/mapping/Location;->isConstant()Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 317
    .end local v1    # "v":Ljava/lang/Object;
    :cond_2
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Lgnu/kawa/reflect/FieldLocation;->setup()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .line 323
    move-object v3, v0

    invoke-direct {v3}, Lgnu/kawa/reflect/FieldLocation;->getFieldValue()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 324
    .restart local v1    # "v":Ljava/lang/Object;
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v5, 0x8

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 325
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    goto :goto_1

    .line 319
    .end local v1    # "v":Ljava/lang/Object;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 321
    .local v2, "ex":Ljava/lang/Throwable;
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 329
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public isIndirectLocation()Z
    .locals 3

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/FieldLocation;
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/kawa/reflect/FieldLocation;
    return v0

    .restart local v0    # "this":Lgnu/kawa/reflect/FieldLocation;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isProcedureOrSyntax()Z
    .locals 3

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/FieldLocation;
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v2, 0x40

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_0

    .line 112
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/reflect/FieldLocation;->setKindFlags()V

    .line 113
    :cond_0
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v2, 0x30

    and-int/lit8 v1, v1, 0x30

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/kawa/reflect/FieldLocation;
    return v0

    .restart local v0    # "this":Lgnu/kawa/reflect/FieldLocation;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/FieldLocation;
    move-object v1, p1

    .local v1, "newValue":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/reflect/FieldLocation;->setup()V

    .line 247
    move-object v3, v0

    iget v3, v3, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    .line 251
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lgnu/kawa/reflect/FieldLocation;->rfield:Ljava/lang/reflect/Field;

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/reflect/FieldLocation;->instance:Ljava/lang/Object;

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .line 271
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 255
    .local v2, "ex":Ljava/lang/Throwable;
    move-object v3, v2

    invoke-static {v3}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 261
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_0
    move-object v3, v0

    iget v3, v3, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    .line 262
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    move-object v2, v3

    .line 269
    .local v2, "v":Ljava/lang/Object;
    :goto_1
    move-object v3, v2

    check-cast v3, Lgnu/mapping/Location;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 265
    .end local v2    # "v":Ljava/lang/Object;
    :cond_1
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v5, 0x8

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 266
    move-object v3, v0

    invoke-direct {v3}, Lgnu/kawa/reflect/FieldLocation;->getFieldValue()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 267
    .restart local v2    # "v":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    goto :goto_1
.end method

.method public setDeclaration(Lgnu/expr/Declaration;)V
    .locals 4

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/FieldLocation;
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/reflect/FieldLocation;->decl:Lgnu/expr/Declaration;

    .line 135
    return-void
.end method

.method setKindFlags()V
    .locals 12

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/FieldLocation;
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/kawa/reflect/FieldLocation;->getMemberName()Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 54
    .local v1, "fname":Ljava/lang/String;
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/kawa/reflect/FieldLocation;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v7

    move-object v2, v7

    .line 55
    .local v2, "fld":Lgnu/bytecode/Field;
    move-object v7, v2

    invoke-virtual {v7}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v7

    move v3, v7

    .line 56
    .local v3, "fflags":I
    move-object v7, v2

    invoke-virtual {v7}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v7

    move-object v4, v7

    .line 57
    .local v4, "ftype":Lgnu/bytecode/Type;
    move-object v7, v4

    sget-object v8, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    invoke-virtual {v7, v8}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 58
    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/4 v9, 0x2

    or-int/lit8 v8, v8, 0x2

    iput v8, v7, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 59
    :cond_0
    move v7, v3

    const/16 v8, 0x10

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_2

    .line 61
    move-object v7, v0

    iget v7, v7, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/4 v8, 0x2

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_3

    .line 63
    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/4 v9, 0x4

    or-int/lit8 v8, v8, 0x4

    iput v8, v7, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 64
    move-object v7, v4

    sget-object v8, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v7, v8}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 65
    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v9, 0x10

    or-int/lit8 v8, v8, 0x10

    iput v8, v7, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 66
    :cond_1
    move-object v7, v4

    instance-of v7, v7, Lgnu/bytecode/ClassType;

    if-eqz v7, :cond_2

    move-object v7, v4

    check-cast v7, Lgnu/bytecode/ClassType;

    const-string/jumbo v8, "kawa.lang.Syntax"

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassType;->isSubclass(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 68
    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v9, 0x20

    or-int/lit8 v8, v8, 0x20

    iput v8, v7, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 106
    :cond_2
    :goto_0
    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v9, 0x40

    or-int/lit8 v8, v8, 0x40

    iput v8, v7, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 107
    return-void

    .line 72
    :cond_3
    move-object v7, v0

    invoke-direct {v7}, Lgnu/kawa/reflect/FieldLocation;->getFieldValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/Location;

    move-object v5, v7

    .line 73
    .local v5, "loc":Lgnu/mapping/Location;
    move-object v7, v5

    instance-of v7, v7, Lgnu/kawa/reflect/FieldLocation;

    if-eqz v7, :cond_7

    .line 75
    move-object v7, v5

    check-cast v7, Lgnu/kawa/reflect/FieldLocation;

    move-object v6, v7

    .line 76
    .local v6, "floc":Lgnu/kawa/reflect/FieldLocation;
    move-object v7, v6

    iget v7, v7, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v8, 0x40

    and-int/lit8 v7, v7, 0x40

    if-nez v7, :cond_4

    .line 77
    move-object v7, v6

    invoke-virtual {v7}, Lgnu/kawa/reflect/FieldLocation;->setKindFlags()V

    .line 78
    :cond_4
    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lgnu/kawa/reflect/FieldLocation;->flags:I

    move-object v9, v6

    iget v9, v9, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v10, 0x34

    and-int/lit8 v9, v9, 0x34

    or-int/2addr v8, v9

    iput v8, v7, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 79
    move-object v7, v6

    iget v7, v7, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/4 v8, 0x4

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_6

    .line 81
    move-object v7, v6

    iget v7, v7, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v8, 0x8

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_5

    .line 83
    move-object v7, v0

    move-object v8, v6

    iget-object v8, v8, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    iput-object v8, v7, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    .line 84
    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v9, 0x8

    or-int/lit8 v8, v8, 0x8

    iput v8, v7, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 92
    :cond_5
    :goto_1
    goto :goto_0

    .line 89
    :cond_6
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    .line 90
    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v9, 0x8

    or-int/lit8 v8, v8, 0x8

    iput v8, v7, Lgnu/kawa/reflect/FieldLocation;->flags:I

    goto :goto_1

    .line 93
    .end local v6    # "floc":Lgnu/kawa/reflect/FieldLocation;
    :cond_7
    move-object v7, v5

    invoke-virtual {v7}, Lgnu/mapping/Location;->isConstant()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 95
    move-object v7, v5

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 97
    .local v6, "val":Ljava/lang/Object;
    move-object v7, v6

    instance-of v7, v7, Lgnu/mapping/Procedure;

    if-eqz v7, :cond_8

    .line 98
    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v9, 0x10

    or-int/lit8 v8, v8, 0x10

    iput v8, v7, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 99
    :cond_8
    move-object v7, v6

    instance-of v7, v7, Lkawa/lang/Syntax;

    if-eqz v7, :cond_9

    .line 100
    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v9, 0x20

    or-int/lit8 v8, v8, 0x20

    iput v8, v7, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 101
    :cond_9
    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v9, 0xc

    or-int/lit8 v8, v8, 0xc

    iput v8, v7, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 102
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public setProcedure()V
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/FieldLocation;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v3, 0x54

    or-int/lit8 v2, v2, 0x54

    iput v2, v1, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 44
    return-void
.end method

.method public setRestore(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/FieldLocation;
    move-object v1, p1

    .local v1, "oldValue":Ljava/lang/Object;
    move-object v2, v0

    iget v2, v2, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/4 v3, 0x2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 297
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/kawa/reflect/ClassMemberLocation;->setRestore(Ljava/lang/Object;)V

    .line 300
    :goto_0
    return-void

    .line 299
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    check-cast v2, Lgnu/mapping/Location;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/Location;->setRestore(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setSyntax()V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/FieldLocation;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v3, 0x64

    or-int/lit8 v2, v2, 0x64

    iput v2, v1, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 49
    return-void
.end method

.method public setWithSave(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/FieldLocation;
    move-object v1, p1

    .local v1, "newValue":Ljava/lang/Object;
    move-object v3, v0

    iget v3, v3, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v4, 0x40

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_0

    .line 276
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/reflect/FieldLocation;->setKindFlags()V

    .line 277
    :cond_0
    move-object v3, v0

    iget v3, v3, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    .line 278
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lgnu/kawa/reflect/ClassMemberLocation;->setWithSave(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .line 290
    .end local v0    # "this":Lgnu/kawa/reflect/FieldLocation;
    :goto_0
    return-object v0

    .line 282
    .restart local v0    # "this":Lgnu/kawa/reflect/FieldLocation;
    :cond_1
    move-object v3, v0

    iget v3, v3, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_2

    .line 283
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    move-object v2, v3

    .line 290
    .local v2, "v":Ljava/lang/Object;
    :goto_1
    move-object v3, v2

    check-cast v3, Lgnu/mapping/Location;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/mapping/Location;->setWithSave(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 286
    .end local v2    # "v":Ljava/lang/Object;
    :cond_2
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v5, 0x8

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 287
    move-object v3, v0

    invoke-direct {v3}, Lgnu/kawa/reflect/FieldLocation;->getFieldValue()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 288
    .restart local v2    # "v":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/kawa/reflect/FieldLocation;->value:Ljava/lang/Object;

    goto :goto_1
.end method

.method setup()V
    .locals 7

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/FieldLocation;
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v1, v4

    monitor-enter v3

    .line 178
    move-object v3, v0

    :try_start_0
    iget v3, v3, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 179
    move-object v3, v1

    monitor-exit v3

    .line 185
    :goto_0
    return-void

    .line 180
    :cond_0
    move-object v3, v0

    invoke-super {v3}, Lgnu/kawa/reflect/ClassMemberLocation;->setup()V

    .line 181
    move-object v3, v0

    iget v3, v3, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/16 v4, 0x40

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_1

    .line 182
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/reflect/FieldLocation;->setKindFlags()V

    .line 183
    :cond_1
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lgnu/kawa/reflect/FieldLocation;->flags:I

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Lgnu/kawa/reflect/FieldLocation;->flags:I

    .line 184
    move-object v3, v1

    monitor-exit v3

    .line 185
    goto :goto_0

    .line 184
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/FieldLocation;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v2

    .line 376
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v2, v1

    const-string/jumbo v3, "FieldLocation["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 377
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/reflect/FieldLocation;->instance:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 379
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/reflect/FieldLocation;->instance:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 380
    move-object v2, v1

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 382
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/reflect/FieldLocation;->type:Lgnu/bytecode/ClassType;

    if-nez v3, :cond_1

    const-string/jumbo v3, "(null)"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 383
    move-object v2, v1

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 384
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/reflect/FieldLocation;->mname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 389
    move-object v2, v1

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 390
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/reflect/FieldLocation;
    return-object v0

    .line 382
    .restart local v0    # "this":Lgnu/kawa/reflect/FieldLocation;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/reflect/FieldLocation;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
