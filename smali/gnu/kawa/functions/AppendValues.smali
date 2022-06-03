.class public Lgnu/kawa/functions/AppendValues;
.super Lgnu/mapping/MethodProc;
.source "AppendValues.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final appendValues:Lgnu/kawa/functions/AppendValues;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    new-instance v0, Lgnu/kawa/functions/AppendValues;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/functions/AppendValues;-><init>()V

    sput-object v0, Lgnu/kawa/functions/AppendValues;->appendValues:Lgnu/kawa/functions/AppendValues;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/AppendValues;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/MethodProc;-><init>()V

    .line 17
    move-object v1, v0

    sget-object v2, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v3, "gnu.kawa.functions.CompileMisc:validateApplyAppendValues"

    invoke-virtual {v1, v2, v3}, Lgnu/kawa/functions/AppendValues;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 6

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/AppendValues;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    sget-object v4, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    move-object v2, v4

    .line 26
    .local v2, "endMarker":Lgnu/expr/Special;
    :goto_0
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 27
    .local v3, "arg":Ljava/lang/Object;
    move-object v4, v3

    move-object v5, v2

    if-ne v4, v5, :cond_0

    .line 28
    .line 34
    return-void

    .line 29
    :cond_0
    move-object v4, v3

    instance-of v4, v4, Lgnu/lists/Consumable;

    if-eqz v4, :cond_1

    .line 30
    move-object v4, v3

    check-cast v4, Lgnu/lists/Consumable;

    move-object v5, v1

    iget-object v5, v5, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    invoke-interface {v4, v5}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    .line 33
    :goto_1
    goto :goto_0

    .line 32
    :cond_1
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 10

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/AppendValues;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v7

    move-object v4, v7

    .line 39
    .local v4, "args":[Lgnu/expr/Expression;
    move-object v7, v4

    array-length v7, v7

    move v5, v7

    .line 40
    .local v5, "nargs":I
    move-object v7, v3

    instance-of v7, v7, Lgnu/expr/ConsumerTarget;

    if-nez v7, :cond_0

    move-object v7, v3

    instance-of v7, v7, Lgnu/expr/IgnoreTarget;

    if-eqz v7, :cond_2

    .line 42
    :cond_0
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_0
    move v7, v6

    move v8, v5

    if-ge v7, v8, :cond_1

    .line 43
    move-object v7, v4

    move v8, v6

    aget-object v7, v7, v8

    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 42
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 62
    .end local v6    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 47
    :cond_2
    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-static {v7, v8, v9}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_1
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/AppendValues;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    sget-object v2, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/functions/AppendValues;
    return-object v0
.end method
