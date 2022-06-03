.class public Lgnu/bytecode/ObjectType;
.super Lgnu/bytecode/Type;
.source "ObjectType.java"


# static fields
.field static final ADD_ENCLOSING_DONE:I = 0x8

.field static final ADD_FIELDS_DONE:I = 0x1

.field static final ADD_MEMBERCLASSES_DONE:I = 0x4

.field static final ADD_METHODS_DONE:I = 0x2

.field static final EXISTING_CLASS:I = 0x10

.field static final HAS_OUTER_LINK:I = 0x20


# instance fields
.field public flags:I


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ObjectType;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/bytecode/Type;-><init>()V

    .line 16
    move-object v1, v0

    const/4 v2, 0x4

    iput v2, v1, Lgnu/bytecode/ObjectType;->size:I

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ObjectType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/bytecode/Type;-><init>()V

    .line 21
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/ObjectType;->this_name:Ljava/lang/String;

    .line 22
    move-object v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lgnu/bytecode/ObjectType;->size:I

    .line 23
    return-void
.end method

.method public static getContextClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "cname":Ljava/lang/String;
    move-object v3, v0

    const/4 v4, 0x0

    :try_start_0
    const-class v5, Lgnu/bytecode/ObjectType;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .line 108
    .end local v0    # "cname":Ljava/lang/String;
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    :goto_0
    return-object v0

    .line 99
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "cname":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 104
    .restart local v1    # "ex":Ljava/lang/ClassNotFoundException;
    move-object v3, v0

    const/4 v4, 0x0

    :try_start_1
    invoke-static {}, Lgnu/bytecode/ObjectType;->getThreadContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 106
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 108
    .local v2, "ex2":Ljava/lang/ClassNotFoundException;
    move-object v3, v0

    const/4 v4, 0x0

    invoke-static {}, Lgnu/bytecode/ObjectType;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 148
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v0, v1

    .line 158
    :goto_0
    return-object v0

    .line 153
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 158
    .local v0, "ex":Ljava/lang/SecurityException;
    const-class v1, Lgnu/bytecode/ObjectType;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static getThreadContextClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 127
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v0, v1

    .line 134
    :goto_0
    return-object v0

    .line 129
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 134
    .local v0, "ex":Ljava/lang/SecurityException;
    const-class v1, Lgnu/bytecode/ObjectType;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ObjectType;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v4, v1

    if-eqz v4, :cond_1

    .line 257
    move-object v4, v0

    sget-object v5, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v4, v5, :cond_0

    .line 258
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 266
    .end local v0    # "this":Lgnu/bytecode/ObjectType;
    :goto_0
    return-object v0

    .line 259
    .restart local v0    # "this":Lgnu/bytecode/ObjectType;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/ObjectType;->getReflectClass()Ljava/lang/Class;

    move-result-object v4

    move-object v2, v4

    .line 260
    .local v2, "clas":Ljava/lang/Class;
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v3, v4

    .line 261
    .local v3, "objClass":Ljava/lang/Class;
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 262
    new-instance v4, Ljava/lang/ClassCastException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "don\'t know how to coerce "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 266
    .end local v2    # "clas":Ljava/lang/Class;
    .end local v3    # "objClass":Ljava/lang/Class;
    :cond_1
    move-object v4, v1

    move-object v0, v4

    goto :goto_0
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 4

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ObjectType;
    move-object v1, p1

    .local v1, "other":Lgnu/bytecode/Type;
    move-object v2, v1

    sget-object v3, Lgnu/bytecode/ObjectType;->nullType:Lgnu/bytecode/ObjectType;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/bytecode/ObjectType;
    return v0

    .restart local v0    # "this":Lgnu/bytecode/ObjectType;
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 4

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ObjectType;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v2, v0

    sget-object v3, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v2, v3, :cond_1

    .line 280
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 281
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitIfNull()V

    .line 282
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 283
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    .line 284
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 285
    move-object v2, v1

    sget-object v3, Lgnu/bytecode/Type;->toString_method:Lgnu/bytecode/Method;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 286
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    move-object v2, v0

    sget-object v3, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-eq v2, v3, :cond_0

    .line 289
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    goto :goto_0
.end method

.method public getField(Ljava/lang/String;I)Lgnu/bytecode/Field;
    .locals 4

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ObjectType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "mask":I
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lgnu/bytecode/ObjectType;
    return-object v0
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ObjectType;
    move-object v1, v0

    sget-object v2, Lgnu/bytecode/ObjectType;->nullType:Lgnu/bytecode/ObjectType;

    if-ne v1, v2, :cond_0

    sget-object v1, Lgnu/bytecode/ObjectType;->objectType:Lgnu/bytecode/ClassType;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/ObjectType;
    return-object v0

    .restart local v0    # "this":Lgnu/bytecode/ObjectType;
    :cond_0
    move-object v1, v0

    sget-object v2, Lgnu/bytecode/ObjectType;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v1, v2, :cond_1

    sget-object v1, Lgnu/bytecode/ObjectType;->javalangStringType:Lgnu/bytecode/ClassType;

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ObjectType;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/ObjectType;
    return-object v0
.end method

.method public getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;
    .locals 6

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ObjectType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arg_types":[Lgnu/bytecode/Type;
    sget-object v3, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ClassType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/bytecode/ObjectType;
    return-object v0
.end method

.method public getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/bytecode/Filter;",
            "I",
            "Ljava/util/List",
            "<",
            "Lgnu/bytecode/Method;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ObjectType;
    move-object v1, p1

    .local v1, "filter":Lgnu/bytecode/Filter;
    move v2, p2

    .local v2, "searchSupers":I
    move-object v3, p3

    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lgnu/bytecode/Method;>;"
    sget-object v4, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Lgnu/bytecode/ObjectType;
    return v0
.end method

.method public final getMethods(Lgnu/bytecode/Filter;ILjava/util/Vector;Ljava/lang/String;)I
    .locals 10

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ObjectType;
    move-object v1, p1

    .local v1, "filter":Lgnu/bytecode/Filter;
    move v2, p2

    .local v2, "searchSupers":I
    move-object v3, p3

    .local v3, "result":Ljava/util/Vector;
    move-object v4, p4

    .local v4, "context":Ljava/lang/String;
    sget-object v5, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/Vector;Ljava/lang/String;)I

    move-result v5

    move v0, v5

    .end local v0    # "this":Lgnu/bytecode/ObjectType;
    return v0
.end method

.method public getReflectClass()Ljava/lang/Class;
    .locals 8

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ObjectType;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lgnu/bytecode/ObjectType;->reflectClass:Ljava/lang/Class;

    if-nez v3, :cond_0

    .line 172
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/ObjectType;->getInternalName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    const/16 v6, 0x2e

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgnu/bytecode/ObjectType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, v3, Lgnu/bytecode/ObjectType;->reflectClass:Ljava/lang/Class;

    .line 173
    :cond_0
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/bytecode/ObjectType;->flags:I

    const/16 v5, 0x10

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Lgnu/bytecode/ObjectType;->flags:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .line 187
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ObjectType;->reflectClass:Ljava/lang/Class;

    move-object v0, v3

    .end local v0    # "this":Lgnu/bytecode/ObjectType;
    return-object v0

    .line 175
    .restart local v0    # "this":Lgnu/bytecode/ObjectType;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 177
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/ObjectType;->flags:I

    const/16 v4, 0x10

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    .line 179
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no such class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 182
    .local v2, "rex":Ljava/lang/RuntimeException;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 184
    move-object v3, v2

    throw v3
.end method

.method public final isExisting()Z
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ObjectType;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/ObjectType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v2

    move-object v1, v2

    .line 40
    .local v1, "t":Lgnu/bytecode/Type;
    move-object v2, v1

    instance-of v2, v2, Lgnu/bytecode/ArrayType;

    if-eqz v2, :cond_0

    .line 41
    move-object v2, v1

    check-cast v2, Lgnu/bytecode/ArrayType;

    invoke-virtual {v2}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v2

    move-object v1, v2

    .line 42
    :cond_0
    move-object v2, v1

    move-object v3, v0

    if-ne v2, v3, :cond_2

    .line 43
    move-object v2, v0

    iget v2, v2, Lgnu/bytecode/ObjectType;->flags:I

    const/16 v3, 0x10

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 46
    .end local v0    # "this":Lgnu/bytecode/ObjectType;
    :goto_1
    return v0

    .line 43
    .restart local v0    # "this":Lgnu/bytecode/ObjectType;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 46
    :cond_2
    move-object v2, v1

    instance-of v2, v2, Lgnu/bytecode/ObjectType;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lgnu/bytecode/ObjectType;

    invoke-virtual {v2}, Lgnu/bytecode/ObjectType;->isExisting()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    :goto_2
    move v0, v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ObjectType;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    sget-object v3, Lgnu/bytecode/ObjectType;->nullType:Lgnu/bytecode/ObjectType;

    if-ne v2, v3, :cond_1

    .line 204
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 205
    .end local v0    # "this":Lgnu/bytecode/ObjectType;
    :goto_1
    return v0

    .line 204
    .restart local v0    # "this":Lgnu/bytecode/ObjectType;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 205
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    goto :goto_1
.end method

.method public promote()Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ObjectType;
    move-object v1, v0

    sget-object v2, Lgnu/bytecode/ObjectType;->nullType:Lgnu/bytecode/ObjectType;

    if-ne v1, v2, :cond_0

    sget-object v1, Lgnu/bytecode/ObjectType;->objectType:Lgnu/bytecode/ClassType;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/ObjectType;
    return-object v0

    .restart local v0    # "this":Lgnu/bytecode/ObjectType;
    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public final setExisting(Z)V
    .locals 6

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ObjectType;
    move v1, p1

    .local v1, "existing":Z
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/bytecode/ObjectType;->flags:I

    const/16 v4, 0x10

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lgnu/bytecode/ObjectType;->flags:I

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/bytecode/ObjectType;->flags:I

    const/16 v4, -0x11

    and-int/lit8 v3, v3, -0x11

    iput v3, v2, Lgnu/bytecode/ObjectType;->flags:I

    goto :goto_0
.end method
