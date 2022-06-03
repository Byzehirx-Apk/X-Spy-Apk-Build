.class public Lgnu/kawa/xml/MakeAttribute;
.super Lgnu/kawa/xml/NodeConstructor;
.source "MakeAttribute.java"


# static fields
.field static final endAttributeMethod:Lgnu/bytecode/Method;

.field public static final makeAttribute:Lgnu/kawa/xml/MakeAttribute;

.field public static final makeAttributeExp:Lgnu/expr/QuoteExp;

.field static final startAttributeMethod:Lgnu/bytecode/Method;

.field static final typeMakeAttribute:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 12
    new-instance v0, Lgnu/kawa/xml/MakeAttribute;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lgnu/kawa/xml/MakeAttribute;-><init>()V

    sput-object v0, Lgnu/kawa/xml/MakeAttribute;->makeAttribute:Lgnu/kawa/xml/MakeAttribute;

    .line 13
    new-instance v0, Lgnu/expr/QuoteExp;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Lgnu/kawa/xml/MakeAttribute;->makeAttribute:Lgnu/kawa/xml/MakeAttribute;

    invoke-direct {v1, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lgnu/kawa/xml/MakeAttribute;->makeAttributeExp:Lgnu/expr/QuoteExp;

    .line 66
    const-string/jumbo v0, "gnu.kawa.xml.MakeAttribute"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/MakeAttribute;->typeMakeAttribute:Lgnu/bytecode/ClassType;

    .line 68
    sget-object v0, Lgnu/kawa/xml/MakeAttribute;->typeMakeAttribute:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "startAttribute"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/MakeAttribute;->startAttributeMethod:Lgnu/bytecode/Method;

    .line 70
    sget-object v0, Lgnu/expr/Compilation;->typeConsumer:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "endAttribute"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/MakeAttribute;->endAttributeMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeAttribute;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/xml/NodeConstructor;-><init>()V

    return-void
.end method

.method public static startAttribute(Lgnu/lists/Consumer;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "out":Lgnu/lists/Consumer;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    .line 20
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 10

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeAttribute;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v8, v1

    iget-object v8, v8, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v8

    .line 25
    .local v2, "saved":Lgnu/lists/Consumer;
    move-object v8, v1

    invoke-static {v8}, Lgnu/kawa/xml/MakeAttribute;->pushNodeContext(Lgnu/mapping/CallContext;)Lgnu/xml/XMLFilter;

    move-result-object v8

    move-object v3, v8

    .line 28
    .local v3, "out":Lgnu/lists/Consumer;
    move-object v8, v1

    :try_start_0
    invoke-virtual {v8}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v8

    move-object v4, v8

    .line 29
    .local v4, "type":Ljava/lang/Object;
    move-object v8, v3

    move-object v9, v4

    invoke-static {v8, v9}, Lgnu/kawa/xml/MakeAttribute;->startAttribute(Lgnu/lists/Consumer;Ljava/lang/Object;)V

    .line 30
    sget-object v8, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    move-object v5, v8

    .line 33
    .local v5, "endMarker":Lgnu/expr/Special;
    :goto_0
    move-object v8, v1

    move-object v9, v5

    invoke-virtual {v8, v9}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    .line 34
    .local v6, "arg":Ljava/lang/Object;
    move-object v8, v6

    move-object v9, v5

    if-ne v8, v9, :cond_0

    .line 35
    .line 41
    move-object v8, v3

    invoke-interface {v8}, Lgnu/lists/Consumer;->endAttribute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    move-object v8, v2

    move-object v9, v1

    invoke-static {v8, v9}, Lgnu/kawa/xml/MakeAttribute;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    .line 46
    .line 47
    return-void

    .line 36
    :cond_0
    move-object v8, v6

    :try_start_1
    instance-of v8, v8, Lgnu/lists/Consumable;

    if-eqz v8, :cond_1

    .line 37
    move-object v8, v6

    check-cast v8, Lgnu/lists/Consumable;

    move-object v9, v3

    invoke-interface {v8, v9}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    .line 40
    :goto_1
    goto :goto_0

    .line 39
    :cond_1
    move-object v8, v1

    move-object v9, v6

    invoke-virtual {v8, v9}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 45
    .end local v4    # "type":Ljava/lang/Object;
    .end local v5    # "endMarker":Lgnu/expr/Special;
    .end local v6    # "arg":Ljava/lang/Object;
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v2

    move-object v9, v1

    invoke-static {v8, v9}, Lgnu/kawa/xml/MakeAttribute;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    move-object v8, v7

    throw v8
.end method

.method public compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V
    .locals 12

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeAttribute;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/ConsumerTarget;
    move-object v9, v3

    invoke-virtual {v9}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object v9

    move-object v4, v9

    .line 53
    .local v4, "consumer":Lgnu/bytecode/Variable;
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v9

    move-object v5, v9

    .line 54
    .local v5, "args":[Lgnu/expr/Expression;
    move-object v9, v5

    array-length v9, v9

    move v6, v9

    .line 55
    .local v6, "nargs":I
    move-object v9, v2

    invoke-virtual {v9}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v9

    move-object v7, v9

    .line 56
    .local v7, "code":Lgnu/bytecode/CodeAttr;
    move-object v9, v7

    move-object v10, v4

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 57
    move-object v9, v7

    invoke-virtual {v9}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 58
    move-object v9, v5

    const/4 v10, 0x0

    aget-object v9, v9, v10

    move-object v10, v2

    sget-object v11, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 60
    move-object v9, v7

    sget-object v10, Lgnu/kawa/xml/MakeAttribute;->startAttributeMethod:Lgnu/bytecode/Method;

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 61
    const/4 v9, 0x1

    move v8, v9

    .local v8, "i":I
    :goto_0
    move v9, v8

    move v10, v6

    if-ge v9, v10, :cond_0

    .line 62
    move-object v9, v5

    move v10, v8

    aget-object v9, v9, v10

    move-object v10, v2

    move-object v11, v3

    invoke-static {v9, v10, v11}, Lgnu/kawa/xml/MakeAttribute;->compileChild(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V

    .line 61
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 63
    :cond_0
    move-object v9, v7

    sget-object v10, Lgnu/kawa/xml/MakeAttribute;->endAttributeMethod:Lgnu/bytecode/Method;

    invoke-virtual {v9, v10}, Lgnu/bytecode/CodeAttr;->emitInvokeInterface(Lgnu/bytecode/Method;)V

    .line 64
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeAttribute;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    sget-object v2, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/MakeAttribute;
    return-object v0
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeAttribute;
    const/16 v1, -0xfff

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/MakeAttribute;
    return v0
.end method
