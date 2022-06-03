.class public Lgnu/expr/ReferenceExp;
.super Lgnu/expr/AccessExp;
.source "ReferenceExp.java"


# static fields
.field public static final DONT_DEREFERENCE:I = 0x2

.field public static final PREFER_BINDING2:I = 0x8

.field public static final PROCEDURE_NAME:I = 0x4

.field public static final TYPE_NAME:I = 0x10

.field static counter:I


# instance fields
.field id:I


# direct methods
.method public constructor <init>(Lgnu/expr/Declaration;)V
    .locals 5

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ReferenceExp;
    move-object v1, p1

    .local v1, "binding":Lgnu/expr/Declaration;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ReferenceExp;
    move-object v1, p1

    .local v1, "symbol":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/expr/AccessExp;-><init>()V

    .line 17
    move-object v2, v0

    sget v3, Lgnu/expr/ReferenceExp;->counter:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v5, v3

    move v3, v5

    move v4, v5

    sput v4, Lgnu/expr/ReferenceExp;->counter:I

    iput v3, v2, Lgnu/expr/ReferenceExp;->id:I

    .line 55
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V
    .locals 7

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ReferenceExp;
    move-object v1, p1

    .local v1, "symbol":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "binding":Lgnu/expr/Declaration;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/expr/AccessExp;-><init>()V

    .line 17
    move-object v3, v0

    sget v4, Lgnu/expr/ReferenceExp;->counter:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v6, v4

    move v4, v6

    move v5, v6

    sput v5, Lgnu/expr/ReferenceExp;->counter:I

    iput v4, v3, Lgnu/expr/ReferenceExp;->id:I

    .line 60
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    .line 61
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 62
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ReferenceExp;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v7, :cond_3

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v7}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v7

    if-nez v7, :cond_3

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v7, v7, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v7, v7, Lgnu/expr/ReferenceExp;

    if-eqz v7, :cond_3

    .line 89
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v7, v7, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    check-cast v7, Lgnu/expr/ReferenceExp;

    move-object v3, v7

    .line 90
    .local v3, "rexp":Lgnu/expr/ReferenceExp;
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v3

    iget-object v7, v7, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v7, :cond_1

    .line 92
    move-object v7, v3

    iget-object v7, v7, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v7}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v7

    move-object v4, v7

    .line 93
    .local v4, "v":Lgnu/expr/Expression;
    move-object v7, v4

    instance-of v7, v7, Lgnu/expr/QuoteExp;

    if-nez v7, :cond_0

    move-object v7, v4

    instance-of v7, v7, Lgnu/expr/ReferenceExp;

    if-nez v7, :cond_0

    move-object v7, v4

    instance-of v7, v7, Lgnu/expr/LambdaExp;

    if-eqz v7, :cond_1

    .line 96
    :cond_0
    move-object v7, v4

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V

    .line 97
    .line 157
    .end local v3    # "rexp":Lgnu/expr/ReferenceExp;
    .end local v4    # "v":Lgnu/expr/Expression;
    :goto_0
    return-void

    .line 100
    .restart local v3    # "rexp":Lgnu/expr/ReferenceExp;
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v7, v7, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    .line 154
    .end local v3    # "rexp":Lgnu/expr/ReferenceExp;
    .local v2, "value":Ljava/lang/Object;
    :goto_1
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v7

    if-nez v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v7}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 155
    move-object v7, v2

    check-cast v7, Lgnu/mapping/Location;

    invoke-virtual {v7}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    .line 156
    :cond_2
    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v7, v8}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 157
    goto :goto_0

    .line 102
    .end local v2    # "value":Ljava/lang/Object;
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v7, :cond_6

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v7, v7, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v7, :cond_6

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v7, v7, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v7}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v7

    invoke-virtual {v7}, Lgnu/bytecode/ClassType;->isExisting()Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v7}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 108
    :cond_4
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v7, v7, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v7}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    :goto_2
    move-object v3, v7

    .line 110
    .local v3, "instance":Ljava/lang/Object;
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v7, v7, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v7}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    .line 118
    .restart local v2    # "value":Ljava/lang/Object;
    goto :goto_1

    .line 108
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "instance":Ljava/lang/Object;
    :cond_5
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v7

    invoke-virtual {v7}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_2

    .line 112
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 114
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "exception evaluating "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v8, v8, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 117
    .local v4, "msg":Ljava/lang/String;
    new-instance v7, Lgnu/mapping/UnboundLocationException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v4

    move-object v10, v0

    invoke-direct {v8, v9, v10}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;Lgnu/text/SourceLocator;)V

    throw v7

    .line 122
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v4    # "msg":Ljava/lang/String;
    :cond_6
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v7, :cond_9

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v7, v7, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v7, v7, Lgnu/expr/QuoteExp;

    if-nez v7, :cond_7

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v7, v7, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v7, v7, Lgnu/expr/LambdaExp;

    if-eqz v7, :cond_9

    :cond_7
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v7, v7, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    sget-object v8, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v7, v8, :cond_9

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v7

    if-eqz v7, :cond_8

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v7}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 128
    :cond_8
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v7, v7, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    .restart local v2    # "value":Ljava/lang/Object;
    goto/16 :goto_1

    .line 130
    .end local v2    # "value":Ljava/lang/Object;
    :cond_9
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v7, :cond_a

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v7, v7, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v7, v7, Lgnu/expr/ModuleExp;

    if-eqz v7, :cond_f

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v7}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v7

    if-nez v7, :cond_f

    .line 134
    :cond_a
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v7

    move-object v3, v7

    .line 135
    .local v3, "env":Lgnu/mapping/Environment;
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    instance-of v7, v7, Lgnu/mapping/Symbol;

    if-eqz v7, :cond_c

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    check-cast v7, Lgnu/mapping/Symbol;

    :goto_3
    move-object v4, v7

    .line 137
    .local v4, "sym":Lgnu/mapping/Symbol;
    move-object v7, v0

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lgnu/expr/ReferenceExp;->getFlag(I)Z

    move-result v7

    if-eqz v7, :cond_d

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/ReferenceExp;->isProcedureName()Z

    move-result v7

    if-eqz v7, :cond_d

    sget-object v7, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    :goto_4
    move-object v5, v7

    .line 140
    .local v5, "property":Ljava/lang/Object;
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 141
    move-object v7, v3

    move-object v8, v4

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v7

    move-object v2, v7

    .line 149
    :cond_b
    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v7, v8}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 150
    goto/16 :goto_0

    .line 135
    .end local v4    # "sym":Lgnu/mapping/Symbol;
    .end local v5    # "property":Ljava/lang/Object;
    :cond_c
    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v7

    goto :goto_3

    .line 137
    .restart local v4    # "sym":Lgnu/mapping/Symbol;
    :cond_d
    const/4 v7, 0x0

    goto :goto_4

    .line 144
    .restart local v5    # "property":Ljava/lang/Object;
    :cond_e
    sget-object v7, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    move-object v6, v7

    .line 145
    .local v6, "unb":Ljava/lang/String;
    move-object v7, v3

    move-object v8, v4

    move-object v9, v5

    move-object v10, v6

    invoke-virtual {v7, v8, v9, v10}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    .line 146
    .restart local v2    # "value":Ljava/lang/Object;
    move-object v7, v2

    move-object v8, v6

    if-ne v7, v8, :cond_b

    .line 147
    new-instance v7, Lgnu/mapping/UnboundLocationException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v4

    move-object v10, v0

    invoke-direct {v8, v9, v10}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;Lgnu/text/SourceLocator;)V

    throw v7

    .line 153
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "env":Lgnu/mapping/Environment;
    .end local v4    # "sym":Lgnu/mapping/Symbol;
    .end local v5    # "property":Ljava/lang/Object;
    .end local v6    # "unb":Ljava/lang/String;
    :cond_f
    move-object v7, v1

    iget-object v7, v7, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v8, v8, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    invoke-static {v8}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v8

    aget-object v7, v7, v8

    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget v8, v8, Lgnu/expr/Declaration;->evalIndex:I

    aget-object v7, v7, v8

    move-object v2, v7

    .restart local v2    # "value":Ljava/lang/Object;
    goto/16 :goto_1
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 8

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ReferenceExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "target":Lgnu/expr/Target;
    move-object v3, v2

    instance-of v3, v3, Lgnu/expr/ConsumerTarget;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lgnu/expr/ConsumerTarget;

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ConsumerTarget;->compileWrite(Lgnu/expr/Expression;Lgnu/expr/Compilation;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 163
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lgnu/expr/ReferenceExp;->flags:I

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 164
    :cond_1
    return-void
.end method

.method protected deepCopy(Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;
    .locals 10

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ReferenceExp;
    move-object v1, p1

    .local v1, "mapper":Lgnu/kawa/util/IdentityHashTable;
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v5, v6, v7}, Lgnu/kawa/util/IdentityHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/expr/Declaration;

    move-object v2, v5

    .line 169
    .local v2, "d":Lgnu/expr/Declaration;
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lgnu/kawa/util/IdentityHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 170
    .local v3, "s":Ljava/lang/Object;
    new-instance v5, Lgnu/expr/ReferenceExp;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    move-object v4, v5

    .line 171
    .local v4, "copy":Lgnu/expr/ReferenceExp;
    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/ReferenceExp;->getFlags()I

    move-result v6

    iput v6, v5, Lgnu/expr/ReferenceExp;->flags:I

    .line 172
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lgnu/expr/ReferenceExp;
    return-object v0
.end method

.method public final getDontDereference()Z
    .locals 3

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ReferenceExp;
    move-object v1, v0

    iget v1, v1, Lgnu/expr/ReferenceExp;->flags:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/ReferenceExp;
    return v0

    .restart local v0    # "this":Lgnu/expr/ReferenceExp;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 7

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ReferenceExp;
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    move-object v1, v5

    .line 226
    .local v1, "decl":Lgnu/expr/Declaration;
    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/Declaration;->isFluid()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 227
    :cond_0
    sget-object v5, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object v0, v5

    .line 247
    .end local v0    # "this":Lgnu/expr/ReferenceExp;
    :goto_0
    return-object v0

    .line 228
    .restart local v0    # "this":Lgnu/expr/ReferenceExp;
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 229
    sget-object v5, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    move-object v0, v5

    goto :goto_0

    .line 230
    :cond_2
    move-object v5, v1

    invoke-static {v5}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v5

    move-object v1, v5

    .line 231
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    move-object v2, v5

    .line 232
    .local v2, "type":Lgnu/bytecode/Type;
    move-object v5, v2

    if-eqz v5, :cond_3

    move-object v5, v2

    sget-object v6, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-ne v5, v6, :cond_4

    .line 234
    :cond_3
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v5

    move-object v3, v5

    .line 235
    .local v3, "value":Lgnu/expr/Expression;
    move-object v5, v3

    if-eqz v5, :cond_4

    move-object v5, v3

    sget-object v6, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v5, v6, :cond_4

    .line 239
    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    move-object v4, v5

    .line 240
    .local v4, "save":Lgnu/expr/Expression;
    move-object v5, v1

    const/4 v6, 0x0

    iput-object v6, v5, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 241
    move-object v5, v3

    invoke-virtual {v5}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    move-object v2, v5

    .line 242
    move-object v5, v1

    move-object v6, v4

    iput-object v6, v5, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 245
    .end local v3    # "value":Lgnu/expr/Expression;
    .end local v4    # "save":Lgnu/expr/Expression;
    :cond_4
    move-object v5, v2

    sget-object v6, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v5, v6, :cond_5

    .line 246
    sget-object v5, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    move-object v2, v5

    .line 247
    :cond_5
    move-object v5, v2

    move-object v0, v5

    goto :goto_0
.end method

.method public final isProcedureName()Z
    .locals 3

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ReferenceExp;
    move-object v1, v0

    iget v1, v1, Lgnu/expr/ReferenceExp;->flags:I

    const/4 v2, 0x4

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/ReferenceExp;
    return v0

    .restart local v0    # "this":Lgnu/expr/ReferenceExp;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSingleValue()Z
    .locals 4

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ReferenceExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    const-wide/32 v2, 0x40000

    invoke-virtual {v1, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    const/4 v1, 0x1

    move v0, v1

    .line 254
    .end local v0    # "this":Lgnu/expr/ReferenceExp;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/expr/ReferenceExp;
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Lgnu/expr/AccessExp;->isSingleValue()Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public final isUnknown()Z
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ReferenceExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-static {v1}, Lgnu/expr/Declaration;->isUnknown(Lgnu/expr/Declaration;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/expr/ReferenceExp;
    return v0
.end method

.method protected mustCompile()Z
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ReferenceExp;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/expr/ReferenceExp;
    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 4

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ReferenceExp;
    move-object v1, p1

    .local v1, "ps":Lgnu/mapping/OutPort;
    move-object v2, v1

    const-string/jumbo v3, "(Ref/"

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 208
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/expr/ReferenceExp;->id:I

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(I)V

    .line 209
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v3}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 212
    :cond_0
    move-object v2, v1

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(C)V

    .line 213
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 215
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v2, :cond_2

    .line 217
    move-object v2, v1

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(C)V

    .line 218
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 220
    :cond_2
    move-object v2, v1

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public final setDontDereference(Z)V
    .locals 5

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ReferenceExp;
    move v1, p1

    .local v1, "setting":Z
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lgnu/expr/ReferenceExp;->setFlag(ZI)V

    return-void
.end method

.method public final setProcedureName(Z)V
    .locals 5

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ReferenceExp;
    move v1, p1

    .local v1, "setting":Z
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lgnu/expr/ReferenceExp;->setFlag(ZI)V

    .line 51
    return-void
.end method

.method public side_effects()Z
    .locals 2

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ReferenceExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v1}, Lgnu/expr/Declaration;->isLexical()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/ReferenceExp;
    return v0

    .restart local v0    # "this":Lgnu/expr/ReferenceExp;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ReferenceExp;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RefExp/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lgnu/expr/ReferenceExp;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ReferenceExp;
    return-object v0
.end method

.method public validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 13

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ReferenceExp;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "visitor":Lgnu/expr/InlineCalls;
    move-object/from16 v3, p3

    .local v3, "required":Lgnu/bytecode/Type;
    move-object/from16 v4, p4

    .local v4, "decl":Lgnu/expr/Declaration;
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    move-object v4, v7

    .line 184
    move-object v7, v4

    if-eqz v7, :cond_1

    move-object v7, v4

    const-wide/32 v8, 0x10000

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-nez v7, :cond_1

    .line 186
    move-object v7, v4

    invoke-static {v7}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v7

    move-object v4, v7

    .line 187
    move-object v7, v4

    invoke-virtual {v7}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v7

    if-nez v7, :cond_0

    .line 189
    move-object v7, v4

    invoke-virtual {v7}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v7

    move-object v5, v7

    .line 190
    .local v5, "dval":Lgnu/expr/Expression;
    move-object v7, v5

    if-eqz v7, :cond_0

    .line 191
    move-object v7, v5

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Lgnu/expr/Expression;->validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;

    move-result-object v7

    move-object v0, v7

    .line 202
    .end local v0    # "this":Lgnu/expr/ReferenceExp;
    .end local v5    # "dval":Lgnu/expr/Expression;
    :goto_0
    return-object v0

    .line 192
    .line 201
    .restart local v0    # "this":Lgnu/expr/ReferenceExp;
    :cond_0
    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v7, v8}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 202
    move-object v7, v1

    move-object v0, v7

    goto :goto_0

    .line 194
    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lgnu/mapping/Symbol;

    if-eqz v7, :cond_0

    .line 196
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/Symbol;

    move-object v5, v7

    .line 197
    .local v5, "symbol":Lgnu/mapping/Symbol;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v7

    move-object v8, v5

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Environment;->getFunction(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 198
    .local v6, "fval":Ljava/lang/Object;
    move-object v7, v6

    instance-of v7, v7, Lgnu/mapping/Procedure;

    if-eqz v7, :cond_0

    .line 199
    new-instance v7, Lgnu/expr/QuoteExp;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v6

    invoke-direct {v8, v9}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lgnu/expr/QuoteExp;->validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;

    move-result-object v7

    move-object v0, v7

    goto :goto_0
.end method

.method public final valueIfConstant()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ReferenceExp;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v2, :cond_0

    .line 75
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v2}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v2

    move-object v1, v2

    .line 76
    .local v1, "dvalue":Lgnu/expr/Expression;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 77
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 79
    .end local v0    # "this":Lgnu/expr/ReferenceExp;
    :goto_0
    return-object v0

    .end local v1    # "dvalue":Lgnu/expr/Expression;
    .restart local v0    # "this":Lgnu/expr/ReferenceExp;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)TR;"
        }
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ReferenceExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ReferenceExp;
    return-object v0
.end method
