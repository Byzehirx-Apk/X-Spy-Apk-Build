.class public Lgnu/kawa/xml/MakeProcInst;
.super Lgnu/kawa/xml/NodeConstructor;
.source "MakeProcInst.java"


# static fields
.field public static final makeProcInst:Lgnu/kawa/xml/MakeProcInst;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Lgnu/kawa/xml/MakeProcInst;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/xml/MakeProcInst;-><init>()V

    sput-object v0, Lgnu/kawa/xml/MakeProcInst;->makeProcInst:Lgnu/kawa/xml/MakeProcInst;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeProcInst;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/xml/NodeConstructor;-><init>()V

    return-void
.end method

.method public static procInst$C(Ljava/lang/Object;Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 13

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "target":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "content":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move-object v7, v0

    invoke-static {v7}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    .line 21
    move-object v7, v0

    instance-of v7, v7, Ljava/lang/String;

    if-nez v7, :cond_0

    move-object v7, v0

    instance-of v7, v7, Lgnu/kawa/xml/UntypedAtomic;

    if-nez v7, :cond_0

    .line 22
    new-instance v7, Ljava/lang/ClassCastException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "invalid type of processing-instruction target [XPTY0004]"

    invoke-direct {v8, v9}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 24
    :cond_0
    move-object v7, v2

    instance-of v7, v7, Lgnu/lists/XConsumer;

    if-nez v7, :cond_1

    .line 25
    .line 47
    :goto_0
    return-void

    .line 26
    :cond_1
    new-instance v7, Ljava/lang/StringBuffer;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v7

    .line 27
    .local v3, "sbuf":Ljava/lang/StringBuffer;
    move-object v7, v1

    instance-of v7, v7, Lgnu/mapping/Values;

    if-eqz v7, :cond_4

    .line 29
    move-object v7, v1

    check-cast v7, Lgnu/mapping/Values;

    invoke-virtual {v7}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    .line 30
    .local v4, "vals":[Ljava/lang/Object;
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_1
    move v7, v5

    move-object v8, v4

    array-length v8, v8

    if-ge v7, v8, :cond_3

    .line 32
    move v7, v5

    if-lez v7, :cond_2

    .line 33
    move-object v7, v3

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 34
    :cond_2
    move-object v7, v4

    move v8, v5

    aget-object v7, v7, v8

    move-object v8, v3

    invoke-static {v7, v8}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    .line 30
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 36
    .line 39
    .end local v4    # "vals":[Ljava/lang/Object;
    .end local v5    # "i":I
    :cond_3
    :goto_2
    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    move v4, v7

    .line 40
    .local v4, "length":I
    const/4 v7, 0x0

    move v5, v7

    .line 41
    .local v5, "start":I
    :goto_3
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_5

    move-object v7, v3

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 42
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 38
    .end local v4    # "length":I
    .end local v5    # "start":I
    :cond_4
    move-object v7, v1

    move-object v8, v3

    invoke-static {v7, v8}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    goto :goto_2

    .line 43
    .restart local v4    # "length":I
    .restart local v5    # "start":I
    :cond_5
    move v7, v4

    move v8, v5

    sub-int/2addr v7, v8

    new-array v7, v7, [C

    move-object v6, v7

    .line 44
    .local v6, "chars":[C
    move-object v7, v3

    move v8, v5

    move v9, v4

    move-object v10, v6

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 45
    move-object v7, v2

    check-cast v7, Lgnu/lists/XConsumer;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v6

    const/4 v10, 0x0

    move-object v11, v6

    array-length v11, v11

    invoke-interface {v7, v8, v9, v10, v11}, Lgnu/lists/XConsumer;->writeProcessingInstruction(Ljava/lang/String;[CII)V

    .line 47
    goto :goto_0
.end method

.method public static procInst$X(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 9

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "target":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "content":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v6, v2

    iget-object v6, v6, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v3, v6

    .line 53
    .local v3, "saved":Lgnu/lists/Consumer;
    move-object v6, v2

    invoke-static {v6}, Lgnu/kawa/xml/NodeConstructor;->pushNodeContext(Lgnu/mapping/CallContext;)Lgnu/xml/XMLFilter;

    move-result-object v6

    move-object v4, v6

    .line 56
    .local v4, "out":Lgnu/lists/Consumer;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v4

    :try_start_0
    invoke-static {v6, v7, v8}, Lgnu/kawa/xml/MakeProcInst;->procInst$C(Ljava/lang/Object;Ljava/lang/Object;Lgnu/lists/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    move-object v6, v3

    move-object v7, v2

    invoke-static {v6, v7}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    .line 61
    .line 62
    return-void

    .line 60
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    move-object v7, v2

    invoke-static {v6, v7}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    move-object v6, v5

    throw v6
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 5

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeProcInst;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lgnu/kawa/xml/MakeProcInst;->procInst$X(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 67
    return-void
.end method

.method public compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V
    .locals 10

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeProcInst;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/ConsumerTarget;
    move-object v6, v2

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    move-object v4, v6

    .line 73
    .local v4, "code":Lgnu/bytecode/CodeAttr;
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v6

    move-object v5, v6

    .line 74
    .local v5, "args":[Lgnu/expr/Expression;
    move-object v6, v5

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object v7, v2

    sget-object v8, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 75
    move-object v6, v5

    const/4 v7, 0x1

    aget-object v6, v6, v7

    move-object v7, v2

    sget-object v8, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 76
    move-object v6, v4

    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 77
    move-object v6, v4

    const-string/jumbo v7, "gnu.kawa.xml.MakeProcInst"

    invoke-static {v7}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v7

    const-string/jumbo v8, "procInst$C"

    const/4 v9, 0x3

    invoke-virtual {v7, v8, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 79
    return-void
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeProcInst;
    const/16 v1, 0x2002

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/MakeProcInst;
    return v0
.end method
