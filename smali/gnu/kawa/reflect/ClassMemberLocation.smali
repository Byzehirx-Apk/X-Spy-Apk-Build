.class public abstract Lgnu/kawa/reflect/ClassMemberLocation;
.super Lgnu/mapping/Location;
.source "ClassMemberLocation.java"


# instance fields
.field instance:Ljava/lang/Object;

.field mname:Ljava/lang/String;

.field rfield:Ljava/lang/reflect/Field;

.field type:Lgnu/bytecode/ClassType;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/ClassType;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/ClassMemberLocation;
    move-object v1, p1

    .local v1, "instance":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "type":Lgnu/bytecode/ClassType;
    move-object v3, p3

    .local v3, "mname":Ljava/lang/String;
    move-object v4, v0

    invoke-direct {v4}, Lgnu/mapping/Location;-><init>()V

    .line 25
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/kawa/reflect/ClassMemberLocation;->instance:Ljava/lang/Object;

    .line 26
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lgnu/kawa/reflect/ClassMemberLocation;->type:Lgnu/bytecode/ClassType;

    .line 27
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/kawa/reflect/ClassMemberLocation;->mname:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/ClassMemberLocation;
    move-object v1, p1

    .local v1, "instance":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "clas":Ljava/lang/Class;
    move-object v3, p3

    .local v3, "mname":Ljava/lang/String;
    move-object v4, v0

    invoke-direct {v4}, Lgnu/mapping/Location;-><init>()V

    .line 32
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/kawa/reflect/ClassMemberLocation;->instance:Ljava/lang/Object;

    .line 33
    move-object v4, v0

    move-object v5, v2

    invoke-static {v5}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v5

    check-cast v5, Lgnu/bytecode/ClassType;

    iput-object v5, v4, Lgnu/kawa/reflect/ClassMemberLocation;->type:Lgnu/bytecode/ClassType;

    .line 34
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/kawa/reflect/ClassMemberLocation;->mname:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .locals 5

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/ClassMemberLocation;
    move-object v1, p1

    .local v1, "instance":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "field":Ljava/lang/reflect/Field;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/mapping/Location;-><init>()V

    .line 39
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/kawa/reflect/ClassMemberLocation;->instance:Ljava/lang/Object;

    .line 40
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;

    .line 41
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lgnu/kawa/reflect/ClassMemberLocation;->mname:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static define(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Lgnu/expr/Language;Lgnu/mapping/Environment;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 178
    move-object/from16 v1, p0

    .local v1, "instance":Ljava/lang/Object;
    move-object/from16 v2, p1

    .local v2, "rfield":Ljava/lang/reflect/Field;
    move-object/from16 v3, p2

    .local v3, "uri":Ljava/lang/String;
    move-object/from16 v4, p3

    .local v4, "language":Lgnu/expr/Language;
    move-object/from16 v5, p4

    .local v5, "env":Lgnu/mapping/Environment;
    move-object/from16 v17, v2

    move-object/from16 v18, v1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    .line 179
    .local v6, "fvalue":Ljava/lang/Object;
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v17

    move-object/from16 v7, v17

    .line 180
    .local v7, "ftype":Lgnu/bytecode/Type;
    move-object/from16 v17, v7

    sget-object v18, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v17 .. v18}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v17

    move/from16 v8, v17

    .line 181
    .local v8, "isAlias":Z
    move-object/from16 v17, v7

    sget-object v18, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v17 .. v18}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v17

    move/from16 v9, v17

    .line 182
    .local v9, "isProcedure":Z
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v17

    move/from16 v10, v17

    .line 183
    .local v10, "rModifiers":I
    move/from16 v17, v10

    const/16 v18, 0x10

    and-int/lit8 v17, v17, 0x10

    if-eqz v17, :cond_0

    const/16 v17, 0x1

    :goto_0
    move/from16 v11, v17

    .line 184
    .local v11, "isFinal":Z
    move/from16 v17, v11

    if-eqz v17, :cond_1

    move-object/from16 v17, v6

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/Named;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move/from16 v17, v8

    if-nez v17, :cond_1

    move-object/from16 v17, v6

    check-cast v17, Lgnu/mapping/Named;

    invoke-interface/range {v17 .. v17}, Lgnu/mapping/Named;->getSymbol()Ljava/lang/Object;

    move-result-object v17

    :goto_1
    move-object/from16 v12, v17

    .line 188
    .local v12, "fdname":Ljava/lang/Object;
    move-object/from16 v17, v12

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 189
    move-object/from16 v17, v12

    check-cast v17, Lgnu/mapping/Symbol;

    move-object/from16 v13, v17

    .line 196
    .local v13, "sym":Lgnu/mapping/Symbol;
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v15, v17

    .line 197
    .local v15, "property":Ljava/lang/Object;
    move/from16 v17, v8

    if-eqz v17, :cond_4

    move/from16 v17, v11

    if-eqz v17, :cond_4

    .line 199
    move-object/from16 v17, v6

    check-cast v17, Lgnu/mapping/Location;

    move-object/from16 v14, v17

    .line 212
    .end local v15    # "property":Ljava/lang/Object;
    .local v14, "loc":Lgnu/mapping/Location;
    :goto_3
    move-object/from16 v17, v5

    move-object/from16 v18, v13

    move-object/from16 v19, v15

    move-object/from16 v20, v14

    invoke-virtual/range {v17 .. v20}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    move-result-object v17

    .line 213
    return-void

    .line 183
    .end local v11    # "isFinal":Z
    .end local v12    # "fdname":Ljava/lang/Object;
    .end local v13    # "sym":Lgnu/mapping/Symbol;
    .end local v14    # "loc":Lgnu/mapping/Location;
    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    .line 184
    .restart local v11    # "isFinal":Z
    :cond_1
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lgnu/expr/Compilation;->demangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v17

    goto :goto_1

    .line 192
    .restart local v12    # "fdname":Ljava/lang/Object;
    :cond_2
    move-object/from16 v17, v3

    if-nez v17, :cond_3

    const-string/jumbo v17, ""

    :goto_4
    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v17

    move-object/from16 v13, v17

    .restart local v13    # "sym":Lgnu/mapping/Symbol;
    goto :goto_2

    .end local v13    # "sym":Lgnu/mapping/Symbol;
    :cond_3
    move-object/from16 v17, v3

    goto :goto_4

    .line 203
    .restart local v13    # "sym":Lgnu/mapping/Symbol;
    .restart local v15    # "property":Ljava/lang/Object;
    :cond_4
    move/from16 v17, v11

    if-eqz v17, :cond_5

    .line 204
    move-object/from16 v17, v4

    move-object/from16 v18, v2

    move-object/from16 v19, v6

    invoke-virtual/range {v17 .. v19}, Lgnu/expr/Language;->getEnvPropertyFor(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v15, v17

    .line 205
    .end local v15    # "property":Ljava/lang/Object;
    :cond_5
    move/from16 v17, v10

    const/16 v18, 0x8

    and-int/lit8 v17, v17, 0x8

    if-eqz v17, :cond_6

    const/16 v17, 0x1

    :goto_5
    move/from16 v16, v17

    .line 206
    .local v16, "isStatic":Z
    move/from16 v17, v16

    if-eqz v17, :cond_7

    .line 207
    new-instance v17, Lgnu/kawa/reflect/StaticFieldLocation;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v19}, Lgnu/kawa/reflect/StaticFieldLocation;-><init>(Ljava/lang/reflect/Field;)V

    move-object/from16 v14, v17

    .restart local v14    # "loc":Lgnu/mapping/Location;
    goto :goto_3

    .line 205
    .end local v14    # "loc":Lgnu/mapping/Location;
    .end local v16    # "isStatic":Z
    :cond_6
    const/16 v17, 0x0

    goto :goto_5

    .line 209
    .restart local v16    # "isStatic":Z
    :cond_7
    new-instance v17, Lgnu/kawa/reflect/FieldLocation;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    invoke-direct/range {v18 .. v20}, Lgnu/kawa/reflect/FieldLocation;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    move-object/from16 v14, v17

    .restart local v14    # "loc":Lgnu/mapping/Location;
    goto :goto_3
.end method

.method public static defineAll(Ljava/lang/Object;Lgnu/expr/Language;Lgnu/mapping/Environment;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "instance":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "language":Lgnu/expr/Language;
    move-object v2, p2

    .local v2, "env":Lgnu/mapping/Environment;
    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    move-object v3, v8

    .line 220
    .local v3, "clas":Ljava/lang/Class;
    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    move-object v4, v8

    .line 221
    .local v4, "fields":[Ljava/lang/reflect/Field;
    move-object v8, v4

    array-length v8, v8

    move v5, v8

    .local v5, "i":I
    :cond_0
    :goto_0
    add-int/lit8 v5, v5, -0x1

    move v8, v5

    if-ltz v8, :cond_2

    .line 223
    move-object v8, v4

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 224
    .local v6, "field":Ljava/lang/reflect/Field;
    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 225
    .local v7, "fname":Ljava/lang/String;
    move-object v8, v7

    const-string/jumbo v9, "$Prvt$"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    move-object v8, v7

    const-string/jumbo v9, "$instance"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 227
    goto :goto_0

    .line 228
    :cond_1
    move-object v8, v0

    move-object v9, v6

    const/4 v10, 0x0

    move-object v11, v1

    move-object v12, v2

    invoke-static {v8, v9, v10, v11, v12}, Lgnu/kawa/reflect/ClassMemberLocation;->define(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Lgnu/expr/Language;Lgnu/mapping/Environment;)V

    .line 229
    goto :goto_0

    .line 230
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "fname":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/ClassMemberLocation;
    move-object v1, p1

    .local v1, "defaultValue":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/kawa/reflect/ClassMemberLocation;->getRField()Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v2, v4

    .line 132
    .local v2, "rfld":Ljava/lang/reflect/Field;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 133
    move-object v4, v1

    move-object v0, v4

    .line 137
    .end local v0    # "this":Lgnu/kawa/reflect/ClassMemberLocation;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/reflect/ClassMemberLocation;
    :cond_0
    move-object v4, v2

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lgnu/kawa/reflect/ClassMemberLocation;->instance:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 139
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 141
    .local v3, "ex":Ljava/lang/IllegalAccessException;
    move-object v4, v3

    invoke-static {v4}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public getDeclaringClass()Lgnu/bytecode/ClassType;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/ClassMemberLocation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/reflect/ClassMemberLocation;->type:Lgnu/bytecode/ClassType;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/reflect/ClassMemberLocation;
    return-object v0
.end method

.method public final getInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/ClassMemberLocation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/reflect/ClassMemberLocation;->instance:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/reflect/ClassMemberLocation;
    return-object v0
.end method

.method public getMemberName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/ClassMemberLocation;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/reflect/ClassMemberLocation;->mname:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/reflect/ClassMemberLocation;
    return-object v0
.end method

.method public getRClass()Ljava/lang/Class;
    .locals 4

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/ClassMemberLocation;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;

    move-object v1, v3

    .line 117
    .local v1, "rfld":Ljava/lang/reflect/Field;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 118
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    move-object v0, v3

    .line 125
    .end local v0    # "this":Lgnu/kawa/reflect/ClassMemberLocation;
    :goto_0
    return-object v0

    .line 121
    .restart local v0    # "this":Lgnu/kawa/reflect/ClassMemberLocation;
    :cond_0
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lgnu/kawa/reflect/ClassMemberLocation;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 123
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 125
    .local v2, "ex":Ljava/lang/Exception;
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getRField()Ljava/lang/reflect/Field;
    .locals 6

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/ClassMemberLocation;
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;

    move-object v1, v4

    .line 94
    .local v1, "rfld":Ljava/lang/reflect/Field;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 96
    const/4 v4, 0x0

    move-object v2, v4

    .line 100
    .local v2, "clas":Ljava/lang/Class;
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lgnu/kawa/reflect/ClassMemberLocation;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v4

    move-object v2, v4

    .line 101
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/reflect/ClassMemberLocation;->mname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v1, v4

    .line 102
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 109
    .end local v2    # "clas":Ljava/lang/Class;
    :cond_0
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/reflect/ClassMemberLocation;
    :goto_0
    return-object v0

    .line 104
    .restart local v0    # "this":Lgnu/kawa/reflect/ClassMemberLocation;
    .restart local v2    # "clas":Ljava/lang/Class;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 106
    .local v3, "ex":Ljava/lang/Exception;
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public isBound()Z
    .locals 3

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/ClassMemberLocation;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/reflect/ClassMemberLocation;->getRField()Ljava/lang/reflect/Field;

    move-result-object v2

    move-object v1, v2

    .line 154
    .local v1, "rfld":Ljava/lang/reflect/Field;
    move-object v2, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/kawa/reflect/ClassMemberLocation;
    return v0

    .restart local v0    # "this":Lgnu/kawa/reflect/ClassMemberLocation;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isConstant()Z
    .locals 4

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/ClassMemberLocation;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/reflect/ClassMemberLocation;->getRField()Ljava/lang/reflect/Field;

    move-result-object v2

    move-object v1, v2

    .line 148
    .local v1, "rfld":Ljava/lang/reflect/Field;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    const/16 v3, 0x10

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/kawa/reflect/ClassMemberLocation;
    return v0

    .restart local v0    # "this":Lgnu/kawa/reflect/ClassMemberLocation;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/ClassMemberLocation;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/reflect/ClassMemberLocation;->setup()V

    .line 162
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/reflect/ClassMemberLocation;->instance:Ljava/lang/Object;

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    return-void

    .line 165
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 167
    .local v2, "ex":Ljava/lang/IllegalAccessException;
    move-object v3, v2

    invoke-static {v3}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public final setInstance(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/ClassMemberLocation;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/reflect/ClassMemberLocation;->instance:Ljava/lang/Object;

    return-void
.end method

.method setup()V
    .locals 10

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/reflect/ClassMemberLocation;
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;

    if-nez v4, :cond_0

    .line 61
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lgnu/kawa/reflect/ClassMemberLocation;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v1, v4

    .line 72
    .line 75
    .local v1, "clas":Ljava/lang/Class;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Lgnu/kawa/reflect/ClassMemberLocation;->mname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, v4, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    .line 89
    .end local v1    # "clas":Ljava/lang/Class;
    :cond_0
    return-void

    .line 63
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 65
    .local v2, "ex":Ljava/lang/RuntimeException;
    new-instance v4, Lgnu/mapping/UnboundLocationException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unbound location - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v4

    .line 69
    .local v3, "uex":Ljava/lang/RuntimeException;
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    .line 71
    move-object v4, v3

    throw v4

    .line 77
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .end local v3    # "uex":Ljava/lang/RuntimeException;
    .restart local v1    # "clas":Ljava/lang/Class;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 79
    .local v2, "ex":Ljava/lang/NoSuchFieldException;
    new-instance v4, Lgnu/mapping/UnboundLocationException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unbound location  - no field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/reflect/ClassMemberLocation;->mname:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/reflect/ClassMemberLocation;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v4

    .line 84
    .restart local v3    # "uex":Ljava/lang/RuntimeException;
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    .line 86
    move-object v4, v3

    throw v4
.end method
